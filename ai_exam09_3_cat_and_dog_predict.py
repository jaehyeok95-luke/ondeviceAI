from PIL import Image
from tensorflow.keras.models import load_model
import numpy as np
import glob

model = load_model('./cat_and_dog_binary_classification_0.8592000007629395.h5')
model.summary()
categories = ['cat','dog']

img_dir = '/media/user14/data/PycharmProjects/PythonProject/cat_dog/train/'
image_w = 64
image_h = 64
dog_files = glob.glob(img_dir + 'dog*.jpg')
dog_sample = np.random.randint(len(dog_files))
dog_sample_path = dog_files[dog_sample]

cat_files = glob.glob(img_dir + 'cat*.jpg')
cat_sample = np.random.randint(len(cat_files))
cat_sample_path = cat_files[cat_sample]

print(dog_sample_path)
print(cat_sample_path)

try:
    # .jpg 이미지를 직접 지정해서 테스트하기.
    img = Image.open('/home/user14/Downloads/golden-retriever-tongue-out.jpg')
    img.show()
    img = img.convert('RGB')
    img = img.resize((image_w, image_h))
    data = np.asarray(img)
    data = data / 255
    dog_data = data.reshape(1, 64, 64, 3)

    img = Image.open('/home/user14/Downloads/Cat_August_2010-4.jpg')
    img.show()
    img = img.convert('RGB')
    img = img.resize((image_w, image_h))
    data = np.asarray(img)
    data = data / 255
    cat_data = data.reshape(1, 64, 64, 3)

except:
    print('error')

print('dog data : ', categories[int(model.predict(dog_data).round()[0][0])])
print('cat data : ', categories[int(model.predict(cat_data).round()[0][0])])
