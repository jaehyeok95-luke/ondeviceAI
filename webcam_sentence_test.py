# webcam_ocr_full.py
# A4 검출 + 줄 분리 + 글자 분리 + HangulJamoNetV3 추론 통합

import cv2
import numpy as np
import torch
from model import HangulJamoNetV3
from dataset import compose_hangul

# ══════════════════════════════════════════
#  모델 로드
# ══════════════════════════════════════════
MODEL_PATH = './checkpoints_v4/best_model.pth'
device = torch.device('cuda' if torch.cuda.is_available() else 'cpu')

model = HangulJamoNetV3().to(device)
model.load_state_dict(torch.load(MODEL_PATH, map_location=device))
model.eval()
print(f"모델 로드 완료 ({device})")

cap = cv2.VideoCapture(2)

if not cap.isOpened():
    print("웹캠을 열 수 없습니다.")
    exit()

# =========================
# 기본 설정
# =========================
FRAME_W = 960
FRAME_H = 720
DETECT_SCALE = 2.0
WARP_W = 560
WARP_H = int(WARP_W * 297 / 210)
INNER_MARGIN_X_RATIO = 0.02
INNER_MARGIN_Y_RATIO = 0.02
PAPER_MIN_AREA_RATIO = 0.14
ADAPT_BLOCK = 31
ADAPT_C = 12
MIN_CHAR_AREA = 12
LINE_MIN_W = 30
LINE_MIN_H = 12
LINE_MAX_H = 140
LINE_MIN_FILL = 0.012
LINE_PAD_X = 8
LINE_PAD_Y = 6
OUTER_PAD = 10
VERT_DILATE_H = 7
VERT_DILATE_W = 3
HOR_DILATE_H = 3
HOR_DILATE_W = 32
BORDER_IGNORE = 8
MAX_LINE_WIDTH_RATIO = 0.90
MAX_THIN_LINE_HEIGHT = 18
MIN_CC_PER_LINE = 2
CENTER_X_TOL_RATIO = 0.28
WIDTH_KEEP_RATIO = 0.38
GROUP_RECT_ALPHA = 0.72
LINE_BOX_ALPHA = 0.65
QUAD_ALPHA_SMALL = 0.72
QUAD_ALPHA_MED = 0.84
QUAD_ALPHA_BIG = 0.92
MAX_CORNER_JUMP_IGNORE = 170.0
TEXT_BW_DISPLAY_SCALE = 2
WIN_W = 700
WIN_H = 500

# 글자 분리 설정
CHAR_CLOSE_KERNEL = 7
CHAR_MIN_AREA_RATIO = 0.003
CHAR_MERGE_GAP_RATIO = 0.25


# =========================
# 유틸 함수 (기존 코드 그대로)
# =========================
def make_blank_color(w, h, value=255):
    return np.full((h, w, 3), value, dtype=np.uint8)


def make_blank_gray(w, h, value=255):
    return np.full((h, w), value, dtype=np.uint8)


def order_points(pts):
    pts = np.array(pts, dtype=np.float32)
    s = pts.sum(axis=1)
    d = np.diff(pts, axis=1)
    tl = pts[np.argmin(s)]
    br = pts[np.argmax(s)]
    tr = pts[np.argmin(d)]
    bl = pts[np.argmax(d)]
    return np.array([tl, tr, br, bl], dtype=np.float32)


def quad_mean_corner_distance(a, b):
    if a is None or b is None:
        return 0.0
    return float(np.mean(np.linalg.norm(a - b, axis=1)))


def smooth_quad(curr_pts, prev_pts):
    if curr_pts is None:
        return prev_pts
    if prev_pts is None:
        return curr_pts.astype(np.float32)
    dist = quad_mean_corner_distance(curr_pts, prev_pts)
    if dist > MAX_CORNER_JUMP_IGNORE:
        return prev_pts.astype(np.float32)
    if dist < 10:
        alpha = QUAD_ALPHA_SMALL
    elif dist < 35:
        alpha = QUAD_ALPHA_MED
    else:
        alpha = QUAD_ALPHA_BIG
    return (prev_pts * alpha + curr_pts * (1.0 - alpha)).astype(np.float32)


