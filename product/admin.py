from django.contrib import admin

# Register your models here.
from .models import Goods

# 自訂後台顯示格式
class GoodsAdmin(admin.ModelAdmin):
    list_display = ('name', 'price', 'created_date') # 自訂顯示欄位

admin.site.register(Goods, GoodsAdmin)
