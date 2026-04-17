from selenium import webdriver
from selenium.webdriver.common.by import By
from selenium.webdriver.chrome.service import Service as ChromeService
from selenium.webdriver.chrome.options import Options as ChromeOptions
from webdriver_manager.chrome import ChromeDriverManager
import time
import re
import pandas as pd
import datetime

category = ['Politics', 'Economic', 'Social', 'Culture', 'World', 'IT']

options = ChromeOptions()
options.add_argument('lang=ko_KR')

service = ChromeService(executable_path=ChromeDriverManager().install())
driver = webdriver.Chrome(service=service, options=options)
my_section = 3
url = "https://news.naver.com/section/10{}".format(my_section)
driver.get(url)
time.sleep(0.5)

today_str = datetime.datetime.now().strftime('%Y.%m.%d.')

# ============ 더보기 버튼 클릭 (오늘 날짜까지만) ============
max_clicks = 200
click_count = 0

while click_count < max_clicks:
    try:
        clicked = False
        for div_idx in [4, 5]:
            try:
                button_xpath = f'//*[@id="newsct"]/div[{div_idx}]/div/div[2]/a'
                driver.find_element(By.XPATH, button_xpath).click()
                clicked = True
                click_count += 1
                break
            except:
                continue

        if not clicked:
            print("더보기 버튼을 찾을 수 없음 → 중단")
            break

        time.sleep(0.5)

        # date_elements = driver.find_elements(By.CSS_SELECTOR, '.sa_text_datetime')
        #
        # if date_elements:
        #     found_old = False
        #     for elem in date_elements:
        #         date_text = elem.text.strip()
        #         # "N분전", "N시간전" → 오늘 기사 → 통과
        #         if '분전' in date_text or '시간전' in date_text:
        #             continue
        #         # 그 외 ("1일전", "2026.03.30." 등) → 오늘이 아닌 기사
        #         else:
        #             print(f"[클릭 {click_count}회] 오늘이 아닌 기사 발견: '{date_text}' → 중단")
        #             found_old = True
        #             break
        #     if found_old:
        #         break

    except Exception as e:
        print(f"오류 발생: {e}")
        break

print(f"총 {click_count}회 클릭 완료")



time.sleep(0.5)

# ============ 기사 제목 크롤링 (두 가지 셀렉터 모두 커버) ============
title_tags = driver.find_elements(By.CSS_SELECTOR,
    '.sa_text_strong, .sa_text_title strong')

titles = []
seen = set()
for tag in title_tags:
    text = tag.text.strip()
    if text and text not in seen:
        titles.append(text)
        seen.add(text)

df_titles = pd.DataFrame(titles, columns=['title'])
df_titles['category'] = category[my_section]
print(df_titles.head())
print(f"총 {len(df_titles)}개 기사 크롤링 완료")
df_titles.info()
df_titles.to_csv('./crawling_data/Culture/naver_headline_news_{}.csv'.format(
    datetime.datetime.now().strftime('%Y%m%d')), index=False)