def warp_from_quad(frame, quad_pts, out_w, out_h):
    dst = np.array([
        [0, 0], [out_w - 1, 0],
        [out_w - 1, out_h - 1], [0, out_h - 1]
    ], dtype=np.float32)
    M = cv2.getPerspectiveTransform(quad_pts, dst)
    warped = cv2.warpPerspective(frame, M, (out_w, out_h))
    return warped, M


def map_points_back(points_2d, M_inv):
    pts = np.array(points_2d, dtype=np.float32).reshape(-1, 1, 2)
    mapped = cv2.perspectiveTransform(pts, M_inv)
    return mapped.reshape(-1, 2)


def remove_small_components(binary_inv, min_area):
    num_labels, labels, stats, _ = cv2.connectedComponentsWithStats(binary_inv, connectivity=8)
    cleaned = np.zeros_like(binary_inv)
    for i in range(1, num_labels):
        if stats[i, cv2.CC_STAT_AREA] >= min_area:
            cleaned[labels == i] = 255
    return cleaned


def find_paper_corners(frame):
    small = cv2.resize(frame, None, fx=DETECT_SCALE, fy=DETECT_SCALE, interpolation=cv2.INTER_AREA)
    gray = cv2.cvtColor(small, cv2.COLOR_BGR2GRAY)
    blur = cv2.GaussianBlur(gray, (5, 5), 0)
    _, th = cv2.threshold(blur, 0, 255, cv2.THRESH_BINARY + cv2.THRESH_OTSU)
    kernel = np.ones((7, 7), np.uint8)
    th = cv2.morphologyEx(th, cv2.MORPH_CLOSE, kernel, iterations=2)
    th = cv2.morphologyEx(th, cv2.MORPH_OPEN, kernel, iterations=1)
    contours, _ = cv2.findContours(th, cv2.RETR_EXTERNAL, cv2.CHAIN_APPROX_SIMPLE)
    if not contours:
        return None
    largest = max(contours, key=cv2.contourArea)
    area = cv2.contourArea(largest)
    h, w = gray.shape
    if area < h * w * PAPER_MIN_AREA_RATIO:
        return None
    hull = cv2.convexHull(largest)
    peri = cv2.arcLength(hull, True)
    approx = cv2.approxPolyDP(hull, 0.02 * peri, True)
    if len(approx) == 4 and cv2.isContourConvex(approx):
        pts = approx.reshape(4, 2).astype(np.float32)
    else:
        rect = cv2.minAreaRect(hull)
        pts = cv2.boxPoints(rect).astype(np.float32)
    pts = order_points(pts)
    pts /= DETECT_SCALE
    return pts.astype(np.float32)


def binarize_text(img_bgr):
    gray = cv2.cvtColor(img_bgr, cv2.COLOR_BGR2GRAY)
    blur = cv2.GaussianBlur(gray, (1, 1), 0)
    binary = cv2.adaptiveThreshold(blur, 255, cv2.ADAPTIVE_THRESH_GAUSSIAN_C,
                                   cv2.THRESH_BINARY, ADAPT_BLOCK, ADAPT_C)
    inv = 255 - binary
    inv_clean = remove_small_components(inv, MIN_CHAR_AREA)
    result = 255 - inv_clean
    return result


