#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
Stereo ArUco 3D + UART -> FPGA
Goal: Move END marker (ID3) close to TARGET marker (ID10) by probing servo axes.

Protocol (PC -> FPGA UART):
  "S,<axis>,<deg>\n"
  axis: 0..5, deg: 0..180

Control strategy:
  For each selected servo axis:
    test +DELTA, measure distance ||p10 - p3||
    test -DELTA, measure distance
    move STEP in the better direction (if improved)
"""

import cv2
import numpy as np
import time
import serial

# =====================
# USER CONFIG
# =====================
CAM_L = 2
CAM_R = 0
W, H = 1920, 1080

LEFT_YAML   = "calib_2.yaml"
RIGHT_YAML  = "calib_1.yaml"
STEREO_YAML = "stereo_calib.yaml"

DICT_TYPE = cv2.aruco.DICT_4X4_50

# --- markers ---
CHAIN = [0, 1, 2, 3, 10]      # 3D reconstruct only these IDs (add more if needed)
END_ID = 3                    # robot end marker
TARGET_ID = 10                # object marker

# --- UART ---
UART_PORT = "/dev/ttyUSB1"
UART_BAUD = 9600

# --- servo axes to use for approaching (start small: 1~2 axes) ---
AXES = [1]                 # <- 너가 실제 영향 큰 축으로 바꿔줘 (예: [1] 또는 [0,1] 등)

SERVO_MIN = 0
SERVO_MAX = 180

# --- control tuning ---
DELTA_DEG = 20                 # probe step
STEP_DEG  = 4                 # apply step
SETTLE_SEC = 5.0              # 모터 느리면 2~3초 추천
CTRL_PERIOD_SEC = 0.2         # decision rate(너무 빠르면 흔들림)

# if markers lost, stop probing for this long
LOST_COOLDOWN_SEC = 0.5

# =====================
# UART TX
# =====================
ser = serial.Serial(UART_PORT, UART_BAUD, timeout=0.1)

# PC-side "assumed" servo commands (we keep what we sent)
servo_cmd = {ax: 90 for ax in AXES}

def clamp_deg(x: float) -> int:
    return max(SERVO_MIN, min(SERVO_MAX, int(round(float(x)))))

def send_to_fpga(axis: int, deg: float):
    d = clamp_deg(deg)
    msg = f"S,{axis},{d}\n"
    ser.write(msg.encode())
    servo_cmd[axis] = d
    print(f"[UART TX] {msg.strip()}")

# =====================
# Vision utils
# =====================
def load_mono(path):
    fs = cv2.FileStorage(path, cv2.FILE_STORAGE_READ)
    K = fs.getNode("camera_matrix").mat()
    d = fs.getNode("dist_coeffs").mat()
    fs.release()
    if K is None or d is None:
        raise RuntimeError(f"mono yaml load failed: {path}")
    return K, d

def load_stereo(path):
    fs = cv2.FileStorage(path, cv2.FILE_STORAGE_READ)
    R = fs.getNode("R").mat()
    T = fs.getNode("T").mat()
    fs.release()
    if R is None or T is None:
        raise RuntimeError(f"stereo yaml load failed: {path}")
    return R, T

def open_cam(idx):
    cap = cv2.VideoCapture(idx, cv2.CAP_V4L2)
    fourcc = cv2.VideoWriter_fourcc(*"MJPG")
    cap.set(cv2.CAP_PROP_FOURCC, fourcc)
    cap.set(cv2.CAP_PROP_FRAME_WIDTH, W)
    cap.set(cv2.CAP_PROP_FRAME_HEIGHT, H)
    cap.set(cv2.CAP_PROP_FPS, 30)
    return cap

def marker_center(corners):
    c = corners.reshape(-1, 2)
    return float(np.mean(c[:, 0])), float(np.mean(c[:, 1]))

def put_lines(img, x, y, lines, scale=0.6, dy=18, color=(0,255,0)):
    for i, s in enumerate(lines):
        cv2.putText(img, s, (x, y + i*dy),
                    cv2.FONT_HERSHEY_SIMPLEX, scale,
                    color, 2, cv2.LINE_AA)

def dist_err(p_end, p_tgt):
    e = p_tgt - p_end
    return float(np.linalg.norm(e)), e

# =====================
# Control: probe-based single-axis improvement
# =====================
latest_pts3 = None
last_good_pts3_t = 0.0
last_loss_t = 0.0

def pts3_has_end_target(pts3) -> bool:
    return (pts3 is not None) and (END_ID in pts3) and (TARGET_ID in pts3)

def get_current_pts3():
    # returns the latest computed pts3 (updated every frame)
    return latest_pts3

def wait_for_pts3(timeout=1.0):
    """Wait until END_ID and TARGET_ID are available, or timeout."""
    t0 = time.time()
    while time.time() - t0 < timeout:
        pts3 = get_current_pts3()
        if pts3_has_end_target(pts3):
            return pts3
        time.sleep(0.01)
    return None

def do_one_axis_search(axis: int):
    """
    Probe +DELTA and -DELTA for this axis,
    then apply STEP towards reducing ||p10 - p3||.
    """
    global last_loss_t

    # quick cooldown if recently lost
    if time.time() - last_loss_t < LOST_COOLDOWN_SEC:
        return False, "cooldown (lost)"

    pts0 = wait_for_pts3(timeout=0.8)
    if pts0 is None:
        last_loss_t = time.time()
        return False, "no markers (base)"

    p_end0 = pts0[END_ID]
    p_tgt0 = pts0[TARGET_ID]
    d0, _ = dist_err(p_end0, p_tgt0)

    base = servo_cmd.get(axis, 90)

    # +DELTA probe
    send_to_fpga(axis, base + DELTA_DEG)
    time.sleep(SETTLE_SEC)
    ptsp = wait_for_pts3(timeout=0.8)
    if ptsp is None:
        # recover to base
        send_to_fpga(axis, base)
        last_loss_t = time.time()
        return False, "lost markers (+)"

    dp, _ = dist_err(ptsp[END_ID], ptsp[TARGET_ID])

    # -DELTA probe
    send_to_fpga(axis, base - DELTA_DEG)
    time.sleep(SETTLE_SEC)
    ptsm = wait_for_pts3(timeout=0.8)
    if ptsm is None:
        send_to_fpga(axis, base)
        last_loss_t = time.time()
        return False, "lost markers (-)"

    dm, _ = dist_err(ptsm[END_ID], ptsm[TARGET_ID])

    # return to base before final move
    send_to_fpga(axis, base)
    time.sleep(SETTLE_SEC)

    best_dir = 0
    best_d = d0
    if dp < best_d:
        best_d = dp
        best_dir = +1
    if dm < best_d:
        best_d = dm
        best_dir = -1

    if best_dir == 0:
        return True, f"axis{axis}: no improve (d0={d0:.3f}, dp={dp:.3f}, dm={dm:.3f})"

    # apply STEP move
    send_to_fpga(axis, base + best_dir * STEP_DEG)
    time.sleep(SETTLE_SEC)
    return True, f"axis{axis}: move {best_dir*STEP_DEG:+d} (d0={d0:.3f} -> {best_d:.3f})"

# =====================
# Init vision
# =====================
K1, d1 = load_mono(LEFT_YAML)
K2, d2 = load_mono(RIGHT_YAML)
R, T = load_stereo(STEREO_YAML)

R1, R2, P1, P2, Q, _, _ = cv2.stereoRectify(
    K1, d1, K2, d2, (W, H), R, T,
    flags=cv2.CALIB_ZERO_DISPARITY,
    alpha=0
)

map1x, map1y = cv2.initUndistortRectifyMap(K1, d1, R1, P1, (W, H), cv2.CV_32FC1)
map2x, map2y = cv2.initUndistortRectifyMap(K2, d2, R2, P2, (W, H), cv2.CV_32FC1)

capL = open_cam(CAM_L)
capR = open_cam(CAM_R)
if not capL.isOpened() or not capR.isOpened():
    raise RuntimeError("camera open failed. check CAM_L/CAM_R index")

aruco_dict = cv2.aruco.getPredefinedDictionary(DICT_TYPE)
params = cv2.aruco.DetectorParameters()
detector = cv2.aruco.ArucoDetector(aruco_dict, params)

# safe neutral once
for ax in AXES:
    send_to_fpga(ax, 90)

print("\n=== RUN ===")
print(f"END_ID={END_ID}, TARGET_ID={TARGET_ID}, AXES={AXES}")
print("Keys: q=quit, p=pause/resume control, r=reset all axes to 90\n")

paused = False
axis_idx = 0
last_ctrl_t = 0.0
last_ctrl_msg = "idle"

# =====================
# Main loop
# =====================
try:
    while True:
        retL, fL = capL.read()
        retR, fR = capR.read()
        if not retL or not retR:
            print("frame read failed")
            break

        rL = cv2.remap(fL, map1x, map1y, cv2.INTER_LINEAR)
        rR = cv2.remap(fR, map2x, map2y, cv2.INTER_LINEAR)

        gL = cv2.cvtColor(rL, cv2.COLOR_BGR2GRAY)
        gR = cv2.cvtColor(rR, cv2.COLOR_BGR2GRAY)

        cornersL, idsL, _ = detector.detectMarkers(gL)
        cornersR, idsR, _ = detector.detectMarkers(gR)

        mapL, mapR = {}, {}
        if idsL is not None:
            cv2.aruco.drawDetectedMarkers(rL, cornersL, idsL)
            for i, mid in enumerate(idsL.flatten()):
                mapL[int(mid)] = marker_center(cornersL[i])

        if idsR is not None:
            cv2.aruco.drawDetectedMarkers(rR, cornersR, idsR)
            for i, mid in enumerate(idsR.flatten()):
                mapR[int(mid)] = marker_center(cornersR[i])

        # 3D reconstruct (only CHAIN ids)
        pts3 = {}
        for mid in CHAIN:
            if mid not in mapL or mid not in mapR:
                continue
            uL, vL = mapL[mid]
            uR, vR = mapR[mid]
            disp = uL - uR
            if abs(disp) < 1e-6:
                continue
            XYZW = Q @ np.array([uL, vL, disp, 1.0], dtype=np.float64).reshape(4, 1)
            X = float(XYZW[0] / XYZW[3])
            Y = float(XYZW[1] / XYZW[3])
            Z = float(XYZW[2] / XYZW[3])
            pts3[mid] = np.array([X, Y, Z], dtype=np.float64)

            cv2.putText(rL, f"ID{mid}", (int(uL)+8, int(vL)-8),
                        cv2.FONT_HERSHEY_SIMPLEX, 0.6, (255,255,0), 2, cv2.LINE_AA)

        latest_pts3 = pts3

        # distance display
        lines = []
        if pts3_has_end_target(pts3):
            d, e = dist_err(pts3[END_ID], pts3[TARGET_ID])
            lines.append(f"dist ||p{TARGET_ID}-p{END_ID}|| = {d:.3f}")
            lines.append(f"e = [{e[0]:+.3f}, {e[1]:+.3f}, {e[2]:+.3f}]")
        else:
            lines.append("dist: --- (missing END/TARGET)")

        # servo display
        lines.append("servo_cmd: " + " ".join([f"a{ax}={servo_cmd.get(ax, '?')}" for ax in AXES]))
        lines.append(f"control: {'PAUSED' if paused else 'RUN'} | last: {last_ctrl_msg}")

        put_lines(rL, 25, 30, lines, scale=0.65, dy=20)

        vis = np.hstack([rL, rR])
        cv2.imshow("Stereo 3D + UART control (Left | Right)", vis)

        key = cv2.waitKey(1) & 0xFF
        if key == ord('q') or key == 27:
            break
        if key == ord('p'):
            paused = not paused
        if key == ord('r'):
            for ax in AXES:
                send_to_fpga(ax, 90)

        # control tick
        now = time.time()
        if (not paused) and (now - last_ctrl_t >= CTRL_PERIOD_SEC) and len(AXES) > 0:
            ax = AXES[axis_idx]
            ok, msg = do_one_axis_search(ax)
            last_ctrl_msg = msg
            print("[CTRL]", msg)
            axis_idx = (axis_idx + 1) % len(AXES)
            last_ctrl_t = now

finally:
    capL.release()
    capR.release()
    cv2.destroyAllWindows()
    ser.close()
    print("bye")
