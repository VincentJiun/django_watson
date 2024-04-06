import pymysql

dbsettings = {
    'host': 'localhost',
    'port': 3306,
    'user': 'vincent',
    'password': '987456321',
    'db': 'djangoWatson',
    'charset': 'utf8',
}

conn = pymysql.connect(**dbsettings)