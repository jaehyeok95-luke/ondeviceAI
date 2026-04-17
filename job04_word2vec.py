import pandas as pd
from gensim.models import Word2Vec

df_review = pd.read_csv('./dataset/reviews_2017_2022.csv')
df_review.info()

reviews = list(df_review['reviews'])
print(reviews[0])

# 리스트화 작업
tokens = []
for sentence in reviews:
    token = sentence.split()
    tokens.append(token)
print(tokens[0])

# 데이터 희소 문제를 해결하기 위해 형태소만큼 존재하는 차원을 vector_size = 100으로 축소 -> 정보 손실을 최소화하는 축소알고리즘 적용
embedding_model = Word2Vec(tokens, vector_size=100, window=4, min_count=20, workers=4, epochs=100, sg=1)
embedding_model.save('./models/word2vec_movie_review.model')
print(list(embedding_model.wv.index_to_key))
print(len(embedding_model.wv.index_to_key))