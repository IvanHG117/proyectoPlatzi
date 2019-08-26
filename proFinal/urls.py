"""proFinal URL Configuration

The `urlpatterns` list routes URLs to views. For more information please see:
    https://docs.djangoproject.com/en/2.1/topics/http/urls/
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
from django.urls import path
from usuarios import views as users_views
from entradas import views as entradas_views
from django.contrib.auth import views as viewsD
from formularios import views as formularios_views
urlpatterns = [
    path('admin/', admin.site.urls),
    path('login/', users_views.login_view, name = 'login'),
    path('posts/<int:parte>/', entradas_views.feed_view, name = 'feed'),
    path('index/', entradas_views.bienvenida_view, name = 'index'),
    path('logout/', viewsD.LogoutView.as_view(),{'next_page' : 'index/'}, name = 'userLogout'),
    path('signup/', users_views.signup_view, name = 'signup'),
    path('', entradas_views.bienvenida_view),
    path('formulario/', formularios_views.formulario_view, name = 'formulario')
]
