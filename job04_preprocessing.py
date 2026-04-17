import pickle
import pandas as pd
import numpy as np
from sklearn.model_selection import train_test_split
from konlpy.tag import Okt, Komoran
from sklearn.preprocessing import LabelEncoder, OneHotEncoder
from keras.utils import to_categorical
from tensorflow.keras.preprocessing.sequence import pad_sequences
from tensorflow.keras.preprocessing.text import Tokenizer
import re

df = pd.read_csv('./crawling_data/news_titles_20260331.csv')
df.info()
print(df.head())

X = df.title
Y = df.category

encoder = LabelEncoder()
label_y = encoder.fit_transform(Y)
print(label_y[:5])
print(encoder.inverse_transform(label_y[:5])) # label 값이 가리키는 category 확인하기
with open('./encoder.pkl', 'wb') as f:
    pickle.dump(encoder, f)

onehot_y = to_categorical(label_y)
print(onehot_y[:5])

okt = Okt()
okt_x = okt.morphs(X[0], stem=True)  # morphs : 어절 단위 분리 # stem=True : 단어 원형으로 표현
print(okt_x)

# komoran = Komoran()
# komoran_x = komoran.morphs(X[0])
# print(komoran_x)
# komoran_x = komoran.pos(X[0])   # pos : 형태소 분리하고 종류 표시
# print(komoran_x)

X = list(X)
for i in range(len(X)):
    X[i] = re.sub('[^가-힣]',' ', X[i])   # 한글만 남기기
    X[i] = okt.morphs(X[i], stem=True)
    if i % 1000 == 0:
        print(i)
print(X[:10])
for idx, sentence in enumerate(X):
    words = []
    for word in sentence:
        if len(word) > 1:
            words.append(word)
    X[idx] = ' '.join(words)
print(X[:10])

tokenizer = Tokenizer()
tokenizer.fit_on_texts(X)
tokened_x = tokenizer.texts_to_sequences(X)
print(tokened_x)
wordsize = print(len(tokenizer.word_counts)) + 1
# print(len(tokenizer.word_index))

# 제일 긴 문장 길이 확인
max = 0
for sentence in tokened_x:
    if max < len(sentence):
        max = len(sentence)
print(max)
with open('./token_max_{}.pkl'.format(max), 'wb') as f:
    pickle.dump(tokenizer, f)

# LSTM 을 위한 padding
x_pad = pad_sequences(tokened_x, maxlen=max)
print(x_pad[:10])

x_train, x_test, y_train, y_test = train_test_split(x_pad, onehot_y, test_size=0.1)
print(x_train.shape)
print(x_test.shape)
print(y_train.shape)
print(y_test.shape)
np.save('./dataset/title_x_train_wordsize{}.npy'.format(wordsize), x_train)
np.save('./dataset/title_x_test_wordsize{}.npy'.format(wordsize), x_test)
np.save('./dataset/title_y_train_wordsize{}.npy'.format(wordsize), y_train)
np.save('./dataset/title_y_test_wordsize{}.npy'.format(wordsize), y_test)