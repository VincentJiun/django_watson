from django.db import models

# Create your models here.
from django.utils import timezone

class Photo(models.Model):
    image = models.ImageField(upload_to='images/', blank=False, null=False)
    # upload_to 圖片上傳後，存放的路徑位置
    upload_date = models.DateField(default=timezone.now())

