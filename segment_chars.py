# segment_chars.py
# 손글씨 문장 이미지 → 글자 단위 분리

import cv2
import numpy as np


def preprocess(img_bgr):
    """카메라 이미지 → 이진화"""
    gray = cv2.cvtColor(img_bgr, cv2.COLOR_BGR2GRAY)

    # 적응형 이진화 (조명 변화에 강함)
    binary = cv2.adaptiveThreshold(
        gray, 255,
        cv2.ADAPTIVE_THRESH_GAUSSIAN_C,
        cv2.THRESH_BINARY_INV,
        blockSize=21, C=10
    )

    # 노이즈 제거 (작은 점 제거)
    kernel = cv2.getStructuringElement(cv2.MORPH_RECT, (2, 2))
    binary = cv2.morphologyEx(binary, cv2.MORPH_OPEN, kernel)

    return gray, binary


def find_text_lines(binary):
    """수평 투영으로 텍스트 줄 찾기"""
    h_proj = np.sum(binary, axis=1)  # 각 행의 흰 픽셀 합

    # 임계값: 전체 너비의 1%
    threshold = binary.shape[1] * 0.01 * 255
    in_line = False
    lines = []
    y_start = 0

    for y, val in enumerate(h_proj):
        if not in_line and val > threshold:
            y_start = y
            in_line = True
        elif in_line and val <= threshold:
            lines.append((y_start, y))
            in_line = False

    if in_line:
        lines.append((y_start, len(h_proj) - 1))

    # 줄 간격 여유 추가
    padded = []
    for y1, y2 in lines:
        pad = int((y2 - y1) * 0.1)
        padded.append((max(0, y1 - pad), min(binary.shape[0], y2 + pad)))

    return padded


def find_characters(binary_line):
    """한 줄 안에서 글자 단위 분리 (Connected Component 방식)"""
    # 방법 1: Connected Component Labeling
    num_labels, labels, stats, centroids = cv2.connectedComponentsWithStats(
        binary_line, connectivity=8
    )

    chars = []
    for i in range(1, num_labels):  # 0은 배경
        x = stats[i, cv2.CC_STAT_LEFT]
        y = stats[i, cv2.CC_STAT_TOP]
        w = stats[i, cv2.CC_STAT_WIDTH]
        h = stats[i, cv2.CC_STAT_HEIGHT]
        area = stats[i, cv2.CC_STAT_AREA]

        # 너무 작은 것(노이즈) 필터링
        if area < 50:
            continue

        chars.append((x, y, w, h))

    # 왼쪽→오른쪽 정렬 (읽는 순서)
    chars.sort(key=lambda c: c[0])

    # 가까운 컴포넌트 병합 (한글은 자음+모음이 분리될 수 있음)
    merged = merge_nearby(chars, binary_line.shape[1])

    return merged


def merge_nearby(chars, img_width):
    """가까운 바운딩 박스 병합 (한글 자모 분리 대응)"""
    if len(chars) == 0:
        return chars

    # 평균 글자 너비 추정
    avg_w = np.mean([c[2] for c in chars])
    merge_threshold = avg_w * 0.3  # 간격이 평균 너비의 30% 이하면 병합

    merged = [list(chars[0])]

    for i in range(1, len(chars)):
        prev = merged[-1]
        curr = chars[i]

        prev_right = prev[0] + prev[2]
        curr_left = curr[0]
        gap = curr_left - prev_right

        if gap < merge_threshold:
            # 병합: 두 박스를 감싸는 큰 박스
            new_x = min(prev[0], curr[0])
            new_y = min(prev[1], curr[1])
            new_right = max(prev[0] + prev[2], curr[0] + curr[2])
            new_bottom = max(prev[1] + prev[3], curr[1] + curr[3])
            merged[-1] = [new_x, new_y, new_right - new_x, new_bottom - new_y]
        else:
            merged.append(list(curr))

    return [tuple(m) for m in merged]


def crop_and_resize(gray, x, y, w, h, target_size=64):
    """글자 영역을 정사각형으로 크롭 + 64×64 리사이즈"""
    # 정사각형 패딩 (긴 쪽에 맞춤)
    size = max(w, h)
    pad = int(size * 0.15)  # 여백 15%
    size += 2 * pad

    cx, cy = x + w // 2, y + h // 2
    x1 = max(0, cx - size // 2)
    y1 = max(0, cy - size // 2)
    x2 = min(gray.shape[1], x1 + size)
    y2 = min(gray.shape[0], y1 + size)

    crop = gray[y1:y2, x1:x2]

    # 크기가 0이면 빈 이미지
    if crop.size == 0:
        return np.zeros((target_size, target_size), dtype=np.uint8)

    # 정사각형 캔버스에 중앙 배치
    canvas = np.full((size, size), 255, dtype=np.uint8)
    ch, cw = crop.shape
    oy = (size - ch) // 2
    ox = (size - cw) // 2
    canvas[oy:oy+ch, ox:ox+cw] = crop

    resized = cv2.resize(canvas, (target_size, target_size),
                         interpolation=cv2.INTER_AREA)
    return resized


def segment_sentence(img_bgr):
    """
    전체 파이프라인: 문장 이미지 → 글자별 64×64 이미지 리스트
    반환: [(char_img_64x64, (x,y,w,h)), ...]
    """
    gray, binary = preprocess(img_bgr)
    lines = find_text_lines(binary)

    all_chars = []

    for y1, y2 in lines:
        line_binary = binary[y1:y2, :]
        chars = find_characters(line_binary)

        for (cx, cy, cw, ch) in chars:
            # 좌표를 원본 이미지 기준으로 변환
            abs_y = y1 + cy
            char_img = crop_and_resize(gray, cx, abs_y, cw, ch)
            all_chars.append((char_img, (cx, abs_y, cw, ch)))

    return all_chars
