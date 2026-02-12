import cv2
import numpy as np
import time

# =====================
# 설정
# =====================
CAM_L = 2
CAM_R = 0
W, H = 1920, 1080

LEFT_YAML   = "calib_2.yaml"
RIGHT_YAML  = "calib_1.yaml"
STEREO_YAML = "stereo_calib.yaml"

DICT_TYPE = cv2.aruco.DICT_4X4_50

# ✅ 체인: 베이스 → 말단(타겟)
CHAIN = [0, 1, 3, 2, 4, 10]   # 10은 물체(타겟) 마커

_joint_angle_latest = {1: None, 3: None, 2: None, 4: None}

# =====================
# 유틸
# =====================
def load_mono(path):
    fs = cv2.FileStorage(path, cv2.FILE_STORAGE_READ)
    K = fs.getNode("camera_matrix").mat()
    d = fs.getNode("dist_coeffs").mat()
    fs.release()
    return K, d

def load_stereo(path):
    fs = cv2.FileStorage(path, cv2.FILE_STORAGE_READ)
    R = fs.getNode("R").mat()
    T = fs.getNode("T").mat()
    fs.release()
    return R, T

def open_cam(idx):
    cap = cv2.VideoCapture(idx, cv2.CAP_V4L2)
    cap.set(cv2.CAP_PROP_FRAME_WIDTH, W)
    cap.set(cv2.CAP_PROP_FRAME_HEIGHT, H)
    cap.set(cv2.CAP_PROP_FPS, 30)
    return cap

def marker_center(corners):
    c = corners.reshape(-1, 2)
    return float(np.mean(c[:, 0])), float(np.mean(c[:, 1]))

def angle_deg_between(a, b):
    na = np.linalg.norm(a)
    nb = np.linalg.norm(b)
    if na < 1e-9 or nb < 1e-9:
        return None
    cosv = float(np.dot(a, b) / (na * nb))
    cosv = max(-1.0, min(1.0, cosv))
    return float(np.degrees(np.arccos(cosv)))

def put_lines(img, x, y, lines, scale=0.6, dy=18):
    for i, s in enumerate(lines):
        cv2.putText(img, s, (x, y + i*dy),
                    cv2.FONT_HERSHEY_SIMPLEX, scale,
                    (0, 255, 0), 2, cv2.LINE_AA)

def joint_angle_from_pts(pts3, a, b, c, min_len=1e-3):
    if a not in pts3 or b not in pts3 or c not in pts3:
        return None
    v1 = pts3[b] - pts3[a]
    v2 = pts3[c] - pts3[b]
    if np.linalg.norm(v1) < min_len or np.linalg.norm(v2) < min_len:
        return None
    return angle_deg_between(v1, v2)

# 관절 정의: (이전, 관절, 다음)
JOINT_TRIPLES = [
    (0, 1, 3),
    (1, 3, 2),
    (3, 2, 4),
    (2, 4, 10),
]

# =====================
# 초기화
# =====================
K1, d1 = load_mono(LEFT_YAML)
K2, d2 = load_mono(RIGHT_YAML)
R, T = load_stereo(STEREO_YAML)

R1, R2, P1, P2, Q, _, _ = cv2.stereoRectify(
    K1, d1, K2, d2, (W, H), R, T,
    flags=cv2.CALIB_ZERO_DISPARITY, alpha=0
)

map1x, map1y = cv2.initUndistortRectifyMap(K1, d1, R1, P1, (W, H), cv2.CV_32FC1)
map2x, map2y = cv2.initUndistortRectifyMap(K2, d2, R2, P2, (W, H), cv2.CV_32FC1)

capL = open_cam(CAM_L)
capR = open_cam(CAM_R)
assert capL.isOpened() and capR.isOpened(), "카메라 열기 실패"

aruco_dict = cv2.aruco.getPredefinedDictionary(DICT_TYPE)
detector = cv2.aruco.ArucoDetector(aruco_dict)

print("=== Chain angles mode ===")
print("Chain:", CHAIN)
print("ESC : quit")

# =====================
# 메인 루프
# =====================
while True:
    retL, fL = capL.read()
    retR, fR = capR.read()
    if not retL or not retR:
        break

    rL = cv2.remap(fL, map1x, map1y, cv2.INTER_LINEAR)
    rR = cv2.remap(fR, map2x, map2y, cv2.INTER_LINEAR)

    gL = cv2.cvtColor(rL, cv2.COLOR_BGR2GRAY)
    gR = cv2.cvtColor(rR, cv2.COLOR_BGR2GRAY)

    cornersL, idsL, _ = detector.detectMarkers(gL)
    cornersR, idsR, _ = detector.detectMarkers(gR)

    mapL, mapR = {}, {}
    if idsL is not None:
        for i, mid in enumerate(idsL.flatten()):
            mapL[int(mid)] = marker_center(cornersL[i])
        cv2.aruco.drawDetectedMarkers(rL, cornersL, idsL)

    if idsR is not None:
        for i, mid in enumerate(idsR.flatten()):
            mapR[int(mid)] = marker_center(cornersR[i])
        cv2.aruco.drawDetectedMarkers(rR, cornersR, idsR)

    # 3D 재구성 (CHAIN에 포함된 마커만)
    pts3 = {}  # mid -> np.array([X,Y,Z])
    for mid in CHAIN:
        if mid not in mapL or mid not in mapR:
            continue
        uL, vL = mapL[mid]
        uR, vR = mapR[mid]
        disp = uL - uR
        if abs(disp) < 1e-6:
            continue

        XYZW = Q @ np.array([uL, vL, disp, 1.0], dtype=np.float64).reshape(4, 1)
        pts3[mid] = (XYZW[:3] / XYZW[3]).flatten()

        # 각 마커의 3D를 왼쪽 화면에 살짝 표시(선택)
        cv2.putText(rL, f"ID{mid}", (int(uL)+8, int(vL)-8),
                    cv2.FONT_HERSHEY_SIMPLEX, 0.6, (255, 255, 0), 2, cv2.LINE_AA)

    # 링크 벡터와 관절각 계산
    # vec[i] = p(chain[i+1]) - p(chain[i])

    lines = ["Partial chain joint angles:"]

    for a, b, c in JOINT_TRIPLES:
        ang = joint_angle_from_pts(pts3, a, b, c)

        # ✅ 최신값 저장 (b가 관절 ID)
        _joint_angle_latest[b] = ang

        if ang is None:
            lines.append(f"at ID{b}: ---")
        else:
            lines.append(f"at ID{b}: {ang:6.2f} deg")

    put_lines(rL, 25, 30, lines, scale=0.65, dy=20)

    vis = np.hstack([rL, rR])
    cv2.imshow("Chain joint angles (Left | Right)", vis)
    key = cv2.waitKey(1) & 0xFF
    if key == 27:
        break

capL.release()
capR.release()
cv2.destroyAllWindows()
