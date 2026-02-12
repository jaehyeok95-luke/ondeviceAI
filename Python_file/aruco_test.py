import cv2
import numpy as np
import math
import os

# =========================
# 사용자 설정
# =========================
CAMERA_INDEX = 0
FRAME_W, FRAME_H = 1920, 1080

DICT_TYPE = cv2.aruco.DICT_4X4_50
MARKER_LENGTH_M = 0.020  # ✅ 마커 '본체' 한 변 길이(m). 예: 18mm -> 0.018
# 만약 너 PDF가 "여백 포함 25mm 전체"라면, 실제 검은 테두리 기준으로 재서 넣는 게 더 정확함.

CALIB_YAML = "calib_2.yaml"  # 없으면 None으로 두고 실행 가능(단 pose 정확도 떨어짐)

# =========================
# 보조 함수
# =========================
def load_calib(yaml_path: str):
    if not yaml_path or not os.path.exists(yaml_path):
        return None, None

    fs = cv2.FileStorage(yaml_path, cv2.FILE_STORAGE_READ)
    if not fs.isOpened():
        return None, None

    K = fs.getNode("camera_matrix").mat()
    dist = fs.getNode("dist_coeffs").mat()
    fs.release()

    if K is None or dist is None:
        return None, None
    return K, dist


def rvec_to_ypr_deg(rvec: np.ndarray):
    """
    OpenCV rvec -> 회전행렬 -> yaw/pitch/roll(도)
    여기서는 (Z-Y-X) 순서 yaw(Z), pitch(Y), roll(X)로 정의.
    """
    R, _ = cv2.Rodrigues(rvec)

    # ZYX Euler (yaw-pitch-roll)
    sy = math.sqrt(R[0, 0] * R[0, 0] + R[1, 0] * R[1, 0])
    singular = sy < 1e-6

    if not singular:
        roll = math.atan2(R[2, 1], R[2, 2])        # X
        pitch = math.atan2(-R[2, 0], sy)           # Y
        yaw = math.atan2(R[1, 0], R[0, 0])         # Z
    else:
        # Gimbal lock 근처
        roll = math.atan2(-R[1, 2], R[1, 1])
        pitch = math.atan2(-R[2, 0], sy)
        yaw = 0

    return np.degrees(yaw), np.degrees(pitch), np.degrees(roll)


def draw_text(img, x, y, lines, color=(0, 255, 0)):
    dy = 18
    for i, line in enumerate(lines):
        cv2.putText(img, line, (x, y + i * dy), cv2.FONT_HERSHEY_SIMPLEX, 0.5, color, 1, cv2.LINE_AA)


# =========================
# 메인
# =========================
def main():
    K, dist = load_calib(CALIB_YAML)
    if K is None:
        print("⚠️ calib.yaml을 못 찾았거나 읽지 못했습니다.")
        print("   pose(rvec/tvec) 정확도를 위해 카메라 캘리브레이션을 권장합니다.")
        # 최소한의 더미값(동작은 하지만 정확도 낮음)
        # fx, fy는 대충 화면폭 기준으로 잡음
        fx = fy = 800.0
        cx, cy = FRAME_W / 2.0, FRAME_H / 2.0
        K = np.array([[fx, 0, cx],
                      [0, fy, cy],
                      [0,  0,  1]], dtype=np.float64)
        dist = np.zeros((1, 5), dtype=np.float64)

    aruco_dict = cv2.aruco.getPredefinedDictionary(DICT_TYPE)
    params = cv2.aruco.DetectorParameters()
    detector = cv2.aruco.ArucoDetector(aruco_dict, params)

    cap = cv2.VideoCapture(CAMERA_INDEX)
    cap.set(cv2.CAP_PROP_FRAME_WIDTH, FRAME_W)
    cap.set(cv2.CAP_PROP_FRAME_HEIGHT, FRAME_H)

    if not cap.isOpened():
        raise RuntimeError("❌ 카메라를 열 수 없습니다. CAMERA_INDEX를 바꿔보세요.")

    print("✅ 실행 중: ESC로 종료")
    print(f"   MARKER_LENGTH_M = {MARKER_LENGTH_M} m")

    while True:
        ret, frame = cap.read()
        if not ret:
            break

        gray = cv2.cvtColor(frame, cv2.COLOR_BGR2GRAY)
        corners, ids, _ = detector.detectMarkers(gray)

        if ids is not None and len(ids) > 0:
            cv2.aruco.drawDetectedMarkers(frame, corners, ids)

            # pose 추정
            rvecs, tvecs, _objPoints = cv2.aruco.estimatePoseSingleMarkers(
                corners, MARKER_LENGTH_M, K, dist
            )

            # 각 마커별 출력
            for i, marker_id in enumerate(ids.flatten()):
                rvec = rvecs[i].reshape(3, 1)
                tvec = tvecs[i].reshape(3, 1)

                yaw, pitch, roll = rvec_to_ypr_deg(rvec)

                # 마커 중심 좌표(화면 표시 위치)
                c = corners[i][0]
                cx = int(np.mean(c[:, 0]))
                cy = int(np.mean(c[:, 1]))

                # 화면 텍스트
                lines = [
                    f"ID {int(marker_id)}",
                    f"Yaw(Z): {yaw: .1f} deg",
                    f"Pitch(Y): {pitch: .1f} deg",
                    f"Roll(X): {roll: .1f} deg",
                    f"tvec: [{tvec[0,0]:.3f}, {tvec[1,0]:.3f}, {tvec[2,0]:.3f}] m",
                ]
                draw_text(frame, cx + 10, cy - 10, lines)

                # 축(axis) 그리기 (길이는 마커 길이의 0.5배)
                cv2.drawFrameAxes(frame, K, dist, rvec, tvec, MARKER_LENGTH_M * 0.5)

        cv2.imshow("ArUco Pose (Yaw/Pitch/Roll)", frame)
        key = cv2.waitKey(1) & 0xFF
        if key == 27:  # ESC
            break

    cap.release()
    cv2.destroyAllWindows()


if __name__ == "__main__":
    main()
