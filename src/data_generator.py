from PIL import Image
import numpy as np
import glob, os, json
from sklearn.model_selection import train_test_split
from tqdm import tqdm

# ==============================
# 환경 설정
# ==============================
IMG_DIR = '/home/jaehyeok95/PycharmProjects/PythonProject/dataset/train/images/TS_H_C_V_06'
LABEL_DIR = '/home/jaehyeok95/PycharmProjects/PythonProject/dataset/train/labels/TL_H_C_V_06'
VAL_IMG_DIR = '/home/jaehyeok95/PycharmProjects/PythonProject/dataset/val/images/VS_H_C_V_06'
VAL_LABEL_DIR = '/home/jaehyeok95/PycharmProjects/PythonProject/dataset/val/labels/VL_H_C_V_06'
IMG_SIZE = (64, 64)  # 리사이즈 크기
NUM_CLASSES = 18     # 클래스 개수
SAVE_DIR = '../np_data/H_C_V_06'
os.makedirs(SAVE_DIR, exist_ok=True)

# ==============================
# 데이터 적재 함수
# ==============================
def load_data(img_dir, label_dir, img_size=(64,64)):
    X, Y = [], []
    json_files = glob.glob(os.path.join(label_dir, '*.json'))

    for jpath in tqdm(json_files, desc="Loading dataset"):
        try:
            with open(jpath, 'r', encoding='utf-8') as f:
                data = json.load(f)

            fname = data['images']['file_name']
            img_path = os.path.join(img_dir, fname)
            if not os.path.exists(img_path):
                continue

            # 이미지 로드
            img = Image.open(img_path).convert('RGB').resize(img_size)
            X.append(np.array(img, dtype=np.uint8))

            # 멀티라벨 벡터 생성
            labels = np.zeros(NUM_CLASSES, dtype=np.float32)
            for ann in data.get('annotations', []):
                cid = ann['category_id'] - 1
                if 0 <= cid < NUM_CLASSES:
                    labels[cid] = 1.0
            Y.append(labels)

        except Exception as e:
            print("⚠️ 오류:", jpath, e)
            continue

    X = np.array(X, dtype=np.float32) / 255.0
    Y = np.array(Y, dtype=np.float32)
    return X, Y


# ==============================
# 실행
# ==============================
X_train, Y_train = load_data(IMG_DIR, LABEL_DIR, IMG_SIZE)
X_val, Y_val = load_data(VAL_IMG_DIR, VAL_LABEL_DIR, IMG_SIZE)
print("총 데이터:", X_train.shape, Y_train.shape)

# 학습/검증 분리
# X_train, X_val, Y_train, Y_val = train_test_split(X, Y, test_size=0.1, random_state=42)

# 저장
np.save(os.path.join(SAVE_DIR, 'road_X_train.npy'), X_train)
np.save(os.path.join(SAVE_DIR, 'road_Y_train.npy'), Y_train)
np.save(os.path.join(SAVE_DIR, 'road_X_val.npy'), X_val)
np.save(os.path.join(SAVE_DIR, 'road_Y_val.npy'), Y_val)

print("✅ 변환 완료!")
