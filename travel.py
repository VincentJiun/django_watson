import requests
from bs4 import BeautifulSoup
import random

import t_sql

cursor = t_sql.conn.cursor()

url = 'https://supertaste.tvbs.com.tw/travel'

travel = requests.get(url).text

# html 解析
sp = BeautifulSoup(travel, 'html.parser')
# 抓取一個資料
items = sp.find('div', class_='article__content')
# 
allTravels = items.find_all('a', class_='article__item')

for t in allTravels:
    img = t.find('img')
    img = img.get('data-original')
    title = t.find('h3').text.strip()
    pdate = t.find('span').text.strip()
    price = random.randint(1000, 9999)

    sql = "insert into travel(title, photo_url, created_date, price, discount, content) values('{}','{}','{}','{}','{}','{}')".format(title,img, pdate, price, price, title)
    cursor.execute(sql) # 執行sql語法
    t_sql.conn.commit() # 立即提交

t_sql.conn.close() # 整個資料抓取完畢後，才將此連線關閉