def refine_box_from_clean(clean, x, y, w, h):
    H, W = clean.shape
    x1 = max(0, x - 5)
    y1 = max(0, y - 5)
    x2 = min(W - 1, x + w + 5)
    y2 = min(H - 1, y + h + 5)
    roi = clean[y1:y2, x1:x2]
    if roi.size == 0:
        return None
    row_counts = np.count_nonzero(roi > 0, axis=1)
    col_counts = np.count_nonzero(roi > 0, axis=0)
    ys = np.where(row_counts >= 1)[0]
    xs = np.where(col_counts >= 1)[0]
    if len(xs) == 0 or len(ys) == 0:
        return None
    rx1 = x1 + xs.min()
    rx2 = x1 + xs.max()
    ry1 = y1 + ys.min()
    ry2 = y1 + ys.max()
    rx1 = max(0, rx1 - LINE_PAD_X)
    ry1 = max(0, ry1 - LINE_PAD_Y)
    rx2 = min(W - 1, rx2 + LINE_PAD_X)
    ry2 = min(H - 1, ry2 + LINE_PAD_Y)
    return (rx1, ry1, rx2 - rx1 + 1, ry2 - ry1 + 1)


def detect_line_boxes_from_bw(inner_bw):
    clean = 255 - inner_bw
    H, W = clean.shape
    if cv2.countNonZero(clean) == 0:
        return []
    line_mask = clean.copy()
    vert_kernel = np.ones((VERT_DILATE_H, VERT_DILATE_W), np.uint8)
    line_mask = cv2.dilate(line_mask, vert_kernel, iterations=1)
    hor_kernel = np.ones((HOR_DILATE_H, HOR_DILATE_W), np.uint8)
    line_mask = cv2.dilate(line_mask, hor_kernel, iterations=1)
    contours, _ = cv2.findContours(line_mask, cv2.RETR_EXTERNAL, cv2.CHAIN_APPROX_SIMPLE)
    candidate_boxes = []
    for cnt in contours:
        x, y, w, h = cv2.boundingRect(cnt)
        if x < BORDER_IGNORE or y < BORDER_IGNORE:
            continue
        if x + w > W - BORDER_IGNORE or y + h > H - BORDER_IGNORE:
            continue
        if w > W * MAX_LINE_WIDTH_RATIO and h < MAX_THIN_LINE_HEIGHT:
            continue
        if w < LINE_MIN_W:
            continue
        if h < LINE_MIN_H or h > LINE_MAX_H:
            continue
        refined = refine_box_from_clean(clean, x, y, w, h)
        if refined is None:
            continue
        rx, ry, rw, rh = refined
        if rx < BORDER_IGNORE or ry < BORDER_IGNORE:
            continue
        if rx + rw > W - BORDER_IGNORE or ry + rh > H - BORDER_IGNORE:
            continue
        if rw > W * MAX_LINE_WIDTH_RATIO and rh < MAX_THIN_LINE_HEIGHT:
            continue
        roi = clean[ry:ry + rh, rx:rx + rw]
        fill_ratio = cv2.countNonZero(roi) / float(rw * rh)
        if fill_ratio < LINE_MIN_FILL:
            continue
        num_labels, labels, stats, _ = cv2.connectedComponentsWithStats(roi, connectivity=8)
        cc_count = 0
        for i in range(1, num_labels):
            area = stats[i, cv2.CC_STAT_AREA]
            cw = stats[i, cv2.CC_STAT_WIDTH]
            ch = stats[i, cv2.CC_STAT_HEIGHT]
            if area < 4:
                continue
            if cw > rw * 0.85 and ch < rh * 0.35:
                continue
            if ch < 4:
                continue
            cc_count += 1
        if cc_count < MIN_CC_PER_LINE:
            continue
        candidate_boxes.append((rx, ry, rw, rh))
    line_boxes = []
    if candidate_boxes:
        centers_x = np.array([x + w / 2.0 for (x, y, w, h) in candidate_boxes], dtype=np.float32)
        widths = np.array([w for (x, y, w, h) in candidate_boxes], dtype=np.float32)
        median_cx = float(np.median(centers_x))
        median_w = float(np.median(widths))
        cx_tol = max(45, W * CENTER_X_TOL_RATIO)
        for (x, y, w, h) in candidate_boxes:
            cx = x + w / 2.0
            if abs(cx - median_cx) > cx_tol:
                continue
            if w < median_w * WIDTH_KEEP_RATIO:
                continue
            line_boxes.append((x, y, w, h))
    if not line_boxes:
        line_boxes = candidate_boxes.copy()
    line_boxes = sorted(line_boxes, key=lambda b: b[1])
    merged = []
    for box in line_boxes:
        if not merged:
            merged.append(list(box))
            continue
        px, py, pw, ph = merged[-1]
        x, y, w, h = box
        prev_cy = py + ph / 2.0
        curr_cy = y + h / 2.0
        if abs(prev_cy - curr_cy) < max(ph, h) * 0.65 and y <= py + ph + 8:
            nx1 = min(px, x)
            ny1 = min(py, y)
            nx2 = max(px + pw, x + w)
            ny2 = max(py + ph, y + h)
            merged[-1] = [nx1, ny1, nx2 - nx1, ny2 - ny1]
        else:
            merged.append([x, y, w, h])
    return [tuple(b) for b in merged]


