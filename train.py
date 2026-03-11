import torch
import torch.nn as nn
from torch.utils.data import DataLoader, random_split, Subset
from model import HangulJamoNetV3
from dataset import (
    AIHubHangulDataset, compose_hangul,
    train_transform, val_transform
)
from tqdm import tqdm
import matplotlib
matplotlib.use('Agg')
import matplotlib.pyplot as plt
import os
import copy

# ══════════════════════════════════════════
#  설정
# ══════════════════════════════════════════
BASE = '/media/jaehyeok95/새 볼륨/13.한국어글자체/01.손글씨'

JSON_PATH = os.path.join(BASE, 'handwriting_data_info_clean.json')

IMG_DIRS = [
    os.path.join(BASE, '01_handwriting_syllable_images', '1_syllable'),
    os.path.join(BASE, '02_handwriting_syllable_images', '2_syllable'),
]

MAX_PER_CHAR = 100         # 글자당 최대 100장 (최대 ~70만)
BATCH_SIZE = 128           # 64×64 이미지라 배치 줄임
EPOCHS = 60
LR = 1e-3
SAVE_DIR = './checkpoints_v4'

os.makedirs(SAVE_DIR, exist_ok=True)

# ══════════════════════════════════════════
#  디바이스
# ══════════════════════════════════════════
device = torch.device('cuda' if torch.cuda.is_available() else 'cpu')
print(f"사용 디바이스: {device}")
if device.type == 'cuda':
    print(f"GPU: {torch.cuda.get_device_name(0)}")
    print(f"VRAM: {torch.cuda.get_device_properties(0).total_memory / 1024**3:.1f} GB")

# ══════════════════════════════════════════
#  데이터셋
# ══════════════════════════════════════════
print("\n데이터셋 로딩 중...")
full_dataset = AIHubHangulDataset(
    json_path=JSON_PATH,
    img_dirs=IMG_DIRS,
    transform=None,         # transform은 나중에 적용
    max_per_char=MAX_PER_CHAR
)

# 8:2 분할
train_size = int(0.8 * len(full_dataset))
val_size = len(full_dataset) - train_size
train_indices, val_indices = random_split(
    range(len(full_dataset)), [train_size, val_size]
)

# Train/Val에 다른 transform 적용하기 위한 래퍼
class TransformSubset(torch.utils.data.Dataset):
    def __init__(self, dataset, indices, transform):
        self.dataset = dataset
        self.indices = list(indices)
        self.transform = transform

    def __len__(self):
        return len(self.indices)

    def __getitem__(self, idx):
        path, cho, jung, jong = self.dataset.samples[self.indices[idx]]
        try:
            from PIL import Image
            img = Image.open(path).convert('L')
        except Exception:
            from PIL import Image
            img = Image.new('L', (64, 64), 0)
        if self.transform:
            img = self.transform(img)
        return img, cho, jung, jong


train_dataset = TransformSubset(full_dataset, train_indices, train_transform)
val_dataset   = TransformSubset(full_dataset, val_indices,   val_transform)

train_loader = DataLoader(train_dataset, batch_size=BATCH_SIZE,
                          shuffle=True, num_workers=4, pin_memory=True)
val_loader   = DataLoader(val_dataset,   batch_size=BATCH_SIZE,
                          shuffle=False, num_workers=4, pin_memory=True)

print(f"학습: {len(train_dataset):,} | 검증: {len(val_dataset):,}")

# ══════════════════════════════════════════
#  모델
# ══════════════════════════════════════════
model = HangulJamoNetV3().to(device)
criterion = nn.CrossEntropyLoss()
optimizer = torch.optim.AdamW(model.parameters(), lr=LR, weight_decay=1e-4)
scheduler = torch.optim.lr_scheduler.CosineAnnealingLR(optimizer, T_max=EPOCHS, eta_min=1e-5)

# 파라미터 수 출력
total_params = sum(p.numel() for p in model.parameters())
trainable_params = sum(p.numel() for p in model.parameters() if p.requires_grad)
print(f"총 파라미터: {total_params:,} ({total_params / 1024:.1f} KB in INT8)")
print(f"학습 가능 파라미터: {trainable_params:,}")

# Conv vs FC 분리 계산
conv_params = 0
fc_params = 0
for name, p in model.named_parameters():
    if 'conv' in name or 'bn' in name:
        conv_params += p.numel()
    else:
        fc_params += p.numel()
print(f"Conv+BN 파라미터: {conv_params:,} ({conv_params / 1024:.1f} KB) → BRAM")
print(f"FC 파라미터: {fc_params:,} ({fc_params / 1024:.1f} KB) → BRAM/DDR\n")

# ══════════════════════════════════════════
#  학습
# ══════════════════════════════════════════
history = {
    'train_loss': [], 'val_loss': [],
    'acc_cho': [], 'acc_jung': [], 'acc_jong': [], 'acc_all': []
}
best_acc = 0.0
patience = 10
patience_counter = 0

