# webcam_test.py
# 웹캠으로 손글씨를 촬영하여 실시간 추론 테스트

import torch
import cv2
import numpy as np
from model import HangulJamoNetV3
from dataset import compose_hangul

# ══════════════════════════════════════════
#  설정
# ══════════════════════════════════════════
MODEL_PATH = './checkpoints_v4/best_model.pth'
DEVICE = torch.device('cuda' if torch.cuda.is_available() else 'cpu')

# ══════════════════════════════════════════
#  모델 로드
# ══════════════════════════════════════════
model = HangulJamoNetV3().to(DEVICE)
model.load_state_dict(torch.load(MODEL_PATH, map_location=DEVICE))
model.eval()
print(f"모델 로드 완료 ({DEVICE})")

# ══════════════════════════════════════════
#  전처리 함수
# ══════════════════════════════════════════
def preprocess(frame, roi):
    """ROI 영역을 잘라서 학습 데이터와 유사하게 변환"""
    x, y, w, h = roi
    crop = frame[y:y+h, x:x+w]

    # 1. 그레이스케일
    gray = cv2.cvtColor(crop, cv2.COLOR_BGR2GRAY)

    # 2. 가우시안 블러 (노이즈 제거)
    gray = cv2.GaussianBlur(gray, (5, 5), 0)

    # 3. 적응형 이진화 (조명 변화에 강함)
    #    글씨 = 흰(255), 배경 = 검(0)
    binary = cv2.adaptiveThreshold(
        gray, 255,
        cv2.ADAPTIVE_THRESH_GAUSSIAN_C,
        cv2.THRESH_BINARY_INV,
        blockSize=21, C=10
    )

    # 4. 모폴로지 닫기 (끊어진 획 연결)
    kernel = cv2.getStructuringElement(cv2.MORPH_RECT, (3, 3))
    binary = cv2.morphologyEx(binary, cv2.MORPH_CLOSE, kernel)

    # 5. 컨투어 찾기 → 가장 큰 글자 영역만 추출
    contours, _ = cv2.findContours(
        binary, cv2.RETR_EXTERNAL, cv2.CHAIN_APPROX_SIMPLE
    )

    if contours:
        # 면적 기준 가장 큰 컨투어 선택
        largest = max(contours, key=cv2.contourArea)
        bx, by, bw, bh = cv2.boundingRect(largest)

        # 너무 작은 건 노이즈로 무시
        if bw > 10 and bh > 10:
            char_region = binary[by:by+bh, bx:bx+bw]
        else:
            char_region = binary
    else:
        char_region = binary

    # 6. 정사각형 캔버스에 중앙 배치 (학습 데이터와 동일한 형태)
    size = max(char_region.shape[0], char_region.shape[1])
    pad = int(size * 0.2)  # 20% 여백
    canvas_size = size + 2 * pad
    canvas = np.zeros((canvas_size, canvas_size), dtype=np.uint8)

    oy = (canvas_size - char_region.shape[0]) // 2
    ox = (canvas_size - char_region.shape[1]) // 2
    canvas[oy:oy+char_region.shape[0], ox:ox+char_region.shape[1]] = char_region

    # 7. 64×64 리사이즈
    resized = cv2.resize(canvas, (64, 64), interpolation=cv2.INTER_AREA)

    # 8. 흰 글씨/검은 배경 → 학습 데이터 형태로 반전 확인
    #    AI Hub 데이터가 검은 글씨/흰 배경이면 반전
    resized = 255 - resized  # 검은 글씨, 흰 배경으로

    # 9. 텐서 변환 (학습 시와 동일한 정규화)
    tensor = torch.from_numpy(resized).float() / 255.0
    tensor = (tensor - 0.5) / 0.5
    tensor = tensor.unsqueeze(0).unsqueeze(0)

    return tensor, resized



def predict(tensor):
    """모델 추론"""
    with torch.no_grad():
        tensor = tensor.to(DEVICE)
        out_cho, out_jung, out_jong = model(tensor)

        cho_idx  = out_cho.argmax(1).item()
        jung_idx = out_jung.argmax(1).item()
        jong_idx = out_jong.argmax(1).item()

        # 확률 (softmax)
        cho_prob  = torch.softmax(out_cho, 1).max().item()
        jung_prob = torch.softmax(out_jung, 1).max().item()
        jong_prob = torch.softmax(out_jong, 1).max().item()

    char = compose_hangul(cho_idx, jung_idx, jong_idx)
    return char, cho_idx, jung_idx, jong_idx, cho_prob, jung_prob, jong_prob


# ══════════════════════════════════════════
#  웹캠 루프
# ══════════════════════════════════════════
cap = cv2.VideoCapture(2)
if not cap.isOpened():
    print("웹캠을 열 수 없습니다")
    exit()

cap.set(cv2.CAP_PROP_FRAME_WIDTH, 640)
cap.set(cv2.CAP_PROP_FRAME_HEIGHT, 480)

