import torch
import torch.nn as nn
import torch.nn.functional as F


class HangulJamoNetV3(nn.Module):
    """
    입력 : 1×64×64 그레이스케일
    출력 : 초성(19), 중성(21), 종성(28)

    핵심 개선점 (V1/V2 대비):
    1. 입력 64×64 → 종성 영역 해상도 확보
    2. Conv 5층 → 깊은 특징 추출 (특히 종성)
    3. BatchNorm → 학습 안정화, 수렴 속도 향상
    4. Dropout → 과적합 방지
    5. 종성 전용 FC 확대 → 종성 분류력 강화
    6. 채널 점진적 증가 (32→64→128→128→128)

    파라미터: ~420K (INT8 ≈ 410 KB) → Zynq-7020 BRAM 560KB 이내
    Conv weight: ~155 KB (BRAM 적재)
    FC weight:  ~255 KB (BRAM 또는 DDR)
    """
    def __init__(self):
        super().__init__()

        # ── Feature Extractor (Conv5) ──
        # 64×64 → pool → 32×32 → pool → 16×16 → pool → 8×8 → pool → 4×4 → pool → 2×2
        self.conv1 = nn.Conv2d(1,   32, 3, padding=1)
        self.bn1   = nn.BatchNorm2d(32)

        self.conv2 = nn.Conv2d(32,  64, 3, padding=1)
        self.bn2   = nn.BatchNorm2d(64)

        self.conv3 = nn.Conv2d(64, 128, 3, padding=1)
        self.bn3   = nn.BatchNorm2d(128)

        self.conv4 = nn.Conv2d(128, 128, 3, padding=1)
        self.bn4   = nn.BatchNorm2d(128)

        self.conv5 = nn.Conv2d(128, 128, 3, padding=1)
        self.bn5   = nn.BatchNorm2d(128)

        self.pool  = nn.MaxPool2d(2, 2)
        self.dropout_conv = nn.Dropout2d(0.1)
        self.dropout_fc   = nn.Dropout(0.3)

        # ── Shared FC ──
        # 64→32→16→8→4→2, 128×2×2 = 512
        self.fc_shared = nn.Linear(128 * 2 * 2, 256)
        self.bn_fc     = nn.BatchNorm1d(256)

        # ── Jamo Heads ──
        # 초성/중성: 직접 분류 (클래스 수 적음)
        self.head_cho  = nn.Linear(256, 19)
        self.head_jung = nn.Linear(256, 21)

        # 종성: 전용 hidden layer 추가 (28 클래스, 가장 어려움)
        self.fc_jong   = nn.Linear(256, 128)
        self.bn_jong   = nn.BatchNorm1d(128)
        self.head_jong = nn.Linear(128, 28)

    def forward(self, x):
        # Conv blocks
        x = self.pool(F.relu(self.bn1(self.conv1(x))))   # 32×32×32
        x = self.pool(F.relu(self.bn2(self.conv2(x))))   # 64×16×16
        x = self.pool(F.relu(self.bn3(self.conv3(x))))   # 128×8×8
        x = self.dropout_conv(x)
        x = self.pool(F.relu(self.bn4(self.conv4(x))))   # 128×4×4
        x = self.pool(F.relu(self.bn5(self.conv5(x))))   # 128×2×2

        # Flatten
        x = x.view(x.size(0), -1)                        # 512

        # Shared FC
        shared = F.relu(self.bn_fc(self.fc_shared(x)))    # 256
        shared = self.dropout_fc(shared)

        # 초성 / 중성
        cho  = self.head_cho(shared)
        jung = self.head_jung(shared)

        # 종성 (전용 hidden layer)
        jong_feat = F.relu(self.bn_jong(self.fc_jong(shared)))  # 128
        jong_feat = self.dropout_fc(jong_feat)
        jong = self.head_jong(jong_feat)                         # 28

        return cho, jung, jong
