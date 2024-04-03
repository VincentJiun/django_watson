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

## 新增 Django 後端資料

### models.py
- 建立資料表結構

### admin.py
- 註冊資料表內容至後端 admin 

## 透過爬蟲 利用外部資料填入資料庫
