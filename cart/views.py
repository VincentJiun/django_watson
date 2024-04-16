from django.shortcuts import render, redirect
from django.http import HttpResponseRedirect
# Create your views here.
from .models import Cart, Order
from product.models import Goods

cartlist = list() # 購物車列表
customname = '' # 客戶名字
customphone = '' # 客戶電話
customaddress = '' # 客戶地址
custommail = '' # 客戶mail

ordertotal = 0 # 訂單總額
goodstitle = list() # 放入置購物車的商品名稱

# 顯示購物車內容
def cartInfo(request):
    global cartlist

    goodstitle = cartlist
    total = 0
    for unit in cartlist:
        total += int(unit[3])
        # grandtotal = total +100 # 預設運費 100元
        # 購物滿 10000元 免運
        if total >= 10000:
            grandtotal = total
        else:
            grandtotal = total +100

    return render(request, 'cart.html', locals())

# 加入購物車，並沒有將資料寫入至資料表中
def addtocart(request, ctype=None, productid=None):
    global cartlist

    if ctype == 'add':
        product = Goods.objects.filter(id=productid).count() # 確認是否有該產品
        if product > 0:
            product = Goods.objects.get(id=productid)
            # 預設購物車中都沒有相同的商品: 購物車內沒有這個商品，用flag = True 表示
            flag = True
            # 用程式檢查購物車中是否有重複的
            for unit in cartlist:
                if product.name == unit[0]:
                    unit[2] = str(int(unit[2])+1) # 數量加1
                    unit[3] = str(int(unit[3])+product.price)
                    flag = False # 表示商品有相同的，修改數量
                    break
            if flag:
                # unit[0]: 商品名稱 unit[1]: 商品單價 unit[2]: 商品數量 unit[3]: 商品總價
                templist = list()
                templist.append(product.name)
                templist.append(str(product.price))
                templist.append('1')
                templist.append(str(product.price))
                cartlist.append(templist)

            request.session['cartlist'] = cartlist
            return redirect('/cart/')
        else:
            # 表示沒有這個商品id,直接倒回產品頁
            return redirect('/product/')

    # 修改購物車
    elif ctype == 'update':
        n=0
        for unit in cartlist:
            amount = request.POST.get('qty'+str(n), '1')
            if len(amount)==0:
                amount='1'

            if int(amount) <=0:
                amount = '1'

            unit[2]=amount
            unit[3]=str(int(unit[1])*int(unit[2]))
            n += 1
        request.session['cartlist']=cartlist

        return redirect('/cart/')
    
    # 刪除購物車商品
    elif ctype == 'delete':
        del cartlist[int(productid)] # 刪除商品索引值
        request.session['cartlist'] = cartlist

        return redirect('/cart/')
    
    # 清空購物車
    elif ctype == 'empty':
        cartlist = list() # 清空串列
        request.session['cartlist'] = cartlist

        return redirect('/cart/')
    
def cartorder(request):
    # 要確定登入才能結帳
    if 'memMail' in request.session and 'isAlive' in request.session:
        global cartlist, customname, customaddress, customphone, custommail

        total = 0
        goodslist = cartlist
        for unit in cartlist:
            total += int(unit[3])

        if total < 10000:
            grandtotal = total + 100
        else:
            grandtotal =total

        name = customname
        phone = customphone
        address = customaddress
        email = request.session['memMail']

        return render(request, 'cartorder.html', locals())
    else:
        return redirect('/login')
    
def cartok(request): # 已確認資料並送出， 寫入資料庫並清空購物車
    if 'memMail' in request.session and 'isAlive' in request.session:
        if 'cuName' in request.POST:
            global cartlist, customname, customphone, custommail, customaddress, ordertotal, goodstitle

            total = 0
            for unit in cartlist:
                total += int(unit[3])

            if total < 10000:
                shipping = 100

            else:
                shipping = 0
            grandtotal = total + shipping

            customname = request.POST.get('cuName')
            customphone =request.POST.get('cuPhone')
            customaddress = request.POST.get('cuAdd')
            custommail = request.POST.get('cuMail')
            payType = request.POST.get('payType')

            # 訂單分別要寫入: 訂單、訂單明細資料表中
            unitorder = Cart.objects.create(subtitle=total, shipping=shipping, grandtotle=grandtotal, custom_name=customname, custom_mail=custommail, custom_mobile=customphone, paytype=payType, custom_address=customaddress)

            # 新增明細
            for unit in cartlist:
                goodstitle.append(unit[0]) # 將商品名稱
                total = int(unit[1])*int(unit[2])
                # 外來鍵要放入 新增訂單後，回傳的該訂單資訊
                unitdetail = Order.objects.create(dorder=unitorder, pname=unit[0], uni_price=unit[1], quantity=unit[2], dtotal=total)

            orderid = unitorder.id # 取的訂單編號
            name = unitorder.custom_name
            email = unitorder.custom_mail
            cartlist = list()
            request.session['cartlist']=cartlist

            if payType == '信用卡':
                return HttpResponseRedirect('/creditcart', locals())
            else:
                return render(request, 'cartok.html', locals())

    else:
        return redirect('/login')
    
# 查看單筆訂單資料
def cartordercheck(request):
    if ('orderid' in request.GET) and ('custommail' in request.GET):
        orderid = request.GET.get('orderid', '')
        custommail = request.GET.get('custommail', '')

        if orderid =='' or custommail=='':
            nosearch = 1
        else:
            order = Cart.objects.filter(id=orderid, custom_mail=custommail).first() # 用 first()表示 只抓取第一筆資料

            if order == None:
                notfound = 1
            else:
                details  = Order.objects.filter(dorder=order)
    
    return render(request, 'cartordercheck.html', locals())

def myorder(request):
    if 'memMail' in request.session and 'isAlive' in request.session:
        email = request.session['emeMail']

        order = Cart.objects.filter(custommail=email)

        return render(request, 'myorder.html', locals())
    else:
        return redirect('/login')