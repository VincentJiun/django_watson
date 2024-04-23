from django.shortcuts import render, redirect

# Create your views here.
from .forms import UploadModelForm
from .models import Photo

def uploadFile(request):
    photos = Photo.objects.all()

    form = UploadModelForm() # 建立上傳圖片表單物件

    if request.method == 'POST':
        # 從網頁中，將檔案直接上傳至網站伺服器中
        form = UploadModelForm(request.POST, request.FILES)

        if form.is_valid():
            form.save()
            return redirect('/photos')
        
    context = {
        'photos': photos,
        'form': form,
    }

    return render(request, 'photos.html', locals())