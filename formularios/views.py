from django.shortcuts import render
from django.contrib.auth.decorators import login_required

# Create your views here.
# Create your models here.
def formulario_view(request):
    return render(request,'form.html')
    