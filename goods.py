import requests
import json
import datetime

import t_sql

cursor = t_sql.conn.cursor()

url = 'https://ecapi-cdn.pchome.com.tw/fsapi/cms/onsale'

headers = {
    'authority':'ecapi-cdn.pchome.com.tw',
    'method':'GET',
    'path':'/fsapi/cms/onsale',
    'scheme':'https',
    'Accept':'application/json, text/plain, */*',
    'Accept-Encoding':'gzip, deflate, br, zstd',
    'Accept-Language':'zh-TW,zh;q=0.9,en-US;q=0.8,en;q=0.7',
    'Origin':'https://24h.pchome.com.tw',
    'Referer':'https://24h.pchome.com.tw/',
    'Sec-Ch-Ua':'"Google Chrome";v="123", "Not:A-Brand";v="8", "Chromium";v="123"',
    'Sec-Ch-Ua-Mobile':'?0',
    'Sec-Ch-Ua-Platform':'"Windows"',
    'Sec-Fetch-Dest':'empty',
    'Sec-Fetch-Mode':'cors',
    'Sec-Fetch-Site':'same-site',
    'User-Agent':'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36',
}

goods = requests.get(url=url, headers=headers).text

goods = json.loads(goods)

items = goods['data']

today = datetime.datetime.today()
date = today.strftime("%Y-%m-%d")

for item in items:
    products = item['products']
    for product in products:
        name = product['name']
        link = product['url']
        img = product['image']
        price = product['price']['origin']
        discount = product['price']['onsale']
        
        sql = "insert into product(name, price, photo_url, goods_url, discount, created_date) values('{}','{}','{}','{}','{}','{}')".format(name, price, img, link, discount, date)

        cursor.execute(sql) # 執行sql語法
        t_sql.conn.commit() # 立即提交


        
        # print(product)
        # print(name)
        # print(link)
        # print(img)
        # print(price)
        # print(discount)

t_sql.conn.close() # 整個資料抓取完畢後，才將此連線關閉

    