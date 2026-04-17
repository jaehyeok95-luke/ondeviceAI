# 형태소 벡터간 거리가 길고 짧음을 시각화
import pandas as pd
import matplotlib.pyplot as plt
from gensim.models import Word2Vec
from sklearn.manifold import TSNE
from matplotlib import font_manager, rc
import matplotlib as mpl

font_path = './malgun.ttf'
font_manager.fontManager.addfont(font_path)
font_name = font_manager.FontProperties(fname=font_path).get_name()
mpl.rcParams['axes.unicode_minus'] = False
rc('font', family=font_name)

# keyword 와 vector dist 가 가장 가까운 형태소 20개(topn - 거리 가까운 순) 찾기
embedding_model = Word2Vec.load('./models/word2vec_movie_review.model')
keyword = '방학'
sim_words = embedding_model.wv.most_similar(keyword, topn=20)
print(sim_words)

vectors = []
labels = []
for label, _ in sim_words:
    labels.append(label)
    vectors.append(embedding_model.wv[label])
print(vectors[0])
print(len(vectors[0]))

df_vectors = pd.DataFrame(vectors)
print(df_vectors.head())

# TSNE : 차원 축소모델 pca 사용 -> 100차원을 2d로 축소
tsne_model = TSNE(perplexity=9, n_components=2, init='pca', n_iter_without_progress=2500)
new_vectors = tsne_model.fit_transform(df_vectors)
df_xy = pd.DataFrame({'words':labels, 'x':new_vectors[:,0], 'y':new_vectors[:,1]})
df_xy.loc[df_xy.shape[0]] = (keyword, 0, 0) # keyword 를 원점(0, 0)으로 설정
print(df_xy)
print(df_xy.shape)

# ── Plot 부분만 교체 ──

fig, ax = plt.subplots(figsize=(12, 10))

# 키워드(원점)를 제외한 유사 단어 20개
others = df_xy.iloc[:-1]
kw_row = df_xy.iloc[-1]  # keyword 행 (원점)

# 1) 키워드 → 각 단어 연결선 (거리감 시각화)
for i, row in others.iterrows():
    ax.plot(
        [kw_row.x, row.x], [kw_row.y, row.y],
        color='#cccccc', linewidth=0.8, zorder=1
    )

# 2) 유사 단어 산점도 (거리순 컬러맵)
#    인덱스 0이 가장 가까운 단어 → 진한 색
sc = ax.scatter(
    others.x, others.y,
    c=range(len(others)),
    cmap='RdYlGn_r',        # 빨강(가까움) → 초록(멂)
    s=120, edgecolors='white', linewidths=0.8, zorder=3
)
cbar = fig.colorbar(sc, ax=ax, shrink=0.5, pad=0.02)
cbar.set_label('유사도 순위 (0 = 가장 유사)', fontsize=11)

# 3) 키워드 강조 (★ 마커)
ax.scatter(
    kw_row.x, kw_row.y,
    marker='*', s=400, color='#FF4444',
    edgecolors='black', linewidths=0.8, zorder=4
)

# 4) 라벨 표시 (겹침 최소화: 오프셋 방향 자동 결정)
for i, row in others.iterrows():
    dx = row.x - kw_row.x
    ha = 'left' if dx >= 0 else 'right'
    offset = (8, 4) if dx >= 0 else (-8, 4)
    ax.annotate(
        row.words,
        xy=(row.x, row.y),
        xytext=offset,
        textcoords='offset points',
        fontsize=10, ha=ha, va='bottom',
        bbox=dict(boxstyle='round,pad=0.2', fc='white', ec='gray', alpha=0.7)
    )

# 키워드 라벨
ax.annotate(
    f'★ {keyword}',
    xy=(kw_row.x, kw_row.y),
    xytext=(12, -12),
    textcoords='offset points',
    fontsize=13, fontweight='bold', color='#FF4444',
    bbox=dict(boxstyle='round,pad=0.3', fc='#FFF3F3', ec='#FF4444')
)

ax.set_title(f'"{keyword}" 과 의미적으로 가까운 상위 20개 형태소', fontsize=15, pad=15)
ax.set_xlabel('t-SNE 축 1', fontsize=11)
ax.set_ylabel('t-SNE 축 2', fontsize=11)
ax.grid(True, alpha=0.3, linestyle='--')
fig.tight_layout()
plt.show()

