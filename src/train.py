from tensorflow.keras.callbacks import EarlyStopping
from tensorflow.keras.models import Sequential
from tensorflow.keras.layers import Conv2D, MaxPooling2D, Dense, Flatten, Dropout
from data_generator import dataset_from_folders

# 데이터셋 생성 (메모리 절약형)
train_ds = dataset_from_folders(
    '/home/jaehyeok95/PycharmProjects/PythonProject/dataset/train/images/TS_G_A_F_01',
    '/home/jaehyeok95/PycharmProjects/PythonProject/dataset/train/labels/TL_G_A_F_01',
    batch_size=4,
    img_size=(64,64)
)

val_ds = dataset_from_folders(
    '/home/jaehyeok95/PycharmProjects/PythonProject/dataset/val/images/VS_G_A_F_01',
    '/home/jaehyeok95/PycharmProjects/PythonProject/dataset/val/labels/VL_G_A_F_01',
    batch_size=4,
    img_size=(64,64)
)

# 모델 생성
NUM_CLASSES = 18
model = Sequential([
    Conv2D(32, (3,3), padding='same', activation='relu', input_shape=(64,64,3)),
    MaxPooling2D((2,2)),
    Conv2D(32, (3,3), padding='same', activation='relu'),
    MaxPooling2D((2,2)),
    Conv2D(64, (3,3), padding='same', activation='relu'),
    MaxPooling2D((2,2)),
    Flatten(),
    Dense(256, activation='relu'),
    Dropout(0.5),
    Dense(NUM_CLASSES, activation='sigmoid')
])

model.compile(loss='binary_crossentropy', optimizer='adam', metrics=['accuracy'])
early_stopping = EarlyStopping(monitor='val_loss', patience=10, restore_best_weights=True)

# 학습 시작
history = model.fit(
    train_ds,
    epochs=10,
    validation_data=val_ds,
    callbacks=[early_stopping]
)

model.save('road_defect_multi_label.keras')
