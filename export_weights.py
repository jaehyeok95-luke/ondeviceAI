#!/usr/bin/env python3
"""
export_weights.py
─────────────────
HangulJamoNetV3의 best_model.pth에서 가중치를 추출하고
Conv+BatchNorm 퓨전 → INT8 양자화 → .hex 파일 생성

사용법:
    python export_weights.py
"""

import os
import sys
import json
import copy
import numpy as np
import torch
import torch.nn as nn
from model import HangulJamoNetV3

# ─── 설정 ─────────────────────────────────────────────
MODEL_PATH  = './checkpoints_v4/best_model.pth'
OUTPUT_DIR  = './rtl_weights'
os.makedirs(OUTPUT_DIR, exist_ok=True)

# ─── 모델 로드 ────────────────────────────────────────
device = torch.device('cpu')
model = HangulJamoNetV3()

# checkpoint 형식 자동 감지 (dict vs state_dict)
checkpoint = torch.load(MODEL_PATH, map_location=device)
if isinstance(checkpoint, dict) and 'model_state_dict' in checkpoint:
    model.load_state_dict(checkpoint['model_state_dict'])
    print(f"✅ 모델 로드 완료 (new format, best_acc={checkpoint.get('best_acc', 'N/A')})")
else:
    # 이전 형식: state_dict만 저장된 경우
    model.load_state_dict(checkpoint)
    print("✅ 모델 로드 완료 (old format)")

model.eval()

# ─── 실제 레이어 이름 확인 (디버그) ─────────────────────
print("\n📋 모델 내부 레이어 구조:")
for name, module in model.named_modules():
    if isinstance(module, (nn.Conv2d, nn.BatchNorm2d, nn.Linear, nn.MaxPool2d)):
        print(f"  {name}: {module.__class__.__name__} | {module}")


# ─── Conv + BatchNorm 퓨전 함수 ───────────────────────
def fuse_conv_bn(conv: nn.Conv2d, bn: nn.BatchNorm2d):
    """
    Conv2d + BatchNorm2d → 퓨전된 Conv2d (weight & bias)
    BN: y = gamma * (x - mean) / sqrt(var + eps) + beta
    퓨전: W_fused = gamma / sqrt(var+eps) * W_conv
          B_fused = gamma * (b_conv - mean) / sqrt(var+eps) + beta
    """
    fused_conv = copy.deepcopy(conv)

    w_conv = conv.weight.data.clone()      # (C_out, C_in, kH, kW)
    b_conv = conv.bias.data.clone() if conv.bias is not None else torch.zeros(conv.out_channels)

    gamma  = bn.weight.data.clone()        # (C_out,)
    beta   = bn.bias.data.clone()          # (C_out,)
    mean   = bn.running_mean.data.clone()  # (C_out,)
    var    = bn.running_var.data.clone()    # (C_out,)
    eps    = bn.eps

    std = torch.sqrt(var + eps)            # (C_out,)
    scale = gamma / std                    # (C_out,)

    # reshape scale for broadcasting: (C_out, 1, 1, 1)
    w_fused = w_conv * scale.view(-1, 1, 1, 1)
    b_fused = scale * (b_conv - mean) + beta

    fused_conv.weight = nn.Parameter(w_fused)
    fused_conv.bias   = nn.Parameter(b_fused)

    return fused_conv


# ─── 모델에서 Conv+BN 쌍 찾기 ─────────────────────────
# model.py 구조에 맞춰 레이어를 자동 탐색
def find_conv_bn_pairs(model):
    """
    model의 named_modules()를 순회하며 Conv2d + BatchNorm2d 쌍을 찾는다.
    일반적인 HangulJamoNetV3 구조:
      - conv_block1 = Sequential(Conv2d, BatchNorm2d, ReLU) 또는
      - conv1 = Conv2d, bn1 = BatchNorm2d 등
    """
    pairs = []
    modules_list = list(model.named_modules())

    for i, (name, module) in enumerate(modules_list):
        if isinstance(module, nn.Conv2d):
            # 다음 모듈이 BatchNorm2d인지 확인
            for j in range(i + 1, min(i + 5, len(modules_list))):
                next_name, next_module = modules_list[j]
                if isinstance(next_module, nn.BatchNorm2d):
                    pairs.append((name, module, next_name, next_module))
                    break
                elif isinstance(next_module, (nn.Conv2d, nn.Linear)):
                    # 다른 Conv나 Linear가 먼저 나오면 BN이 없는 것
                    break

    return pairs


