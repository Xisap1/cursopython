from django.urls import path
from . import views

urlpatterns = [
    path('', views.index, name='home'),
    path('login/', views.CustomLoginView.as_view(), name='login'),
    path('logout/', views.CustomLogoutView.as_view(), name='logout'),
    path('registro/', views.registro, name='registro'),
    path('agregar-producto/<int:producto_id>/', views.agregar_producto, name='agregar_producto'),
    path('agregar-combo/<int:combo_id>/', views.agregar_combo, name='agregar_combo'),
    path('orden-acumulada/', views.orden_acumulada, name='orden_acumulada'),
    path('confirmar_orden/', views.confirmar_orden, name='confirmar_orden'),
    path('comprar-combo/<int:combo_id>/', views.comprar_combo, name='comprar_combo'),  # Requiere autenticación
    path('orden-acumulada/', views.ver_orden_acumulada, name='orden_acumulada'),
    path('eliminar-item/<int:item_id>/<str:item_type>/', views.eliminar_item, name='eliminar_item'),
    path('completar-orden/', views.completar_orden, name='completar_orden'),
    path('orden-lista/', views.orden_lista, name='orden_lista'),
    path('ordenes/', views.ordenes, name='ordenes'),
    path('compra-exito/', views.compra_exito, name='compra_exito'),
    path('agregar/<int:producto_id>/', views.agregar_a_orden, name='agregar_a_orden'),
    path('comprar-combo/<int:combo_id>/', views.comprar_combo, name='comprar_combo'),
    path('marcar-como-completada/<int:orden_id>/', views.marcar_como_completada, name='marcar_como_completada'),
]
