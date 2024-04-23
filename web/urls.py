"""
URL configuration for web project.

The `urlpatterns` list routes URLs to views. For more information please see:
    https://docs.djangoproject.com/en/5.0/topics/http/urls/
Examples:
Function views
    1. Add an import:  from my_app import views
    2. Add a URL to urlpatterns:  path('', views.home, name='home')
Class-based views
    1. Add an import:  from other_app.views import Home
    2. Add a URL to urlpatterns:  path('', Home.as_view(), name='home')
Including another URLconf
    1. Import the include() function: from django.urls import include, path
    2. Add a URL to urlpatterns:  path('blog/', include('blog.urls'))
"""
from django.contrib import admin
from django.urls import path, include

from news.views import index, news
from travel.views import travelInfo
from product.views import productInfo
from contact.views import contact
from member.views import register, login, logout, changepassword
from cart.views import cartInfo, addtocart, cartorder, cartok, cartordercheck, myorder, ECPayCredit

urlpatterns = [
    path('admin/', admin.site.urls),
    path('', index, name='index'),
    path('news/', news, name='news'),
    path('travel/', travelInfo, name='travelInfo'),
    path('product/', productInfo, name='productInfo'),
    path('contact/', contact, name='contact'),
    path('register/', register, name='register'),
    path('login/', login, name='login'),
    path('logout', logout, name='logout'),
    path('changepassword/', changepassword, name='changepassword'),
    path('cart/', cartInfo, name='cart'),
    path('addtocart/<str:ctype>/<int:productid>/', addtocart),
    path('addtocart/<str:ctype>/', addtocart),
    path('cartorder/', cartorder, name='cartorder'),
    path('cartok/', cartok, name='cartok'),
    path('cartordercheck/', cartordercheck, name='cartordercheck'),
    path('myorder/', myorder, name='myorder'), 
    path('creditcart/', ECPayCredit, name='ecpayCredit'),
]
