from django.shortcuts import render

# Create your views here.
from .models import Goods
from django.core.paginator import Paginator, EmptyPage, PageNotAnInteger

def productInfo(request):
    goods_key = ''
    start_price = ''
    end_price = ''

    if 'qgoods' in request.GET:
        goods_key = request.GET['qgoods']
        start_price = request.GET['startp']
        end_price = request.GET['endp']

        if len(goods_key)>0 and len(start_price)==0 and len(end_price)==0:
            data = Goods.objects.filter(title__contains=goods_key).order_by('-id')
        elif len(goods_key)==0 and len(start_price)>0 and len(end_price)>0:
            data = Goods.objects.filter(price__gte=start_price, price__lte=end_price).order_by('-id')
        elif len(goods_key)>0 and len(start_price)>0 and len(end_price)>0:
            data = Goods.objects.filter(title__contains=goods_key,price__gte=start_price, price__lte=end_price).order_by('-id')
        else:
            data = Goods.objects.all().order_by('-id')
    else:
        data = Goods.objects.all().order_by('-id')

    # 分頁程式
    paginator = Paginator(data, 20) # 20筆資料為1頁
    page = request.GET.get('page')

    try:
        data = paginator.page(page)
    except PageNotAnInteger:
        data = paginator.page(1) # 回到第一頁
    except EmptyPage:
        data = paginator.page(paginator.num_pages) # 跳到最後一頁

    return render(request, 'product.html', locals())
