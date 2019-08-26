from django.db import models

# Create your models here.
class entrada(models.Model):
    titulo = models.TextField()
    entrada = models.TextField()
    tema = models.TextField()
    capitulo = models.IntegerField()
    created = models.DateTimeField(auto_now_add = True)
    parte = models.IntegerField()


    def __str__(self):
        return ('Titulo:' +  self.titulo + '; Capitulo:' + str(self.capitulo) + '; Parte: ' + str(self.parte))