def smooth_rect(curr_rect, prev_rect, alpha):
    curr_rect = np.array(curr_rect, dtype=np.float32)
    if prev_rect is None:
        return curr_rect
    prev_rect = np.array(prev_rect, dtype=np.float32)
    return prev_rect * alpha + curr_rect * (1.0 - alpha)


def smooth_boxes_by_order(curr_boxes, prev_boxes, alpha=0.65):
    if not curr_boxes:
        return []
    curr_boxes = sorted(curr_boxes, key=lambda b: b[1])
    if not prev_boxes:
        return curr_boxes
    prev_boxes = sorted(prev_boxes, key=lambda b: b[1])
    matched = []
    used_prev = [False] * len(prev_boxes)
    for cb in curr_boxes:
        cx, cy, cw, ch = cb
        ccy = cy + ch / 2.0
        best_j = -1
        best_cost = 1e9
        for j, pb in enumerate(prev_boxes):
            if used_prev[j]:
                continue
            px, py, pw, ph = pb
            pcy = py + ph / 2.0
            dy = abs(ccy - pcy)
            dx = abs((cx + cw / 2.0) - (px + pw / 2.0))
            cost = dy + 0.35 * dx
            if cost < best_cost:
                best_cost = cost
                best_j = j
        if best_j >= 0:
            px, py, pw, ph = prev_boxes[best_j]
            if best_cost < max(ch, ph) * 2.5 + 35:
                sx = px * alpha + cx * (1.0 - alpha)
                sy = py * alpha + cy * (1.0 - alpha)
                sw = pw * alpha + cw * (1.0 - alpha)
                sh = ph * alpha + ch * (1.0 - alpha)
                matched.append((int(round(sx)), int(round(sy)),
                                int(round(sw)), int(round(sh))))
                used_prev[best_j] = True
            else:
                matched.append(cb)
        else:
            matched.append(cb)
    return sorted(matched, key=lambda b: b[1])


# ══════════════════════════════════════════
#  글자 분리 + 추론 함수 (추가)
# ══════════════════════════════════════════
def segment_chars_in_line(line_bw, line_h):
    """
    한 줄 이진화 이미지에서 글자 단위 분리
    line_bw: 흰배경(255) + 검은글씨(0)
    반환: [(x, y, w, h), ...] 왼쪽→오른쪽 정렬
    """
    inv = 255 - line_bw  # 글자=흰

    # 초중종성 연결을 위한 닫기 연산
    close_k = cv2.getStructuringElement(cv2.MORPH_RECT,
                                        (CHAR_CLOSE_KERNEL, CHAR_CLOSE_KERNEL))
    connected = cv2.morphologyEx(inv, cv2.MORPH_CLOSE, close_k)

    contours, _ = cv2.findContours(connected, cv2.RETR_EXTERNAL,
                                   cv2.CHAIN_APPROX_SIMPLE)

    total_area = line_bw.shape[0] * line_bw.shape[1]
    min_area = total_area * CHAR_MIN_AREA_RATIO

    chars = []
    for c in contours:
        if cv2.contourArea(c) < min_area:
            continue
        x, y, w, h = cv2.boundingRect(c)
        if w > 3 and h > 3:
            chars.append((x, y, w, h))

    chars.sort(key=lambda c: c[0])

    # 가까운 바운딩 박스 병합
    if len(chars) <= 1:
        return chars

    avg_w = np.mean([c[2] for c in chars])
    merge_thr = avg_w * CHAR_MERGE_GAP_RATIO

    merged = [list(chars[0])]
    for i in range(1, len(chars)):
        prev = merged[-1]
        curr = chars[i]
        prev_right = prev[0] + prev[2]
        gap = curr[0] - prev_right
        if gap < merge_thr:
            new_x = min(prev[0], curr[0])
            new_y = min(prev[1], curr[1])
            new_r = max(prev[0] + prev[2], curr[0] + curr[2])
            new_b = max(prev[1] + prev[3], curr[1] + curr[3])
            merged[-1] = [new_x, new_y, new_r - new_x, new_b - new_y]
        else:
            merged.append(list(curr))

    return [tuple(m) for m in merged]


