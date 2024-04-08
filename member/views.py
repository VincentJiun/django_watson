from django.shortcuts import render, redirect

# Create your views here.
import hashlib
from .models import Member
from django.http import HttpResponse,HttpResponseRedirect

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


def login(request):
    msg = ''
    if 'uEmail' in request.POST:
        email = request.POST['uEmail']
        password = request.POST['uPassword']
        password = hashlib.sha3_256(password.encode('utf-8')).hexdigest()

        obj = Member.objects.filter(email=email, password=password).count()
        if obj > 0:
            # 建立 session
            request.session['memMail']=email # 將 email 值存入 session 中
            request.session['isAlive']=True

            #  加上 cookie 功能。 但...須注意: 若使用者禁用cookie時，就會失效
            response = HttpResponseRedirect('/') # 轉向至首頁,cookie須利用此物件紀錄
            # max_age = 秒 表示在這個網站中， UMail 的變數只能存活 1200秒
            response.set_cookie('UMail', email, max_age=1200)

            return response
        else:
            msg = '帳號或密碼錯誤，請重新輸入!!!'
            return render(request, 'login.html', locals())

    else:
        return render(request, 'login.html', locals())

def logout(request):
    # 刪除 session 內容: 指定session 變數
    # del request.session['memMail'] 
    # del request.session['isAlive']

    # 刪除目前所有session 值
    request.session.clear()

    # 刪除cookie 的值
    response = HttpResponseRedirect('/')
    response.delete_cookie('UMail')

    return response
