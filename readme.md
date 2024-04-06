# Django Project - Watson
## 指導老師
- 范富強 (Watson)
- Email:ffc141@gmail.com

## 開始專案
- 後面加 . : 直接在根目錄建立專案目錄
```
django-admin startproject (projectName) .
```

## 啟動專案
- 在專案目錄下
```
python manage.py runserver
```

## 新增應用程式
```
python manage.py startapp (appName)
```
1. 每次新增app時，需再setting.py install app
2. 設定 urls.py
3. 建立 views.py
4. 若有連結資料庫資料需編寫 model.py & admin.py(註冊 models)


## 設定專案
- settings.py
- 模板設定: templates
```
TEMPLATES = [
    {
        'BACKEND': 'django.template.backends.django.DjangoTemplates',
        'DIRS': [os.path.join(BASE_DIR, 'templates').replace('\\', '/')],
        'APP_DIRS': True,
        'OPTIONS': {
            'context_processors': [
                'django.template.context_processors.debug',
                'django.template.context_processors.request',
                'django.contrib.auth.context_processors.auth',
                'django.contrib.messages.context_processors.messages',
            ],
        },
    },
]
```
- 靜態資料夾設定: static
```
STATIC_URL = 'static/'

STATIC_ROOT = os.path.join(BASE_DIR, 'static')

STATICFILES_DIRS = (
    ('images', os.path.join(STATIC_ROOT, 'images').replace('\\','/')),
    ('css', os.path.join(STATIC_ROOT, 'css').replace('\\','/')),
    ('js', os.path.join(STATIC_ROOT, 'js').replace('\\','/')),
)
```


## MySQL

### 常用 MySQL 指令

#### 登入 MySQL
```
mysql -u root -p
``` 
- root: 最高權限登入 (可改為 username 登入)
- -P: 使用密碼登入

#### 建立使用者
```
create user '(username)'@'%' identified by '(password)';
```
- '%': 任何IP端皆可用該username 登入
- username: 本專案使用 vincent
- password: 本專案使用 987456321

```
grant all privileges on (database).* to '(username)'@'%';
```
- 允許 (username) 使用者使用 (database) 資料庫內容

```
flush privileges;
```
- 立即生效

#### 開啟新的資料庫
```
create database (database_name) default character set utf8 collate utf8_general_ci;
```
- 最後一定要有分號，不然不會執行。
- database_name: 本練習所使用 djangoWatson 

#### 使用資料庫
```
use (database_name)
```

#### 查看該使用者可以使用的資料庫
```
show databases;
```

#### 查案資料庫內容
```
show tables;
```

#### 顯示資料表結構
```
show columns from (table_name)
```
- table_name: 要顯示的資料表名稱

#### 查詢MySQL 目錄
```
show global variables like '%datadir%';
```

#### 匯出 (備份)
- 先進入專案目錄
```
mysqldump -u root -p (database_name) > (name.sql)
```
```
mysqldump --no-default -u root -p (database_name) > (name.sql)
```

#### 匯入


### 使用 MySQL 為專案資料庫

#### 設定 settings.py
```
import pymysql
pymysql.install_as_MySQLdb()

DATABASES = {
    'default': {
        'ENGINE': 'django.db.backends.mysql',
        'NAME': 'djangoWatson',
        'USER': 'vincent',
        'PASSWORD':'987456321',
        'HOST':'localhost',
        'PORT':'3306',
    }
}
```
- PORT: 3306 MySQL 預設port

#### 合併資料庫
```
python manage.py makemigrations
```

```
python manage.py migrate
```

#### 建立 superuser
```
python manage.py createsuperuser
```
- 按照提示輸入帳號密碼即可登入 Django 後台

### MySQL vs Django 資料庫指令

#### 查詢所有欄位資料
- mysql: select * from (tabel)
- django: (model_class).objects.all()

#### 查詢所有欄位資料，並依 id 遞增排序
- mysql: select * from (tabel) order by id
- django: (model_class).objects.all().order_by('id')

#### 查詢所有欄位資料，並依 id 和 price欄位 遞增排序
- mysql: select * from (tabel) order by id, price
- django: (model_class).objects.all().order_by('id', 'price')

#### 查詢標題為 「xxxxx」的資料 (有可能有此資料，有可能沒有資料時, django使用filter)
- mysql: select * from (tabel) where title = 'xxxxx'
- django: (model_class).objects.filter(title='xxxxx')

#### 查詢欄位 id 為12的資料 (只獲取單個資料， 且確定此資料存在時, django 才可以使用 get)
- mysql: select * from (tabel) where id = 12
- django: (model_class).objects.get(id=12)

#### 查詢 price 價格 大於 5000元的資料
- mysql: select * from (tabel) where price > 5000
- django: (model_class).objects.filter(price__gt=5000)
    - gt: greater than

#### 查詢 price 價格 小於 5000元的資料
- mysql: select * from (tabel) where price < 5000
- django: (model_class).objects.filter(price__lt=5000)
    - lt: less than

#### 查詢 price 價格 大於等於 5000元的資料
- mysql: select * from (tabel) where price >= 5000
- django: (model_class).objects.filter(price__gte=5000)
    - gte: greater than , equal 

#### 查詢 price 價格 小於等於 5000元的資料
- mysql: select * from (tabel) where price <= 5000
- django: (model_class).objects.filter(price__lte=5000)
    - lt: less than , equal

#### 查詢 price 價格包含 1000 2000 3000 的資料
- mysql: select * from (tabel) where price in (1000, 2000, 3000)
- django: (model_class).objects.filter(price__in=[1000, 2000, 3000])

#### 關鍵字查詢

##### 查詢標題有 「xxx」 的資料
- mysql: select * from (tabel) where title like '%xxx%'
- django: (model_class).objects.filter(title__contains='xxx')

##### 查詢開頭是 「xxx」 的資料
- mysql: select * from (tabel) where title like 'xxx%'
- django: (model_class).objects.filter(title__startswith='xxx')

##### 查詢結尾是 「xxx」 的資料
- mysql: select * from (tabel) where title like '%xxx'
- django: (model_class).objects.filter(title__endswith='xxx')

#### 查詢資料， 並只顯示五筆資料
- mysql: select * from (tabel) limit 5
    - limit: 這個語法只限於mysql 相關資料庫使用 (mssql==> select top 5 from (tabel))
- django: (model_class).objects.all()[:5]

#### 查詢資料 標題為 xxx 只顯示五筆資料
- mysql: select * from (tabel) where title like '%xxx%' limit 5
- django: (model_class).objects.filter(title__contains='xxx')[:5]

#### 查詢資料欄 是否為空值: => null
- mysql: select * from (tabel) where create_data is null
- django: (model_class).objects.filter(create_data__isnull=True)

## 新增 Django 後端資料

### models.py
- 建立資料表結構

### admin.py
- 註冊資料表內容至後端 admin 

## 透過爬蟲 利用外部資料填入資料庫
- 本次專案 travel.py & t_sql.py