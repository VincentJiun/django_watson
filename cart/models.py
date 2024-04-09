from django.db import models

# Create your models here.

class Cart(models.Model):
    subtitle = models.IntegerField(default=0)
    shipping = models.IntegerField(default=0)
    grandtotle = models.IntegerField(default=0)
    custom_name = models.CharField(max_length=100)
    custom_mail = models.CharField(max_length=100)
    custom_mobile = models.CharField(max_length=20)
    paytype = models.CharField(max_length=20)
    custom_address = models.CharField(max_length=200)
    created_date = models.DateTimeField(auto_now_add=True)

    def __str__(self):
        return self.custom_name
    
class Order(models.Model):
    # ForeignKey: 外來鍵 指定一個資料表為我的外來鍵
    # 每一個DB 資料表都會有一個主鍵 primary key
    # 在另一個資料表中 有包含 A 資料表的主鍵時， 稱 外來鍵
    dorder = models.ForeignKey('Cart', on_delete=models.CASCADE) # on_delete: 當ForeignKey 被刪除時，會同步刪除此資料表中所對應的資料
    pname = models.CharField(max_length=100)
    uni_price = models.IntegerField(default=0)
    quantity = models.IntegerField(default=0)
    dtotal = models.IntegerField(default=0)

    def __str__(self) -> str:
        return self.pname
