import cv2
import numpy as np

# =====================
# 설정
# =====================
CAM_L = 2
CAM_R = 0
W, H = 1920, 1080  # 스테레오 캘리브레이션/검증에 사용한 해상도와 동일하게

LEFT_YAML   = "calib_2.yaml"
RIGHT_YAML  = "calib_1.yaml"
STEREO_YAML = "stereo_calib.yaml"

DICT_TYPE = cv2.aruco.DICT_4X4_50

# =====================
# 로드 함수
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

def draw_text(img, x, y, lines):
    dy = 18
    for i, line in enumerate(lines):
        cv2.putText(img, line, (x, y + i*dy), cv2.FONT_HERSHEY_SIMPLEX,
                    0.5, (255, 255, 0), 1, cv2.LINE_AA)

def marker_center(corners_1marker):
    # corners_1marker shape: (1, 4, 2) or (4,2)
    c = corners_1marker.reshape(-1, 2)
    return float(np.mean(c[:, 0])), float(np.mean(c[:, 1]))

# =====================
# 메인
# =====================
K1, d1 = load_mono(LEFT_YAML)
K2, d2 = load_mono(RIGHT_YAML)
R, T = load_stereo(STEREO_YAML)

# Rectify 파라미터
R1, R2, P1, P2, Q, _, _ = cv2.stereoRectify(
    K1, d1, K2, d2, (W, H), R, T,
    flags=cv2.CALIB_ZERO_DISPARITY,
    alpha=0
)

map1x, map1y = cv2.initUndistortRectifyMap(K1, d1, R1, P1, (W, H), cv2.CV_32FC1)
map2x, map2y = cv2.initUndistortRectifyMap(K2, d2, R2, P2, (W, H), cv2.CV_32FC1)

# 카메라 열기 (USB 2대 안정화: MJPG 권장)
def open_cam(idx):
    cap = cv2.VideoCapture(idx, cv2.CAP_V4L2)
    fourcc = cv2.VideoWriter_fourcc(*"MJPG")
    cap.set(cv2.CAP_PROP_FOURCC, fourcc)
    cap.set(cv2.CAP_PROP_FRAME_WIDTH, W)
    cap.set(cv2.CAP_PROP_FRAME_HEIGHT, H)
    cap.set(cv2.CAP_PROP_FPS, 30)
    return cap

capL = open_cam(CAM_L)
capR = open_cam(CAM_R)
if not capL.isOpened() or not capR.isOpened():
    raise RuntimeError("카메라 열기 실패: 인덱스/장치 확인 필요")

aruco_dict = cv2.aruco.getPredefinedDictionary(DICT_TYPE)
params = cv2.aruco.DetectorParameters()
detector = cv2.aruco.ArucoDetector(aruco_dict, params)

print("✅ Rectified ArUco 3D: ESC로 종료")

while True:
    retL, fL = capL.read()
    retR, fR = capR.read()
    if not retL or not retR:
        print("프레임 읽기 실패")
        break

    # Rectify
    rL = cv2.remap(fL, map1x, map1y, cv2.INTER_LINEAR)
    rR = cv2.remap(fR, map2x, map2y, cv2.INTER_LINEAR)

    gL = cv2.cvtColor(rL, cv2.COLOR_BGR2GRAY)
    gR = cv2.cvtColor(rR, cv2.COLOR_BGR2GRAY)

    cornersL, idsL, _ = detector.detectMarkers(gL)
    cornersR, idsR, _ = detector.detectMarkers(gR)

    # 시각화
    if idsL is not None:
        cv2.aruco.drawDetectedMarkers(rL, cornersL, idsL)
    if idsR is not None:
        cv2.aruco.drawDetectedMarkers(rR, cornersR, idsR)

    # ID -> corners 매핑
    mapL = {}
    if idsL is not None:
        for i, mid in enumerate(idsL.flatten()):
            u, v = marker_center(cornersL[i])
            mapL[int(mid)] = (u, v, cornersL[i])

    mapR = {}
    if idsR is not None:
        for i, mid in enumerate(idsR.flatten()):
            u, v = marker_center(cornersR[i])
            mapR[int(mid)] = (u, v, cornersR[i])

    common_ids = sorted(set(mapL.keys()) & set(mapR.keys()))

    # 3D 계산 (Q 이용)
    for mid in common_ids:
        uL, vL, _ = mapL[mid]
        uR, vR, _ = mapR[mid]

        disp = uL - uR
        if abs(disp) < 1e-6:
            continue

        # [X, Y, Z, W] = Q * [u, v, d, 1]
        vec = np.array([uL, vL, disp, 1.0], dtype=np.float64).reshape(4, 1)
        XYZW = Q @ vec
        X = float(XYZW[0] / XYZW[3])
        Y = float(XYZW[1] / XYZW[3])
        Z = float(XYZW[2] / XYZW[3])

        # 화면 표시(왼쪽 화면에)
        x0, y0 = int(uL), int(vL)
        lines = [
            f"ID {mid}",
            f"X: {X:+.3f} m",
            f"Y: {Y:+.3f} m",
            f"Z: {Z:+.3f} m",
            f"disp: {disp:+.1f}px",
        ]
        draw_text(rL, x0 + 10, y0 - 10, lines)

    # 좌|우 합쳐서 보여주기 + 수평선
    vis = np.hstack([rL, rR])
    for y in range(0, H, 80):
        cv2.line(vis, (0, y), (2*W, y), (0, 255, 0), 1)

    cv2.imshow("Rectified ArUco (Left | Right) + 3D on Left", vis)

    if (cv2.waitKey(1) & 0xFF) == 27:
        break

capL.release(); capR.release()
cv2.destroyAllWindows()