def char_to_tensor(line_bw, x, y, w, h):
    """
    줄 이진화 이미지에서 글자 영역 → 64×64 텐서
    line_bw: 흰배경(255) + 검은글씨(0)
    """
    char_region = line_bw[y:y+h, x:x+w]
    if char_region.size == 0:
        char_region = np.full((64, 64), 255, dtype=np.uint8)

    # 글자=흰으로 반전 (캔버스 배치용)
    char_inv = 255 - char_region

    # 정사각형 캔버스에 중앙 배치
    size = max(char_inv.shape[0], char_inv.shape[1])
    pad = int(size * 0.15)
    canvas_size = max(size + 2 * pad, 1)
    canvas = np.zeros((canvas_size, canvas_size), dtype=np.uint8)

    oy = (canvas_size - char_inv.shape[0]) // 2
    ox = (canvas_size - char_inv.shape[1]) // 2
    canvas[oy:oy+char_inv.shape[0], ox:ox+char_inv.shape[1]] = char_inv

    resized = cv2.resize(canvas, (64, 64), interpolation=cv2.INTER_AREA)

    # 다시 반전 → 흰배경 + 검은글씨 (학습 데이터 형태)
    resized = 255 - resized

    # 텐서 변환
    tensor = torch.from_numpy(resized).float() / 255.0
    tensor = (tensor - 0.5) / 0.5
    tensor = tensor.unsqueeze(0).unsqueeze(0)

    return tensor, resized


def predict_char(tensor):
    """모델 추론 → 한글 글자 + 신뢰도"""
    with torch.no_grad():
        tensor = tensor.to(device)
        out_cho, out_jung, out_jong = model(tensor)
        cho = out_cho.argmax(1).item()
        jung = out_jung.argmax(1).item()
        jong = out_jong.argmax(1).item()
        conf = min(
            torch.softmax(out_cho, 1).max().item(),
            torch.softmax(out_jung, 1).max().item(),
            torch.softmax(out_jong, 1).max().item(),
        )
    return compose_hangul(cho, jung, jong), conf


def recognize_lines(inner_bw, line_boxes):
    """
    모든 줄에서 글자 분리 → 추론 → 결과 반환
    반환: [(줄텍스트, [(글자, 신뢰도, x, y, w, h), ...]), ...]
    """
    results = []
    for (lx, ly, lw, lh) in line_boxes:
        H, W = inner_bw.shape
        lx1 = max(0, lx)
        ly1 = max(0, ly)
        lx2 = min(W, lx + lw)
        ly2 = min(H, ly + lh)

        line_crop = inner_bw[ly1:ly2, lx1:lx2]
        if line_crop.size == 0:
            continue

        char_boxes = segment_chars_in_line(line_crop, ly2 - ly1)
        line_text = ""
        line_chars = []

        for (cx, cy, cw, ch) in char_boxes:
            tensor, preview = char_to_tensor(line_crop, cx, cy, cw, ch)
            char, conf = predict_char(tensor)
            line_text += char
            # 원본 inner_bw 기준 좌표로 변환
            line_chars.append((char, conf, lx1 + cx, ly1 + cy, cw, ch))

        results.append((line_text, line_chars))

    return results


