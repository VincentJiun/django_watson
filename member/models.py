from django.db import models

# Create your models here.

class Member(models.Model):
    name = models.CharField(max_length=50)
    sex = models.CharField(max_length=10)
    birthday = models.DateField()
    email = models.EmailField(max_length=100)
    mobile = models.CharField(max_length=20)
    address = models.CharField(max_length=200)
    password = models.CharField(max_length=100)
    created_date = models.DateField(auto_now_add=True)

    class Meta:
        db_table = 'customer'
