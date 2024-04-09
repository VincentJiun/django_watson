from django.shortcuts import render
from django.http import HttpResponseRedirect
# Create your views here.
from .models import Cart, Order
from product.models import Goods

def cartInfo(request):
    pass

def addtocaart(request, ctype=None, productid=None):
    pass