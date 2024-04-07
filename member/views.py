from django.shortcuts import render, redirect

# Create your views here.
import hashlib
from .models import Member

def login(request):
    pass

def logout(request):
    pass

def register(request):
    msg = ''

    if 'uName' in request.POST:
        name = request.POST['uName']
        email = request.POST['uEmail']
        password = request.POST['uPassword']
        sex = request.POST['uSex']
        birthday = request.POST['uBirthday']
        address = request.POST['uAddress']
        mobile = request.POST['uMobile']
        # 密碼加密
        password = hashlib.sha3_256(password.encode('utf-8')).hexdigest()

        obj = Member.objects.filter(email=email).count()

        if obj == 0:    # 代表 email 沒有被註冊過
            Member.objects.create(name=name, email=email, password=password, sex=sex, birthday=birthday, address=address, mobile=mobile)

            msg = '已完成註冊，請登入'
        else:
            msg = '此 Email 已註冊過，請換一個email 註冊'

    return render(request, 'register.html', locals())

