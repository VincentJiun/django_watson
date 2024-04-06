from django.shortcuts import render

# Create your views here.
from .models import Goods
from django.core.paginator import Paginator, EmptyPage, PageNotAnInteger

def productInfo(request):
    pass