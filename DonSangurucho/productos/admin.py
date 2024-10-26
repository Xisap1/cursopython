from django.contrib import admin
from .models import Producto, Combo


@admin.register(Producto)
class ProductoAdmin(admin.ModelAdmin):
    list_display = ('nombre', 'precio')

@admin.register(Combo)
class ComboAdmin(admin.ModelAdmin):
    list_display = ['nombre', 'precio_total'] # Solo mostrar estos campos en el formulario