# ══════════════════════════════════════════
#  한글 텍스트 그리기 (PIL 사용)
# ══════════════════════════════════════════
def put_korean_text(img, text, pos, font_size=20, color=(0, 0, 255)):
    """OpenCV 이미지에 한글 텍스트 그리기"""
    try:
        from PIL import ImageFont, ImageDraw, Image as PILImage

        pil_img = PILImage.fromarray(cv2.cvtColor(img, cv2.COLOR_BGR2RGB))
        draw = ImageDraw.Draw(pil_img)

        font_paths = [
            '/usr/share/fonts/truetype/nanum/NanumGothicBold.ttf',
            '/usr/share/fonts/truetype/nanum/NanumGothic.ttf',
            '/usr/share/fonts/opentype/noto/NotoSansCJK-Bold.ttc',
        ]
        font = None
        for fp in font_paths:
            try:
                font = ImageFont.truetype(fp, font_size)
                break
            except:
                continue

        if font:
            draw.text(pos, text, font=font, fill=color[::-1])  # BGR→RGB

        return cv2.cvtColor(np.array(pil_img), cv2.COLOR_RGB2BGR)
    except ImportError:
        cv2.putText(img, text, pos, cv2.FONT_HERSHEY_SIMPLEX, 0.6, color, 2)
        return img


# =========================
# 창 생성
# =========================
window_names = [
    "Original_Outer_Inner",
    "Line Boxes",
    "Outer Box Only",
    "Text_Tracking_BW"
]

for wn in window_names:
    cv2.namedWindow(wn, cv2.WINDOW_NORMAL)
    cv2.resizeWindow(wn, WIN_W, WIN_H)

# =========================
# 상태 저장
# =========================
prev_outer_pts = None
prev_group_rect = None
prev_line_boxes = []
last_ocr_results = []   # 마지막 추론 결과 저장

# =========================
# 메인 루프
# =========================
print("=" * 50)
print("  A4 손글씨 OCR 테스트")
print("  SPACE: 캡처 + 추론")
print("  B: 이진화 미리보기 토글")
print("  Q: 종료")
print("=" * 50)

show_binary_overlay = False

