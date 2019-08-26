from django.contrib.auth.admin import UserAdmin as BaseUserAdmin
from django.contrib.auth.models import User
from django.contrib import admin
from entradas.models import entrada 
from usuarios.models import Profile
# Register your models here.

#@admin.register(Profile)
# class EntradaAdmin(admin.ModelAdmin):
#     list_display = ('titulo','entrada', 'tema','capitulo','created')
#     list_editable = ('titulo','entrada', 'tema','capitulo','created')
#     search_fields = ( 'titulo', 'tema',)

#admin.site.unregister(User)
admin.site.register(entrada)