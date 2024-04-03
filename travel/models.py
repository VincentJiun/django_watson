from django.db import models

# Create your models here.

class myTravel(models.Model):
    title = models.CharField(max_length=200)
    price = models.IntegerField()
    discount = models.IntegerField()
    photo_url = models.CharField(max_length=200)
    content = models.TextField()
    created_date = models.DateTimeField(auto_now_add=True)

    class Meta:
        db_table = 'travel'