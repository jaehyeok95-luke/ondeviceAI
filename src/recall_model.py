from tensorflow.keras.models import load_model
from tensorflow.keras.callbacks import EarlyStopping
import numpy as np

# 기존에 저장된 모델 불러오기
model = load_model('/home/jaehyeok95/PycharmProjects/PythonProject/src/road_defect_multilabel_0.237.h5')

X_train = np.load('../np_data/H_C_V_06/road_X_train.npy', allow_pickle=True)
Y_train = np.load('../np_data/H_C_V_06/road_Y_train.npy', allow_pickle=True)
X_val   = np.load('../np_data/H_C_V_06/road_X_val.npy', allow_pickle=True)
Y_val   = np.load('../np_data/H_C_V_06/road_Y_val.npy', allow_pickle=True)

model.compile(
    loss='binary_crossentropy',  # 멀티라벨 → binary_crossentropy 사용
    optimizer='adam',
    metrics=['accuracy']
)

early_stopping = EarlyStopping(monitor='val_accuracy', patience=10)

history = model.fit(
    X_train, Y_train,
    epochs=200,
    batch_size=64,
    validation_data=(X_val, Y_val),
    callbacks=[early_stopping]
)

score = model.evaluate(X_val, Y_val)
print('Validation loss:', score[0])
print('Validation accuracy:', score[1])

model.save(f'./road_defect_multilabel_{round(score[1], 3)}.h5')
print("✅ 모델 저장 완료")