# ─── INT8 양자화 함수 ─────────────────────────────────
def quantize_to_int8(tensor):
    """
    대칭 양자화: scale = max|val| / 127
    반환: (int8_numpy, scale)
    """
    tensor_np = tensor.detach().cpu().numpy().flatten()
    abs_max = np.max(np.abs(tensor_np))
    if abs_max == 0:
        return np.zeros_like(tensor_np, dtype=np.int8), 1.0

    scale = abs_max / 127.0
    quantized = np.clip(np.round(tensor_np / scale), -128, 127).astype(np.int8)
    return quantized, float(scale)


# ─── .hex 파일 저장 함수 ──────────────────────────────
def save_hex(data_int8, filepath):
    """INT8 배열을 2's complement hex (1 byte/line) 로 저장"""
    # numpy int8 → unsigned uint8로 변환 (view 사용, 복사 없음)
    data_uint8 = data_int8.view(np.uint8)
    with open(filepath, 'w') as f:
        for val in data_uint8:
            f.write(f"{val:02x}\n")
    print(f"  💾 {filepath} ({len(data_uint8)} bytes)")



# ─── 퓨전 실행 ────────────────────────────────────────
print("\n🔧 Conv + BatchNorm 퓨전 시작...")
conv_bn_pairs = find_conv_bn_pairs(model)
print(f"  발견된 Conv+BN 쌍: {len(conv_bn_pairs)}개")

fused_convs = {}
for conv_name, conv_mod, bn_name, bn_mod in conv_bn_pairs:
    fused = fuse_conv_bn(conv_mod, bn_mod)
    # 레이어 이름 정리 (예: "features.0" → "conv1", "conv_block1.0" → "conv1")
    # 순서대로 conv1 ~ conv5
    idx = len(fused_convs) + 1
    layer_name = f"conv{idx}"
    fused_convs[layer_name] = fused
    print(f"  ✅ {conv_name} + {bn_name} → {layer_name} "
          f"(shape: {list(fused.weight.shape)})")


# ─── FC 레이어 찾기 ───────────────────────────────────
print("\n🔧 FC 레이어 추출...")
fc_layers = {}
for name, module in model.named_modules():
    if isinstance(module, nn.Linear):
        fc_layers[name] = module
        print(f"  📌 {name}: Linear({module.in_features} → {module.out_features})")


# ─── 양자화 & hex 저장 ────────────────────────────────
print("\n📦 INT8 양자화 & .hex 파일 생성...")
scale_info = {}  # 메타 정보 저장

# --- Conv 레이어 ---
for layer_name, conv in fused_convs.items():
    # Weight
    w_q, w_scale = quantize_to_int8(conv.weight.data)
    save_hex(w_q, os.path.join(OUTPUT_DIR, f"{layer_name}_weight.hex"))

    # Bias
    b_q, b_scale = quantize_to_int8(conv.bias.data)
    save_hex(b_q, os.path.join(OUTPUT_DIR, f"{layer_name}_bias.hex"))

    shape = list(conv.weight.shape)  # (C_out, C_in, kH, kW)
    scale_info[layer_name] = {
        'type': 'conv',
        'weight_shape': shape,
        'weight_scale': w_scale,
        'weight_num_params': int(np.prod(shape)),
        'bias_shape': [shape[0]],
        'bias_scale': b_scale,
        'bias_num_params': shape[0],
    }

# --- FC 레이어 ---
for fc_name, fc_mod in fc_layers.items():
    # 이름 정리: 점(.)을 언더스코어(_)로
    safe_name = fc_name.replace('.', '_')

    # Weight
    w_q, w_scale = quantize_to_int8(fc_mod.weight.data)
    save_hex(w_q, os.path.join(OUTPUT_DIR, f"{safe_name}_weight.hex"))

    # Bias
    b_q, b_scale = quantize_to_int8(fc_mod.bias.data)
    save_hex(b_q, os.path.join(OUTPUT_DIR, f"{safe_name}_bias.hex"))

    shape = list(fc_mod.weight.shape)  # (out_features, in_features)
    scale_info[safe_name] = {
        'type': 'fc',
        'weight_shape': shape,
        'weight_scale': w_scale,
        'weight_num_params': int(np.prod(shape)),
        'bias_shape': [shape[0]],
        'bias_scale': b_scale,
        'bias_num_params': shape[0],
    }

# ─── scale_info.json 저장 ─────────────────────────────
scale_path = os.path.join(OUTPUT_DIR, 'scale_info.json')
with open(scale_path, 'w') as f:
    json.dump(scale_info, f, indent=2)
print(f"\n📄 {scale_path} 저장 완료")


