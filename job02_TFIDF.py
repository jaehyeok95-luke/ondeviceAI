import pandas as pd
from sklearn.feature_extraction.text import TfidfVectorizer
from scipy.io import mmwrite, mmread
import pickle

df_review = pd.read_csv("./dataset/reviews_2017_2022.csv")
df_review.info()

Tfidf = TfidfVectorizer(sublinear_tf=True)  # Tfidf 값(학습 가중치) 만들기
Tfidf_matrix = Tfidf.fit_transform(df_review["reviews"])    # Tfidf 값으로 이루어진 행렬 생성
print(Tfidf_matrix.shape)

with open('./models/tfidf.pkl', 'wb') as f:
    pickle.dump(Tfidf, f)                       # tfidf 값은 pickle로 저장

mmwrite('./models/tfidf_movie_review.mtx', Tfidf_matrix) # scipy package 이용하여 tfidf_matrix 저장