while True:
    ret, frame = cap.read()
    if not ret:
        print("프레임을 읽을 수 없습니다.")
        break

    frame = cv2.resize(frame, (FRAME_W, FRAME_H))

    vis_original = frame.copy()
    inner_default_w = max(100, int(WARP_W * (1.0 - 2.0 * INNER_MARGIN_X_RATIO)))
    inner_default_h = max(100, int(WARP_H * (1.0 - 2.0 * INNER_MARGIN_Y_RATIO)))

    vis_lines = make_blank_color(inner_default_w, inner_default_h, 255)
    vis_outer = make_blank_color(inner_default_w, inner_default_h, 255)
    vis_text_bw = make_blank_color(
        inner_default_w * TEXT_BW_DISPLAY_SCALE,
        inner_default_h * TEXT_BW_DISPLAY_SCALE, 255
    )

    curr_outer_pts = find_paper_corners(frame)
    outer_pts = smooth_quad(curr_outer_pts, prev_outer_pts)

    # 현재 프레임의 inner_bw, line_boxes 저장용
    current_inner_bw = None
    current_line_boxes = []

    if outer_pts is not None:
        prev_outer_pts = outer_pts.copy()
        warped_outer, M = warp_from_quad(frame, outer_pts, WARP_W, WARP_H)
        M_inv = np.linalg.inv(M)

        mx = int(WARP_W * INNER_MARGIN_X_RATIO)
        my = int(WARP_H * INNER_MARGIN_Y_RATIO)

        inner_rect_warp = np.array([
            [mx, my], [WARP_W - 1 - mx, my],
            [WARP_W - 1 - mx, WARP_H - 1 - my], [mx, WARP_H - 1 - my]
        ], dtype=np.float32)

        inner_pts = map_points_back(inner_rect_warp, M_inv)
        outer_int = np.int32(np.round(outer_pts))
        inner_int = np.int32(np.round(inner_pts))

        cv2.polylines(vis_original, [outer_int], True, (0, 255, 0), 2)
        cv2.polylines(vis_original, [inner_int], True, (0, 0, 255), 2)

        x1, y1 = mx, my
        x2, y2 = WARP_W - 1 - mx, WARP_H - 1 - my
        inner_color = warped_outer[y1:y2 + 1, x1:x2 + 1].copy()

        if inner_color.size > 0:
            inner_bw = binarize_text(inner_color)
            current_inner_bw = inner_bw

            curr_line_boxes = detect_line_boxes_from_bw(inner_bw)
            line_boxes = smooth_boxes_by_order(curr_line_boxes, prev_line_boxes,
                                               alpha=LINE_BOX_ALPHA)
            if line_boxes:
                prev_line_boxes = line_boxes.copy()
            else:
                line_boxes = prev_line_boxes.copy()

            current_line_boxes = line_boxes
            vis_lines = inner_color.copy()
            vis_outer = inner_color.copy()

            for (x, y, w, h) in line_boxes:
                cv2.rectangle(vis_lines, (x, y), (x + w, y + h), (0, 255, 0), 2)

            group_rect = None
            if line_boxes:
                H, W = inner_bw.shape
                ox1 = min([b[0] for b in line_boxes])
                oy1 = min([b[1] for b in line_boxes])
                ox2 = max([b[0] + b[2] for b in line_boxes])
                oy2 = max([b[1] + b[3] for b in line_boxes])
                ox1 = max(0, ox1 - OUTER_PAD)
                oy1 = max(0, oy1 - OUTER_PAD)
                ox2 = min(W - 1, ox2 + OUTER_PAD)
                oy2 = min(H - 1, oy2 + OUTER_PAD)

                group_rect = smooth_rect([ox1, oy1, ox2, oy2],
                                         prev_group_rect, GROUP_RECT_ALPHA)
                prev_group_rect = group_rect.copy()
                gox1, goy1, gox2, goy2 = np.int32(np.round(group_rect))

                cv2.rectangle(vis_lines, (gox1, goy1), (gox2, goy2), (0, 0, 255), 2)
                cv2.rectangle(vis_outer, (gox1, goy1), (gox2, goy2), (0, 0, 255), 2)

                gx1 = max(0, gox1)
                gy1 = max(0, goy1)
                gx2 = min(W - 1, gox2)
                gy2 = min(H - 1, goy2)

                bw_crop = inner_bw[gy1:gy2 + 1, gx1:gx2 + 1].copy()
                vis_text_bw = cv2.cvtColor(bw_crop, cv2.COLOR_GRAY2BGR)

                # 줄 박스 표시
                for (bx, by, bw, bh) in line_boxes:
                    ix1 = bx - gx1
                    iy1 = by - gy1
                    ix2 = bx + bw - gx1
                    iy2 = by + bh - gy1
                    if ix2 < 0 or iy2 < 0:
                        continue
                    if ix1 >= vis_text_bw.shape[1] or iy1 >= vis_text_bw.shape[0]:
                        continue
                    ix1 = max(0, ix1)
                    iy1 = max(0, iy1)
                    ix2 = min(vis_text_bw.shape[1] - 1, ix2)
                    iy2 = min(vis_text_bw.shape[0] - 1, iy2)
                    cv2.rectangle(vis_text_bw, (ix1, iy1), (ix2, iy2), (0, 255, 0), 2)

                # 마지막 OCR 결과 표시
                for line_text, line_chars in last_ocr_results:
                    for (char, conf, cx, cy, cw, ch) in line_chars:
                        # 글자 바운딩 박스
                        dx1 = cx - gx1
                        dy1 = cy - gy1
                        dx2 = cx + cw - gx1
                        dy2 = cy + ch - gy1
                        if dx2 < 0 or dy2 < 0:
                            continue
                        if dx1 >= vis_text_bw.shape[1] or dy1 >= vis_text_bw.shape[0]:
                            continue
                        dx1 = max(0, dx1)
                        dy1 = max(0, dy1)
                        dx2 = min(vis_text_bw.shape[1] - 1, dx2)
                        dy2 = min(vis_text_bw.shape[0] - 1, dy2)
                        color = (255, 0, 0) if conf > 0.7 else (0, 165, 255)
                        cv2.rectangle(vis_text_bw, (dx1, dy1), (dx2, dy2), color, 1)

                cv2.rectangle(vis_text_bw, (0, 0),
                              (vis_text_bw.shape[1] - 1, vis_text_bw.shape[0] - 1),
                              (0, 0, 255), 2)

                vis_text_bw = cv2.resize(vis_text_bw, None,
                                         fx=TEXT_BW_DISPLAY_SCALE,
                                         fy=TEXT_BW_DISPLAY_SCALE,
                                         interpolation=cv2.INTER_NEAREST)

                # OCR 결과 텍스트 오버레이
                if last_ocr_results:
                    text_y = 20
                    for line_text, line_chars in last_ocr_results:
                        avg_conf = np.mean([c[1] for c in line_chars]) if line_chars else 0
                        label = f"{line_text} ({avg_conf:.0%})"
                        vis_text_bw = put_korean_text(vis_text_bw, label,
                                                      (10, text_y), font_size=22,
                                                      color=(255, 0, 0))
                        text_y += 30

            else:
                vis_text_bw = cv2.cvtColor(inner_bw, cv2.COLOR_GRAY2BGR)
                vis_text_bw = cv2.resize(vis_text_bw, None,
                                         fx=TEXT_BW_DISPLAY_SCALE,
                                         fy=TEXT_BW_DISPLAY_SCALE,
                                         interpolation=cv2.INTER_NEAREST)

    # 안내 문구
    cv2.putText(vis_original, "SPACE:OCR / B:Binary / Q:Quit",
                (10, 30), cv2.FONT_HERSHEY_SIMPLEX, 0.7, (0, 255, 0), 2)

    if show_binary_overlay and current_inner_bw is not None:
        bin_small = cv2.resize(current_inner_bw,
                               (vis_lines.shape[1], vis_lines.shape[0]))
        bin_bgr = cv2.cvtColor(bin_small, cv2.COLOR_GRAY2BGR)
        vis_lines = cv2.addWeighted(vis_lines, 0.3, bin_bgr, 0.7, 0)

    cv2.imshow("Original_Outer_Inner", vis_original)
    cv2.imshow("Line Boxes", vis_lines)
    cv2.imshow("Outer Box Only", vis_outer)
    cv2.imshow("Text_Tracking_BW", vis_text_bw)

    key = cv2.waitKey(1) & 0xFF

    if key == ord('b'):
        show_binary_overlay = not show_binary_overlay

    elif key == ord(' '):
        # SPACE: 현재 프레임으로 OCR 추론 실행
        if current_inner_bw is not None and current_line_boxes:
            print("\n추론 중...")
            last_ocr_results = recognize_lines(current_inner_bw, current_line_boxes)

            print("=" * 50)
            print("인식 결과:")
            for i, (line_text, line_chars) in enumerate(last_ocr_results):
                confs = [c[1] for c in line_chars]
                avg_conf = np.mean(confs) if confs else 0
                print(f"  {i+1}줄: {line_text}  (평균 신뢰도: {avg_conf:.1%})")
                for (char, conf, cx, cy, cw, ch) in line_chars:
                    print(f"        '{char}' conf={conf:.1%}  "
                          f"@({cx},{cy},{cw},{ch})")
            print("=" * 50)
        else:
            print("A4 용지가 감지되지 않았습니다.")

    elif key == ord('q') or key == ord('Q'):
        break

cap.release()
cv2.destroyAllWindows()
print("종료")
