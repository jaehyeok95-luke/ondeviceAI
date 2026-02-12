import cv2
import numpy as np

CAM_L, CAM_R = 2, 0
W, H = 1920, 1080
CHESSBOARD = (10, 7)

LEFT_YAML  = "calib_2.yaml"
RIGHT_YAML = "calib_1.yaml"
STEREO_YAML = "stereo_calib.yaml"

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

K1, d1 = load_mono(LEFT_YAML)
K2, d2 = load_mono(RIGHT_YAML)
R, T = load_stereo(STEREO_YAML)

R1, R2, P1, P2, Q, _, _ = cv2.stereoRectify(
    K1, d1, K2, d2, (W, H), R, T,
    flags=cv2.CALIB_ZERO_DISPARITY, alpha=0
)

map1x, map1y = cv2.initUndistortRectifyMap(K1, d1, R1, P1, (W, H), cv2.CV_32FC1)
map2x, map2y = cv2.initUndistortRectifyMap(K2, d2, R2, P2, (W, H), cv2.CV_32FC1)

capL = cv2.VideoCapture(CAM_L, cv2.CAP_V4L2)
capR = cv2.VideoCapture(CAM_R, cv2.CAP_V4L2)

fourcc = cv2.VideoWriter_fourcc(*"MJPG")
for cap in (capL, capR):
    cap.set(cv2.CAP_PROP_FOURCC, fourcc)
    cap.set(cv2.CAP_PROP_FRAME_WIDTH, W)
    cap.set(cv2.CAP_PROP_FRAME_HEIGHT, H)

criteria = (cv2.TERM_CRITERIA_EPS + cv2.TERM_CRITERIA_MAX_ITER, 30, 1e-6)

while True:
    retL, fL = capL.read()
    retR, fR = capR.read()
    if not retL or not retR:
        break

    rL = cv2.remap(fL, map1x, map1y, cv2.INTER_LINEAR)
    rR = cv2.remap(fR, map2x, map2y, cv2.INTER_LINEAR)

    gL = cv2.cvtColor(rL, cv2.COLOR_BGR2GRAY)
    gR = cv2.cvtColor(rR, cv2.COLOR_BGR2GRAY)

    foundL, cL = cv2.findChessboardCorners(gL, CHESSBOARD)
    foundR, cR = cv2.findChessboardCorners(gR, CHESSBOARD)

    vis = np.hstack([rL.copy(), rR.copy()])

    # 수평선
    for y in range(0, H, 60):
        cv2.line(vis, (0, y), (2*W, y), (0, 255, 0), 1)

    if foundL and foundR:
        cL = cv2.cornerSubPix(gL, cL, (11,11), (-1,-1), criteria)
        cR = cv2.cornerSubPix(gR, cR, (11,11), (-1,-1), criteria)

        # 코너 점 찍기(좌/우)
        for p in cL:
            x, y = p.ravel()
            cv2.circle(vis, (int(x), int(y)), 3, (0,0,255), -1)

        for p in cR:
            x, y = p.ravel()
            cv2.circle(vis, (int(x)+W, int(y)), 3, (0,0,255), -1)

        # y 차이 평균 출력(픽셀)
        dy = np.mean(np.abs(cL[:,0,1] - cR[:,0,1]))
        cv2.putText(vis, f"mean |dy| = {dy:.2f} px", (20, 40),
                    cv2.FONT_HERSHEY_SIMPLEX, 1.0, (255,255,0), 2)

        # 경험적 기준: dy가 1~2px 정도면 매우 좋고, 3~5px도 실사용 가능
    else:
        cv2.putText(vis, "Show checkerboard to both cams", (20, 40),
                    cv2.FONT_HERSHEY_SIMPLEX, 1.0, (0,0,255), 2)

    cv2.imshow("Rectified check (Left | Right)", vis)
    if (cv2.waitKey(1) & 0xFF) == 27:
        break

capL.release(); capR.release()
cv2.destroyAllWindows()
