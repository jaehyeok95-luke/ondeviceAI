import cv2
import numpy as np
import os

# =====================
# 설정
# =====================
CAM_L = 2      # 왼쪽 카메라 인덱스
CAM_R = 0      # 오른쪽 카메라 인덱스

FRAME_W, FRAME_H = 1920, 1080

CHESSBOARD = (10, 7)        # 내부 코너
SQUARE_SIZE = 0.020         # 20mm

LEFT_YAML  = "calib_2.yaml"
RIGHT_YAML = "calib_1.yaml"
OUT_YAML   = "stereo_calib.yaml"

# =====================
# 보조 함수
# =====================
def load_calib(path):
    fs = cv2.FileStorage(path, cv2.FILE_STORAGE_READ)
    K = fs.getNode("camera_matrix").mat()
    dist = fs.getNode("dist_coeffs").mat()
    fs.release()
    return K, dist

# =====================
# 준비
# =====================
K_L, dist_L = load_calib(LEFT_YAML)
K_R, dist_R = load_calib(RIGHT_YAML)

criteria = (cv2.TERM_CRITERIA_EPS + cv2.TERM_CRITERIA_MAX_ITER, 30, 1e-6)

objp = np.zeros((CHESSBOARD[0]*CHESSBOARD[1], 3), np.float32)
objp[:, :2] = np.mgrid[0:CHESSBOARD[0], 0:CHESSBOARD[1]].T.reshape(-1, 2)
objp *= SQUARE_SIZE

objpoints = []
imgpoints_L = []
imgpoints_R = []

capL = cv2.VideoCapture(CAM_L)
capR = cv2.VideoCapture(CAM_R)

capL.set(cv2.CAP_PROP_FRAME_WIDTH, FRAME_W)
capL.set(cv2.CAP_PROP_FRAME_HEIGHT, FRAME_H)
capR.set(cv2.CAP_PROP_FRAME_WIDTH, FRAME_W)
capR.set(cv2.CAP_PROP_FRAME_HEIGHT, FRAME_H)

print("✅ 스테레오 캡처 시작")
print("   - 두 화면 모두 코너가 보일 때 's' 저장")
print("   - 'q' 종료")

count = 0

while True:
    retL, frameL = capL.read()
    retR, frameR = capR.read()
    print("retL, retR =", retL, retR)

    if not retL or not retR:
        break

    grayL = cv2.cvtColor(frameL, cv2.COLOR_BGR2GRAY)
    grayR = cv2.cvtColor(frameR, cv2.COLOR_BGR2GRAY)

    foundL, cornersL = cv2.findChessboardCorners(grayL, CHESSBOARD, None)
    foundR, cornersR = cv2.findChessboardCorners(grayR, CHESSBOARD, None)

    visL, visR = frameL.copy(), frameR.copy()

    if foundL:
        cornersL = cv2.cornerSubPix(grayL, cornersL, (11,11), (-1,-1), criteria)
        cv2.drawChessboardCorners(visL, CHESSBOARD, cornersL, foundL)

    if foundR:
        cornersR = cv2.cornerSubPix(grayR, cornersR, (11,11), (-1,-1), criteria)
        cv2.drawChessboardCorners(visR, CHESSBOARD, cornersR, foundR)

    cv2.imshow("Left", visL)
    cv2.imshow("Right", visR)

    key = cv2.waitKey(1) & 0xFF
    if key == ord('s') and foundL and foundR:
        objpoints.append(objp.copy())
        imgpoints_L.append(cornersL)
        imgpoints_R.append(cornersR)
        count += 1
        print(f"Saved pair #{count}")

    if key == ord('q') or key == 27:
        break

capL.release()
capR.release()
cv2.destroyAllWindows()

print("⏳ stereoCalibrate 실행 중...")

flags = cv2.CALIB_FIX_INTRINSIC

ret, _, _, _, _, R, T, E, F = cv2.stereoCalibrate(
    objpoints,
    imgpoints_L,
    imgpoints_R,
    K_L, dist_L,
    K_R, dist_R,
    (FRAME_W, FRAME_H),
    criteria=criteria,
    flags=flags
)

print(f"Stereo RMS error: {ret}")

fs = cv2.FileStorage(OUT_YAML, cv2.FILE_STORAGE_WRITE)
fs.write("R", R)
fs.write("T", T)
fs.write("E", E)
fs.write("F", F)
fs.release()

print(f"✅ Saved: {OUT_YAML}")
