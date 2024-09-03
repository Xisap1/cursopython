from django.db import models
from django.contrib.auth.models import User
# Create your models here.
# Create your models here.
class Curso(models.Model):
    nombre = models.CharField(max_length=100)
    descripcion = models.TextField()

    def __str__(self):
        return self.nombre

class Evaluacion(models.Model):
    nombre = models.CharField(max_length=100)
    peso = models.IntegerField()
    curso = models.ForeignKey(Curso, on_delete=models.CASCADE, related_name='evaluaciones')

    def __str__(self):
        return self.nombre

class Pertenece(models.Model):
    user = models.ForeignKey(User, on_delete=models.CASCADE)
    curso = models.ForeignKey(Curso, on_delete=models.CASCADE)
    aprobado = models.BooleanField(default=False)

    def __str__(self):
        return f'{self.user.username} pertenece al curso {self.curso.nombre}'

class Nota(models.Model):
    user = models.ForeignKey(User, on_delete=models.CASCADE)
    evaluacion = models.ForeignKey(Evaluacion, on_delete=models.CASCADE)
    nota = models.FloatField()

    def __str__(self):
        return f'Nota {self.nota} en {self.evaluacion.nombre} para {self.user.username}'