# ─── 파라미터 통계 ─────────────────────────────────────
total_bytes = 0
print("\n" + "=" * 60)
print("📊 파라미터 요약 (INT8, 1 param = 1 byte)")
print("=" * 60)
print(f"{'Layer':<25} {'Type':<6} {'Shape':<25} {'Bytes':>8}")
print("-" * 60)

for name, info in scale_info.items():
    w_bytes = info['weight_num_params']
    b_bytes = info['bias_num_params']
    layer_bytes = w_bytes + b_bytes
    total_bytes += layer_bytes
    print(f"{name + '_weight':<25} {info['type']:<6} {str(info['weight_shape']):<25} {w_bytes:>8}")
    print(f"{name + '_bias':<25} {info['type']:<6} {str(info['bias_shape']):<25} {b_bytes:>8}")

print("-" * 60)
print(f"{'TOTAL':<25} {'':<6} {'':<25} {total_bytes:>8}")
print(f"  = {total_bytes / 1024:.1f} KB")
print(f"  Zynq-7020 BRAM 560KB 대비 {total_bytes / (560*1024) * 100:.1f}% 사용")
print("=" * 60)


# ─── 테스트 입력 이미지 생성 (golden reference용) ──────
# ─── 테스트 입력 & Golden Output 생성 (데이터셋 불필요) ──
print("\n🖼️  테스트 입력 생성 (랜덤 64×64)...")

# 랜덤 입력 ([-1, 1] 범위, val_transform 출력과 동일 분포)
test_tensor = torch.randn(1, 1, 64, 64)  # (B, C, H, W)

# INT8 변환 → hex 저장
img_np = test_tensor.squeeze().numpy()  # (64, 64)
img_int8 = np.clip(np.round(img_np * 127 / max(np.abs(img_np).max(), 1e-8)), -128, 127).astype(np.int8)
save_hex(img_int8.flatten(), os.path.join(OUTPUT_DIR, 'test_input.hex'))

# FP32 Golden 추론
with torch.no_grad():
    out_cho, out_jung, out_jong = model(test_tensor)
    pred_cho  = out_cho.argmax(dim=1).item()
    pred_jung = out_jung.argmax(dim=1).item()
    pred_jong = out_jong.argmax(dim=1).item()
    print(f"  FP32 예측: 초성={pred_cho}, 중성={pred_jung}, 종성={pred_jong}")

    np.save(os.path.join(OUTPUT_DIR, 'golden_out_cho.npy'), out_cho.numpy())
    np.save(os.path.join(OUTPUT_DIR, 'golden_out_jung.npy'), out_jung.numpy())
    np.save(os.path.join(OUTPUT_DIR, 'golden_out_jong.npy'), out_jong.numpy())
    print("  ✅ golden output 저장 완료")

# 중간 레이어 activation (RTL 레이어별 검증용)
activations = {}
hooks = []

def make_hook(name):
    def hook_fn(module, input, output):
        activations[name] = output.detach().cpu().numpy()
    return hook_fn

for name, module in model.named_modules():
    if isinstance(module, (nn.Conv2d, nn.BatchNorm2d, nn.ReLU, nn.MaxPool2d, nn.Linear)):
        hooks.append(module.register_forward_hook(make_hook(name)))

with torch.no_grad():
    model(test_tensor)

for h in hooks:
    h.remove()

for act_name, act_val in activations.items():
    safe = act_name.replace('.', '_')
    np.save(os.path.join(OUTPUT_DIR, f'golden_{safe}.npy'), act_val)

print(f"  ✅ 중간 activation {len(activations)}개 저장 완료")



# ─── BRAM 주소 맵 생성 ─────────────────────────────────
print("\n📍 BRAM 주소 맵:")
print(f"{'Layer':<25} {'Start':>8} {'End':>8} {'Size':>8}")
print("-" * 55)
addr = 0
for name, info in scale_info.items():
    # Weight
    w_size = info['weight_num_params']
    print(f"{name + '_w':<25} {addr:>8} {addr + w_size - 1:>8} {w_size:>8}")
    addr += w_size

    # Bias
    b_size = info['bias_num_params']
    print(f"{name + '_b':<25} {addr:>8} {addr + b_size - 1:>8} {b_size:>8}")
    addr += b_size

print("-" * 55)
print(f"{'TOTAL':<25} {'':>8} {'':>8} {addr:>8} bytes = {addr/1024:.1f} KB")

print("\n✅ export_weights.py 완료!")
print(f"   출력 디렉토리: {OUTPUT_DIR}/")
print(f"   다음 단계: RTL에서 $readmemh로 .hex 파일 로드")
