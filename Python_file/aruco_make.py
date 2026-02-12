import cv2
import numpy as np

# ===== 설정 =====
DICT_TYPE = cv2.aruco.DICT_4X4_50
MARKER_ID = 10
MARKER_SIZE_PX = 250  # 출력 이미지 크기 (픽셀)

# ===== 마커 생성 =====
aruco_dict = cv2.aruco.getPredefinedDictionary(DICT_TYPE)
marker_img = cv2.aruco.generateImageMarker(
    aruco_dict,
    MARKER_ID,
    MARKER_SIZE_PX
)

# ===== 저장 =====
cv2.imwrite(f"aruco_id_{MARKER_ID}.png", marker_img)

print(f"ArUco marker saved: aruco_id_{MARKER_ID}.png")
