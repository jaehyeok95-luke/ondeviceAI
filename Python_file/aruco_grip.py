import cv2
import numpy as np
import time
import json
import serial
import os

# =========================
# 사용자 설정
# =========================
CAMERA_INDEX = 0
FRAME_W, FRAME_H = 1920, 1080

DICT_TYPE = cv2.aruco.DICT_4X4_50

# ✅ 매우 중요: 실제 마커 한 변 길이(m)
MARKER_LENGTH_M = 0.020  # 예: 18mm

CALIB_YAML = "calib_2.yaml"   # camera_matrix, dist_coeffs

# 거리 측정 대상
ID_GRIPPER = 4
ID_TARGET  = 10

# UART
UART_PORT = "/dev/ttyUSB1"
UART_BAUD = 9600

# 저장 파일
SAVE_PATH = "grip_distance_samples.json"

# =========================
# 유틸
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
    return K, dist

def draw_lines(img, x, y, lines, scale=0.55, dy=18, color=(0,255,0)):
    for i, s in enumerate(lines):
        cv2.putText(img, s, (x, y + i*dy),
                    cv2.FONT_HERSHEY_SIMPLEX, scale, color, 2, cv2.LINE_AA)

def clamp(v, lo, hi):
    return max(lo, min(hi, v))

# =========================
# UART 송신
# =========================
ser = serial.Serial(UART_PORT, UART_BAUD, timeout=0.1)

def uart_send(axis: int, deg: int):
    axis = int(axis)
    deg = int(deg)
    deg = clamp(deg, 0, 180)
    msg = f"S,{axis},{deg}\n"
    ser.write(msg.encode())
    print("[UART TX]", msg.strip())

# =========================
# 메인
# =========================
def main():
    K, dist = load_calib(CALIB_YAML)
    if K is None:
        raise RuntimeError("calib.yaml을 못 읽었습니다. 단안 pose 정확도를 위해 필요합니다.")

    aruco_dict = cv2.aruco.getPredefinedDictionary(DICT_TYPE)
    params = cv2.aruco.DetectorParameters()
    detector = cv2.aruco.ArucoDetector(aruco_dict, params)

    cap = cv2.VideoCapture(CAMERA_INDEX, cv2.CAP_V4L2)
    cap.set(cv2.CAP_PROP_FRAME_WIDTH, FRAME_W)
    cap.set(cv2.CAP_PROP_FRAME_HEIGHT, FRAME_H)
    cap.set(cv2.CAP_PROP_FPS, 30)
    if not cap.isOpened():
        raise RuntimeError("카메라 열기 실패")

    # ====== 디버깅 조작 상태 ======
    axis_sel = 4       # 기본 선택 축
    deg_sel  = 90      # 기본 각도
    step     = 1       # 기본 스텝

    # 거리 샘플 저장
    samples = []  # {"t":..., "axis":..., "deg":..., "d_m":...}

    print("=== Servo Manual Debug + Grip Distance Measure ===")
    print("키 안내:")
    print("  [0-5] : 축 선택")
    print("  w/s   : 각도 + / -")
    print("  e/d   : 스텝 + / - (1~30)")
    print("  SPACE : 현재 축/각도를 UART 전송")
    print("  r     : (reset) 선택 축을 90도로 전송")
    print("  g     : (grip mark) 현재 d(ID3-ID10)를 샘플로 저장")
    print("  p     : 저장된 샘플 json으로 저장")
    print("  ESC   : 종료")

    last_d = None

    while True:
        ret, frame = cap.read()
        if not ret:
            break

        gray = cv2.cvtColor(frame, cv2.COLOR_BGR2GRAY)
        corners, ids, _ = detector.detectMarkers(gray)

        tvec_map = {}  # id -> tvec(3,)

        if ids is not None and len(ids) > 0:
            cv2.aruco.drawDetectedMarkers(frame, corners, ids)

            rvecs, tvecs, _obj = cv2.aruco.estimatePoseSingleMarkers(
                corners, MARKER_LENGTH_M, K, dist
            )

            for i, mid in enumerate(ids.flatten()):
                rvec = rvecs[i].reshape(3, 1)
                tvec = tvecs[i].reshape(3, 1)
                tvec_map[int(mid)] = tvec.flatten()

                # 축 그리기
                cv2.drawFrameAxes(frame, K, dist, rvec, tvec, MARKER_LENGTH_M * 0.5)

        # 거리 계산 (둘 다 보이면)
        d_m = None
        if ID_GRIPPER in tvec_map and ID_TARGET in tvec_map:
            d_m = float(np.linalg.norm(tvec_map[ID_GRIPPER] - tvec_map[ID_TARGET]))
            last_d = d_m

        # HUD
        hud = []
        hud.append(f"Selected Axis: {axis_sel}")
        hud.append(f"Selected Deg : {deg_sel} (step={step})")
        if last_d is None:
            hud.append(f"d(ID{ID_GRIPPER}-ID{ID_TARGET}) : ---")
        else:
            hud.append(f"d(ID{ID_GRIPPER}-ID{ID_TARGET}) : {last_d:.4f} m")
        hud.append("SPACE=send  g=save d  p=save json")

        draw_lines(frame, 20, 30, hud, scale=0.65, dy=22)

        cv2.imshow("Manual Servo + Distance", frame)
        key = cv2.waitKey(1) & 0xFF

        # 종료
        if key == 27:
            break

        # 축 선택 (0~5)
        if key in [ord('0'), ord('1'), ord('2'), ord('3'), ord('4'), ord('5')]:
            axis_sel = int(chr(key))

        # 각도 조절
        if key == ord('w'):
            deg_sel = clamp(deg_sel + step, 0, 180)
        if key == ord('s'):
            deg_sel = clamp(deg_sel - step, 0, 180)

        # 스텝 조절
        if key == ord('e'):
            step = clamp(step + 1, 1, 30)
        if key == ord('d'):
            step = clamp(step - 1, 1, 30)

        # 전송
        if key == ord(' '):
            uart_send(axis_sel, deg_sel)

        # 선택 축 90도 리셋
        if key == ord('r'):
            deg_sel = 90
            uart_send(axis_sel, deg_sel)

        # 그립 거리 저장
        if key == ord('g'):
            if last_d is None:
                print("[SAVE] cannot measure d: ID3 or ID10 not visible")
            else:
                rec = {
                    "t": time.time(),
                    "axis": axis_sel,
                    "deg": deg_sel,
                    "d_m": float(last_d)
                }
                samples.append(rec)
                print(f"[SAVE] d={last_d:.4f} m saved (n={len(samples)})")

        # json 저장
        if key == ord('p'):
            out = {
                "marker_length_m": MARKER_LENGTH_M,
                "id_gripper": ID_GRIPPER,
                "id_target": ID_TARGET,
                "samples": samples
            }
            with open(SAVE_PATH, "w") as f:
                json.dump(out, f, indent=2)
            print(f"[FILE] saved: {SAVE_PATH} (n={len(samples)})")

    cap.release()
    cv2.destroyAllWindows()
    ser.close()

if __name__ == "__main__":
    main()
