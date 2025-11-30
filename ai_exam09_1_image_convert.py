from PIL import  Image
import glob
import  numpy as np
from sklearn.model_selection import  train_test_split

img_dir = '/media/user14/data/PycharmProjects/PythonProject/cat_dog/train/'
categories = ['cat','dog']

# 이미지 사이즈 64 * 64 로 통일
image_w = 64
image_h = 64

# 곱하기 3 : 3색(R,G,B)
pixel = image_w * image_h * 3

X = []
Y = []
files = None

# enumerate() : index 부여. 고양이 사진은 0, 강아지 사진은 1
for idx, category in enumerate(categories):
    # files : 파일 경로 저장변수
    # 1번째 for문 탐색 : '/media/user14/data/PycharmProjects/PythonProject/cat_dog/train/cat*.jpg'
    # 2번째 for문 탐색 : '/media/user14/data/PycharmProjects/PythonProject/cat_dog/train/dog*.jpg'
    # *.jpg : .jpg 앞 * 부분에 어떤 글자가 와도 상관없다는 의미.
    files = glob.glob(img_dir + category + '*.jpg')
    # 색깔 RGB 설정 및 이미지 사이즈 64 * 64 resize
    for i, f in enumerate(files):
        # try / except : 실행(try)하다가 오류(except)가 나면 예외처리 => 오류메시지 떠서 프로그램 종료 안되게 하는 방법
        try:
            img = Image.open(f)
            img = img.convert('RGB')
            data = img.resize((image_w, image_h))
            X.append(data)
            Y.append(idx)
            # 프로그램 정상진행 중인지 확인하는 코드 : 300개마다 확인.
            if i % 300 == 0:
                print(category, ':', f)
        except:
            print(category, i, 'error')

# np.array 형태로 변경
X = np.array(X)
Y = np.array(Y)
# scaling
X = X / 255
# X[0] 형태 : 64 * 64 * 3
print(X[0])
X_train, X_test, Y_train, Y_test = train_test_split(X, Y, test_size=0.1)
# np.save() : 전처리 끝난 이미지 새로 저장.
np.save('./ binary_X_train.npy', X_train)
np.save('./ binary_X_test.npy', X_test)
np.save('./ binary_Y_train.npy', Y_train)
np.save('./ binary_Y_test.npy', Y_test)