# ROI 영역 (화면 중앙에 200×200 박스)
roi_size = 120
roi_x = (640 - roi_size) // 2
roi_y = (480 - roi_size) // 2
roi = (roi_x, roi_y, roi_size, roi_size)

print("=" * 50)
print("  웹캠 한글 손글씨 인식 테스트")
print("  - 초록 박스 안에 글자를 보여주세요")
print("  - SPACE: 캡처 및 추론")
print("  - Q: 종료")
print("=" * 50)

last_result = None

while True:
    ret, frame = cap.read()
    if not ret:
        break

    # 좌우 반전 (거울 모드)
    # frame = cv2.flip(frame, 1)

    # ROI 박스 그리기
    cv2.rectangle(frame,
                  (roi[0], roi[1]),
                  (roi[0]+roi[2], roi[1]+roi[3]),
                  (0, 255, 0), 2)

    cv2.putText(frame, "SPACE: Capture / Q: Quit",
                (10, 30), cv2.FONT_HERSHEY_SIMPLEX, 0.7, (0, 255, 0), 2)

    # 이전 결과 표시
    if last_result is not None:
        char, cho_i, jung_i, jong_i, cp, jp, kp = last_result

        # 한글 표시를 위해 PIL 사용
        try:
            from PIL import ImageFont, ImageDraw, Image as PILImage

            pil_img = PILImage.fromarray(cv2.cvtColor(frame, cv2.COLOR_BGR2RGB))
            draw = ImageDraw.Draw(pil_img)

            # 시스템 한글 폰트 탐색
            font_paths = [
                '/usr/share/fonts/truetype/nanum/NanumGothicBold.ttf',
                '/usr/share/fonts/truetype/nanum/NanumGothic.ttf',
                '/usr/share/fonts/truetype/unfonts-core/UnBatang.ttf',
                '/usr/share/fonts/opentype/noto/NotoSansCJK-Bold.ttc',
            ]
            font = None
            for fp in font_paths:
                try:
                    font = ImageFont.truetype(fp, 60)
                    break
                except:
                    continue
            if font is None:
                font = ImageFont.load_default()

            # 인식 결과 표시
            draw.text((roi[0] + roi[2] + 20, roi[1]),
                      f"{char}", font=font, fill=(0, 0, 255))

            small_font = None
            for fp in font_paths:
                try:
                    small_font = ImageFont.truetype(fp, 20)
                    break
                except:
                    continue
            if small_font is None:
                small_font = ImageFont.load_default()

            info_y = roi[1] + 80
            draw.text((roi[0] + roi[2] + 20, info_y),
                      f"초성: {cho_i} ({cp:.1%})", font=small_font, fill=(255, 255, 255))
            draw.text((roi[0] + roi[2] + 20, info_y + 30),
                      f"중성: {jung_i} ({jp:.1%})", font=small_font, fill=(255, 255, 255))
            draw.text((roi[0] + roi[2] + 20, info_y + 60),
                      f"종성: {jong_i} ({kp:.1%})", font=small_font, fill=(255, 255, 255))

            frame = cv2.cvtColor(np.array(pil_img), cv2.COLOR_RGB2BGR)

        except ImportError:
            # PIL 폰트 없으면 영문으로 표시
            cv2.putText(frame, f"Result: {char}",
                        (roi[0]+roi[2]+20, roi[1]+40),
                        cv2.FONT_HERSHEY_SIMPLEX, 1.0, (0, 0, 255), 2)
            cv2.putText(frame, f"Cho:{cho_i}({cp:.0%}) Jung:{jung_i}({jp:.0%}) Jong:{jong_i}({kp:.0%})",
                        (roi[0]+roi[2]+20, roi[1]+80),
                        cv2.FONT_HERSHEY_SIMPLEX, 0.5, (255, 255, 255), 1)

    # ROI 내부 프리뷰 (우측 하단에 64×64 확대)
    _, preview = preprocess(frame, roi)
    preview_large = cv2.resize(preview, (128, 128), interpolation=cv2.INTER_NEAREST)
    frame[340:468, 500:628] = cv2.cvtColor(preview_large, cv2.COLOR_GRAY2BGR)
    cv2.putText(frame, "64x64", (505, 335),
                cv2.FONT_HERSHEY_SIMPLEX, 0.5, (0, 255, 255), 1)

    cv2.imshow('Hangul OCR Test', frame)

    key = cv2.waitKey(1) & 0xFF

    if key == ord(' '):
        # 스페이스바: 캡처 후 추론
        tensor, _ = preprocess(frame, roi)
        last_result = predict(tensor)
        char = last_result[0]
        print(f"인식 결과: {char} "
              f"(초:{last_result[1]} 중:{last_result[2]} 종:{last_result[3]}) "
              f"확률: {last_result[4]:.1%}/{last_result[5]:.1%}/{last_result[6]:.1%}")

    elif key == ord('q') or key == ord('Q'):
        break

cap.release()
cv2.destroyAllWindows()
print("종료")
