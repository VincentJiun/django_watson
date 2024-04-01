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
- 每次新增app時，需再setting.py install app

## 新增應用程式
```
python manage.py startapp (appName)
```

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