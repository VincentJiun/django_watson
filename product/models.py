from django.db import models

# Create your models here.

class Goods(models.Model):
    name = models.CharField(max_length=100)
    price = models.IntegerField()
    photo_url = models.CharField(max_length=200)
    goods_url = models.CharField(max_length=200)
    discount = models.IntegerField()
    created_date = models.DateField(auto_now_add=True)

    class Meta:
        db_table = 'product'