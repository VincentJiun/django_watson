from django.shortcuts import render

# Create your views here.
from .models import myNews

def index(request):
    return render(request, 'index.html')

def news(request):
    data = myNews.objects.all().order_by('-id') # order_by 排序 -id: 依 id 欄位遞減排序 id: 遞增排序
    content = {'news_list': data}

    return render(request, 'news.html', content)