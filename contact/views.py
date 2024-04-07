from django.shortcuts import render

# Create your views here.
from .models import Message

def contact(requset):
    # 檢查表單是否送出， 並檢查其中一個輸入值 name
    if 'userName' in requset.POST:
        name = requset.POST['userName']
        email = requset.POST['userEmail']
        subject = requset.POST['uSubject']
        content = requset.POST['uContent']

        # 新增資料到資料表中
        obj = Message.objects.create(name=name, email=email, subject=subject, content=content)
        # 呼叫 save() 儲存該物件
        obj.save()

    return render(requset, 'contact.html')