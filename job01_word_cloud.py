from os import writev

import pandas as pd
from wordcloud import WordCloud
import collections
import matplotlib.pyplot as plt
from matplotlib import font_manager, rc

font_path = './malgun.ttf'
font_name = font_manager.FontProperties(fname=font_path).get_name()
plt.rc('font', family='NanumBarunGothic')

df = pd.read_csv("./dataset/reviews_2017_2022.csv")
words = df[df.titles=='겨울왕국 2 (Frozen 2)']['reviews'][1228].split()
# print(words)

worddict = collections.Counter(words) # 형태소 출현 빈도 카운트
worddict = dict(worddict)             # 형태소별 출현빈도를 dict로 매칭
# print(worddict)


# WordCloud : 빈도 수가 많은 단어는 크게 표시
# plt.show() : pyqt5 package 설치 필요
wordcloud_img = WordCloud(background_color="white", font_path=font_path).generate_from_frequencies(worddict)
plt.figure(figsize=[10, 10])
plt.imshow(wordcloud_img)
plt.axis("off")
plt.show()

# TFIDF : TF-IDF(Term Frequency-Inverse Document Frequency)는 문서 집합 내에서 특정 단어의 중요도를 평가하는 통계적 가중치입니다.
# 문서 내 단어 빈도(TF)가 높고, 전체 문서 집합에서 해당 단어가 드물게 등장(높은 IDF)할수록 높은 점수를 얻어 핵심 키워드를 추출하거나 문서 유사도를 계산하는 데 사용
