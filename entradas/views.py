from django.shortcuts import render
from entradas.models import entrada
from django.contrib.auth.decorators import login_required
from django.core.paginator import Paginator

# Create your views here.
@login_required
def feed_view(request,parte):
    entradaa = entrada.objects.all().filter(capitulo=1, parte__range=[0,20]).order_by('id')
    paginator = Paginator(entradaa,1)
    print('*'*10)
    print(parte)
    print('*'*10)
    #page = request.GET.get('parte')
    print('*-----*')
    #print(page)
    print('*-----*')
    ent = paginator.get_page(parte)
    print(ent)
    return render(request, 'feed.html', {'entrada': ent}  )

@login_required
def bienvenida_view(request):
    return render(request,'index.html')
