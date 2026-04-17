import pandas as pd
from konlpy.tag import Okt
import re

df = pd.read_csv("./dataset/naver_headline_news_20260331.csv") # 파일경로 복사방법 : copy path/reference -> path from content root
df.info()
# print(df.head())

df_stopwords = pd.read_csv("./dataset/stopwords.csv", index_col=0) # index_col = 0 : index column 정의(index가 자료에 존재하는 경우 설정)
stopwords = df_stopwords.stopword.tolist()
stopwords = stopwords + ['캐릭터', '스토리', '작품', '영화', '배우', '연출', '연기', '감독'] # 명사 중에서도 영화 추천에 도움이 안되는 제외 단어 추가
# print(stopwords)

okt = Okt()
cleaned_sentences = []
for review in df.title:
    review = re.sub('[^가-힣]',' ',review)
    tokened_review = okt.pos(review, stem=True)     # 형태소 분리 및 라벨링
    # print(tokened_review)
    df_token = pd.DataFrame(tokened_review, columns=['word', 'class'])
    # print(df_token.head())
    df_token = df_token[(df_token['class'] == 'Noun') |
                        (df_token['class'] == 'Verb') |
                        (df_token['class'] == 'Adjective')] # class == Noun, Verb, Adjective만 인덱싱 -> SQL 문법
    # print(df_token.head())
    words = []
    for word in df_token['word']:
        if 1 < len(word):   # 1글자 제거
            if word not in stopwords:   # 불용어(의미 구분에 필요 없는 단어) 제거
                words.append(word)
    cleaned_sentence = ' '.join(words)  # 1문장으로 합치기
    cleaned_sentences.append(cleaned_sentence)
# print(cleaned_sentences)
df['reviews'] = cleaned_sentences   # 추려낸 review 항목 새롭게 저장
df.dropna(inplace=True)
df.info()
df.to_csv("./dataset/cleaned_headline_news.csv", index=False)