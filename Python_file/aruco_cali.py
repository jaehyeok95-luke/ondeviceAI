import cv2
import numpy as np
import os

# ===== 설정 =====
CAMERA_INDEX = 2
FRAME_W, FRAME_H = 1920, 1080

CHESSBOARD = (10, 7)        # 내부 코너 수 (가로, 세로)
SQUARE_SIZE_M = 0.020      # 한 칸 크기 (미터) 25mm = 0.025

OUT_YAML = "calib_2.yaml"
MIN_SAMPLES = 25           # 최소 캡처 장수

# ===== 준비 =====
criteria = (cv2.TERM_CRITERIA_EPS + cv2.TERM_CRITERIA_MAX_ITER, 30, 1e-6)

objp = np.zeros((CHESSBOARD[0]*CHESSBOARD[1], 3), np.float32)
objp[:, :2] = np.mgrid[0:CHESSBOARD[0], 0:CHESSBOARD[1]].T.reshape(-1, 2)
objp *= SQUARE_SIZE_M

objpoints = []  # 3D 점
imgpoints = []  # 2D 점

cap = cv2.VideoCapture(CAMERA_INDEX)
cap.set(cv2.CAP_PROP_FRAME_WIDTH, FRAME_W)
cap.set(cv2.CAP_PROP_FRAME_HEIGHT, FRAME_H)

if not cap.isOpened():
    raise RuntimeError("❌ 카메라를 열 수 없습니다.")

count = 0
print("✅ 캘리브레이션 캡처 시작")
print("   - 체커보드가 보이면 코너가 표시됩니다.")
print("   - 's' 눌러 샘플 저장, 'q' 종료")
print(f"   - 최소 {MIN_SAMPLES}장 권장")

while True:
    ret, frame = cap.read()
    if not ret:
        break

    gray = cv2.cvtColor(frame, cv2.COLOR_BGR2GRAY)

    found, corners = cv2.findChessboardCorners(gray, CHESSBOARD, None)

    vis = frame.copy()

    if found:
        corners2 = cv2.cornerSubPix(gray, corners, (11, 11), (-1, -1), criteria)
        cv2.drawChessboardCorners(vis, CHESSBOARD, corners2, found)

        cv2.putText(vis, "Corners found - press 's' to save", (20, 30),
                    cv2.FONT_HERSHEY_SIMPLEX, 0.7, (0, 255, 0), 2)
    else:
        cv2.putText(vis, "No corners - adjust view/lighting", (20, 30),
                    cv2.FONT_HERSHEY_SIMPLEX, 0.7, (0, 0, 255), 2)

    cv2.putText(vis, f"Saved samples: {count}", (20, 60),
                cv2.FONT_HERSHEY_SIMPLEX, 0.7, (255, 255, 0), 2)

    cv2.imshow("Calibration Capture", vis)
    key = cv2.waitKey(1) & 0xFF

    if key == ord('s') and found:
        objpoints.append(objp.copy())
        imgpoints.append(corners2)
        count += 1
        print(f"Saved sample #{count}")

    if key == ord('q') or key == 27:
        break

cap.release()
cv2.destroyAllWindows()

if count < 10:
    raise RuntimeError("❌ 샘플이 너무 적습니다. 최소 10장 이상 모으세요.")

# ===== 캘리브레이션 계산 =====
print("⏳ calibrateCamera 실행 중...")
ret, K, dist, rvecs, tvecs = cv2.calibrateCamera(objpoints, imgpoints, (FRAME_W, FRAME_H), None, None)

# reprojection error 계산
total_error = 0
for i in range(len(objpoints)):
    imgpoints2, _ = cv2.projectPoints(objpoints[i], rvecs[i], tvecs[i], K, dist)
    error = cv2.norm(imgpoints[i], imgpoints2, cv2.NORM_L2) / len(imgpoints2)
    total_error += error
mean_error = total_error / len(objpoints)

print("✅ 완료")
print("K=\n", K)
print("dist=\n", dist)
print(f"Mean reprojection error: {mean_error:.4f} px")

# ===== 저장 =====
fs = cv2.FileStorage(OUT_YAML, cv2.FILE_STORAGE_WRITE)
fs.write("camera_matrix", K)
fs.write("dist_coeffs", dist)
fs.write("reprojection_error_px", float(mean_error))
fs.release()

print(f"✅ Saved: {OUT_YAML}")
