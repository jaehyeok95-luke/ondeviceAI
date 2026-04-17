import pandas as pd
from sklearn.metrics.pairwise import linear_kernel
from scipy.io import mmread
import pickle
from konlpy.tag import Okt
from gensim.models import Word2Vec

# 선택한 영화와 유사도가 높은(review 기준) 영화 10개 추천
def getRecommendation(cosine_sim):
    simScore = list(enumerate(cosine_sim[-1]))
    simScore = sorted(simScore, key=lambda x: x[1], reverse=True)
    simScore = simScore[:11]
    movieIdx = [i[0] for i in simScore]
    recmovieList = df_review.iloc[movieIdx, 0]
    return recmovieList[1:11]   # index 0 은 자기 자신이므로 제외

df_review = pd.read_csv('./dataset/reviews_2017_2022.csv')
Tfidf_matrix = mmread('./models/tfidf_movie_review.mtx').tocsr()
with open('./models/tfidf.pkl', 'rb') as f:
    Tfidf = pickle.load(f)

# 영화 index 이용(예시 349)하여 영화 추천
ref_idx = 1228
print('title', df_review.iloc[ref_idx, 0])
cosine_sim = linear_kernel(Tfidf_matrix[ref_idx], Tfidf_matrix)     # 벡터 간 cosine 값으로 유사도 판단
print(cosine_sim[0])
print(len(cosine_sim))
recommendation = getRecommendation(cosine_sim)
print(recommendation)