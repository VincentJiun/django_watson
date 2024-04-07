from django.contrib import admin

# Register your models here.
from .models import Message

class MessageAdmin(admin.ModelAdmin):
    # 顯示在 admin 頁面的項目
    list_display = ('subject', 'email')

admin.site.register(Message, MessageAdmin)