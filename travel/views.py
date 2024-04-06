from django.shortcuts import render

# Create your views here.
from .models import myTravel
# 分頁函式庫
from django.core.paginator import Paginator, EmptyPage, PageNotAnInteger

def travelInfo(request):
    travel_key = ''
    start_price = ''
    end_price = ''

    if 'qtravel' in request.GET:
        travel_key = request.GET['qtravel']
        start_price = request.GET['startp']
        end_price = request.GET['endp']

        if len(travel_key)>0 and len(start_price)==0 and len(end_price)==0:
            data = myTravel.objects.filter(title__contains=travel_key).order_by('-id')
        elif len(travel_key)==0 and len(start_price)>0 and len(end_price)>0:
            data = myTravel.objects.filter(price__gte=start_price, price__lte=end_price).order_by('-id')
        elif len(travel_key)>0 and len(start_price)>0 and len(end_price)>0:
            data = myTravel.objects.filter(title__contains=travel_key,price__gte=start_price, price__lte=end_price).order_by('-id')
        else:
            data = myTravel.objects.all().order_by('-id')
    else:
        data = myTravel.objects.all().order_by('-id')
    
    # 分頁程式
    paginator = Paginator(data, 12) # 12筆資料為1頁
    page = request.GET.get('page')

    try:
        data = paginator.page(page)
    except PageNotAnInteger:
        data = paginator.page(1) # 回到第一頁
    except EmptyPage:
        data = paginator.page(paginator.num_pages) # 跳到最後一頁
    
    return render(request, 'travel.html', locals())
    # locals() 是將此函式所有的變數都回傳至 travel.html