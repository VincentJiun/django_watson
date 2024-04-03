from django.db import models

# Create your models here.

class myNews(models.Model):
    title = models.CharField(max_length=100)
    content = models.TextField()
    photo_url = models.CharField(max_length=200)
    created_date = models.DateTimeField(auto_now_add=True)

    class Meta:
        db_table = 'news' # 設定 資料表名稱