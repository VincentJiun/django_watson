from django.shortcuts import render

# Create your views here.
from .models import myTravel


def travelInfo(request):
    data = myTravel.objects.all().order_by('-id')
    
    return render(request, 'travel.html', locals())
    # locals() 是將此函式所有的變數都回傳至 travel.html