import numpy as np
import matplotlib.pyplot as plt
from keras.models import *
from keras.layers import *
from tensorflow.python.layers.core import dense

x_train = np.load('./dataset/title_x_train_wordsize.npy', allow_pickle=True)
x_test = np.load('./dataset/title_x_test_wordsize.npy', allow_pickle=True)
y_train = np.load('./dataset/title_y_train_wordsize.npy', allow_pickle=True)
y_test = np.load('./dataset/title_y_test_wordsize.npy', allow_pickle=True)

model = Sequential()
model.add(Embedding(12026, 300))    # Embedding-layer : 토큰을 벡터화(하나의 토큰이 하나의 차원이 됨)
                                                       # 차원의 축소화 : 차원이 너무 많으면 정보가 희미해짐. 이와 같은 차원의 저주를 방지하기 위해 정보의 소실을 감수하고 300으로 차원을 축소
model.build(input_shape=(None, 25))
model.add(Conv1D(64, 3, padding='same', activation='relu'))
model.add(MaxPooling1D(1))
model.add(LSTM(64, activation='tanh', return_sequences=True))
model.add(Dropout(0.2))
model.add(LSTM(64, activation='tanh', return_sequences=True))
model.add(Dropout(0.2))
model.add(LSTM(64, activation='tanh'))
model.add(Dropout(0.2))
model.add(Flatten())
model.add(Dense(128, activation='relu'))
model.add(Dense(6, activation='softmax'))
model.summary()

model.compile(loss='categorical_crossentropy', optimizer='adam', metrics=['accuracy'])
fit_hist = model.fit(x_train, y_train, epochs=10, batch_size=128, validation_split=0.2)
score = model.evaluate(x_test, y_test, verbose=0)
print(score[1])
model.save('news_section_classification_model_{}.keras'.format(score[1]))
plt.plot(fit_hist.history['val_accuracy'], label='val_accuracy')
plt.plot(fit_hist.history['accuracy'], label='accuracy')
plt.legend(loc='lower right')
plt.show()