for epoch in range(EPOCHS):
    # ── Train ──
    model.train()
    total_loss = 0
    for imgs, cho, jung, jong in tqdm(train_loader, desc=f"Epoch {epoch+1:02d} Train"):
        imgs = imgs.to(device)
        cho, jung, jong = cho.to(device), jung.to(device), jong.to(device)

        out_cho, out_jung, out_jong = model(imgs)

        # 종성에 가중치 부여 (가장 어려운 태스크)
        loss = (criterion(out_cho, cho)
                + criterion(out_jung, jung)
                + 1.5 * criterion(out_jong, jong))

        optimizer.zero_grad()
        loss.backward()
        torch.nn.utils.clip_grad_norm_(model.parameters(), max_norm=5.0)
        optimizer.step()
        total_loss += loss.item()

    scheduler.step()
    avg_train_loss = total_loss / len(train_loader)

    # ── Validation ──
    model.eval()
    val_loss = 0
    correct_cho = correct_jung = correct_jong = correct_all = total = 0

    with torch.no_grad():
        for imgs, cho, jung, jong in tqdm(val_loader, desc=f"Epoch {epoch+1:02d} Val  "):
            imgs = imgs.to(device)
            cho, jung, jong = cho.to(device), jung.to(device), jong.to(device)

            out_cho, out_jung, out_jong = model(imgs)
            loss = (criterion(out_cho, cho)
                    + criterion(out_jung, jung)
                    + 1.5 * criterion(out_jong, jong))
            val_loss += loss.item()

            pc = out_cho.argmax(1) == cho
            pj = out_jung.argmax(1) == jung
            pk = out_jong.argmax(1) == jong

            correct_cho  += pc.sum().item()
            correct_jung += pj.sum().item()
            correct_jong += pk.sum().item()
            correct_all  += (pc & pj & pk).sum().item()
            total += cho.size(0)

    avg_val_loss = val_loss / len(val_loader)
    acc_cho  = correct_cho / total
    acc_jung = correct_jung / total
    acc_jong = correct_jong / total
    acc_all  = correct_all / total

    history['train_loss'].append(avg_train_loss)
    history['val_loss'].append(avg_val_loss)
    history['acc_cho'].append(acc_cho)
    history['acc_jung'].append(acc_jung)
    history['acc_jong'].append(acc_jong)
    history['acc_all'].append(acc_all)

    lr_now = optimizer.param_groups[0]['lr']
    print(f"\nEpoch {epoch+1:02d}/{EPOCHS} (lr={lr_now:.6f})")
    print(f"  Train Loss: {avg_train_loss:.4f} | Val Loss: {avg_val_loss:.4f}")
    print(f"  초성: {acc_cho:.4f} | 중성: {acc_jung:.4f} | 종성: {acc_jong:.4f}")
    print(f"  전체 글자 정확도: {acc_all:.4f}")

    if acc_all > best_acc:
        best_acc = acc_all
        torch.save(model.state_dict(), f'{SAVE_DIR}/best_model.pth')
        print(f"  ★ Best 모델 저장 (정확도: {best_acc:.4f})")
        patience_counter = 0
    else:
        patience_counter += 1
        if patience_counter >= patience:
            print(f"\n  Early stopping (patience={patience})")
            break

    torch.save(model.state_dict(), f'{SAVE_DIR}/epoch_{epoch+1:02d}.pth')

# ══════════════════════════════════════════
#  학습 곡선
# ══════════════════════════════════════════
fig, axes = plt.subplots(1, 2, figsize=(14, 5))

axes[0].plot(history['train_loss'], label='Train Loss')
axes[0].plot(history['val_loss'], label='Val Loss')
axes[0].set_xlabel('Epoch')
axes[0].set_ylabel('Loss')
axes[0].legend()
axes[0].set_title('Loss')
axes[0].grid(True, alpha=0.3)

axes[1].plot(history['acc_cho'], label='초성 (Cho)')
axes[1].plot(history['acc_jung'], label='중성 (Jung)')
axes[1].plot(history['acc_jong'], label='종성 (Jong)')
axes[1].plot(history['acc_all'], label='전체 (All)', linewidth=2, color='red')
axes[1].axhline(y=0.9, color='gray', linestyle='--', alpha=0.5, label='90% 목표')
axes[1].set_xlabel('Epoch')
axes[1].set_ylabel('Accuracy')
axes[1].legend()
axes[1].set_title('Accuracy')
axes[1].grid(True, alpha=0.3)

plt.tight_layout()
plt.savefig(f'{SAVE_DIR}/training_curve_v3.png', dpi=150)
plt.close()
print(f"\n학습 곡선 저장: {SAVE_DIR}/training_curve_v3.png")
print(f"최종 Best 전체 글자 정확도: {best_acc:.4f}")
