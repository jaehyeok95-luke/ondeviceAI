from PIL import Image
from tensorflow.keras.models import load_model
import numpy as np
import glob

# 모델 불러오기
model = load_model('/home/jaehyeok95/PycharmProjects/PythonProject/results/road_defect_G_A_F_05_0.967.h5')

# 클래스 이름 정의
CLASSES = [
    "아스팔트 도로파임", "콘크리트 도로파임", "종방향균열", "횡방향균열", "거북등균열",
    "줄눈부파손", "십자파손", "절삭보수부파손", "긴급보수부파손", "응력완화줄눈 화살표",
    "응력완화줄눈 오각형", "응력완화줄눈 삼각형", "응력완화줄눈", "신축이음부",
    "차선", "규제봉", "맨홀", "배수로"
]

# 이미지 폴더
img_dir = '/media/jaehyeok95/새 볼륨/060.고해상도 도로노면 이미지 데이터/3.개방데이터/1.데이터/Validation/01.원천데이터/VS_G_A_F_05'
# image_files = glob.glob(img_dir + '/*.jpg')
image_files = glob.glob(img_dir + '/*.jpg')

if len(image_files) == 0:
    raise FileNotFoundError(f"이미지를 찾을 수 없습니다: {img_dir}")

# 샘플 선택
sample_path = np.random.choice(image_files)
print(f"선택된 이미지: {sample_path}")

# 이미지 로드 및 전처리
img = Image.open(sample_path).convert('RGB')
img = img.resize((64, 64))
data = np.asarray(img) / 255.0
data = data.reshape(1, 64, 64, 3)

# 모델 예측
pred = model.predict(data)[0]

# 설정값
THRESHOLD = 0.5  # 확률 0.5 이상만 표시
TOP_K = 5  # 상위 5개만 표시 (선택사항)

# 확률이 높은 순으로 정렬
sorted_indices = np.argsort(pred)[::-1]
top_indices = [i for i in sorted_indices if pred[i] >= THRESHOLD][:TOP_K]

# 출력
print("\n[결함 예측 결과]")
for i in top_indices:
    print(f" - {CLASSES[i]} : {pred[i]:.3f}")

# 만약 아무 클래스도 threshold를 넘지 못하면
if not top_indices:
    print("⚠️ 확신 있는 결함이 탐지되지 않았습니다.")
