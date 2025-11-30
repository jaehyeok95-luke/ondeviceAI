import numpy as np
from tensorflow.keras.models import Sequential
from tensorflow.keras.layers import Conv2D, MaxPooling2D, Dense, Flatten, Dropout
from tensorflow.keras.callbacks import EarlyStopping
import matplotlib.pyplot as plt

# ==========================
# 데이터 로드
# ==========================
X_train = np.load('../np_data/H_C_V_06/road_X_train.npy', allow_pickle=True)
Y_train = np.load('../np_data/H_C_V_06/road_Y_train.npy', allow_pickle=True)
X_val   = np.load('../np_data/H_C_V_06/road_X_val.npy', allow_pickle=True)
Y_val   = np.load('../np_data/H_C_V_06/road_Y_val.npy', allow_pickle=True)

print(f"훈련 데이터: {X_train.shape}, 라벨: {Y_train.shape}")
print(f"검증 데이터: {X_val.shape}, 라벨: {Y_val.shape}")

NUM_CLASSES = Y_train.shape[1]  # 18

# ==========================
# 모델 생성
# ==========================
model = Sequential([
    Conv2D(32, (3, 3), activation='relu', padding='same', input_shape=(64, 64, 3)),
    MaxPooling2D((2, 2), padding='same'),
    Conv2D(64, (3, 3), activation='relu', padding='same'),
    MaxPooling2D((2, 2), padding='same'),
    Conv2D(128, (3, 3), activation='relu', padding='same'),
    MaxPooling2D((2, 2), padding='same'),
    Dropout(0.25),

    Flatten(),
    Dense(256, activation='relu'),
    Dropout(0.5),
    Dense(512, activation='relu'),
    Dropout(0.5),
    Dense(256, activation='relu'),
    Dropout(0.5),
    # 출력층: 여러 결함을 동시에 예측할 수 있으므로 sigmoid
    Dense(NUM_CLASSES, activation='sigmoid')
])

model.summary()

# ==========================
# 모델 컴파일
# ==========================
model.compile(
    loss='binary_crossentropy',  # 멀티라벨 → binary_crossentropy 사용
    optimizer='adam',
    metrics=['accuracy']
)

# ==========================
# 학습
# ==========================
early_stopping = EarlyStopping(monitor='val_accuracy', patience=10)

history = model.fit(
    X_train, Y_train,
    batch_size=64,
    epochs=200,
    validation_data=(X_val, Y_val),
    callbacks=[early_stopping]
)

# ==========================
# 평가 및 저장
# ==========================
score = model.evaluate(X_val, Y_val)
print('Validation loss:', score[0])
print('Validation accuracy:', score[1])

model.save(f'../results/road_defect_H_C_V_06_{round(score[1], 3)}.h5')
print("✅ 모델 저장 완료")

# ==========================
# 학습 결과 시각화
# ==========================
# plt.figure(figsize=(10,5))
# plt.subplot(1,2,1)
# plt.plot(history.history['loss'], label='Train loss')
# plt.plot(history.history['val_loss'], label='Val loss')
# plt.legend()
# plt.title("Loss Curve")
#
# plt.subplot(1,2,2)
# plt.plot(history.history['accuracy'], label='Train acc')
# plt.plot(history.history['val_accuracy'], label='Val acc')
# plt.legend()
# plt.title("Accuracy Curve")
# plt.show()
