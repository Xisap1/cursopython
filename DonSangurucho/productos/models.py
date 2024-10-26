from django.contrib.auth.models import AbstractUser, User
from django.contrib.auth import get_user_model
from django.conf import settings
from django.db import models
from decimal import Decimal

class Usuario(AbstractUser):
    is_verified = models.BooleanField(default=False)

class Post(models.Model):
    autor = models.ForeignKey(
      settings.AUTH_USER_MODEL,
      on_delete=models.PROTECT
    )

groups = models.ManyToManyField(
        'auth.Group',
        related_name="usuarios_set",
        blank=True
    )
user_permissions = models.ManyToManyField(
        'auth.Permission',
        related_name="usuarios_permissions_set",
        blank=True
    )

def __str__(self):
        return self.username

class Producto(models.Model):
    nombre = models.CharField(max_length=100)
    precio = models.DecimalField(max_digits=10, decimal_places=2)
    descripcion = models.TextField(blank=True, null=True)
    imagen = models.ImageField(upload_to='productos/', blank=True, null=True)

    def __str__(self):
        return f"{self.nombre} (${self.precio})"

class Combo(models.Model):
    nombre = models.CharField(max_length=100)
    precio_total = models.DecimalField(max_digits=10, decimal_places=2)
    descripcion = models.TextField(blank=True, null=True)  # Campo para la descripción
    imagen = models.ImageField(upload_to='combos/', blank=True, null=True)  

    def __str__(self):
        return f"{self.nombre} (${self.precio_total})"

Usuario = get_user_model()

class Orden(models.Model):
    usuario = models.ForeignKey(settings.AUTH_USER_MODEL, on_delete=models.CASCADE)
    detalle = models.TextField(blank=True)
    precio_total = models.DecimalField(max_digits=10, decimal_places=2, default=Decimal('0.00'))
    completada = models.BooleanField(default=False)

    def __str__(self):
        return f"Orden de {self.usuario.username} - Total: ${self.precio_total}"