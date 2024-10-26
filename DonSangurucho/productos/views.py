from django.shortcuts import render, redirect, get_object_or_404
from django.contrib.auth.decorators import login_required
from django.contrib.auth import views as auth_views  
from django.http import HttpResponseForbidden
from .models import Producto, Combo, Orden, Usuario
from .forms import RegistroForm
from decimal import Decimal

def index(request):
    productos = Producto.objects.all()
    combos = Combo.objects.all()
    return render(request, 'index.html', {'productos': productos, 'combos': combos})

# Vista personalizada de login
class CustomLoginView(auth_views.LoginView):
    template_name = 'login.html'

# Vista personalizada de logout
class CustomLogoutView(auth_views.LogoutView):
    next_page = 'home'

def registro(request):
    if request.method == 'POST':
        form = RegistroForm(request.POST)
        if form.is_valid():
            form.save()
            return redirect('login')
    else:
        form = RegistroForm()
    return render(request, 'registro.html', {'form': form})

@login_required
def orden_lista(request):
   
     # Intenta obtener una orden incompleta del usuario
    orden = Orden.objects.filter(usuario=request.user, completada=False).first()
    if orden:
        return render(request, 'orden_lista.html', {'orden': orden})
    else:
        # En caso de que no exista una orden, redirigir o mostrar una página informativa
        return render(request, 'orden_lista.html', {'orden': None, 'mensaje': 'No tienes órdenes pendientes.'})

@login_required
def orden_acumulada(request):
    # Obtiene la orden activa del usuario, o crea una nueva si no existe
    orden, created = Orden.objects.get_or_create(usuario=request.user, completada=False)
    
    # Obtiene todos los productos y combos seleccionados en la orden actual
    productos_en_orden = orden.productos.all()
    combos_en_orden = orden.combos.all()
    
    contexto = {
        'productos_en_orden': productos_en_orden,
        'combos_en_orden': combos_en_orden,
        'orden': orden,
    }
    
    return render(request, 'orden_acumulada.html', contexto)

def eliminar_item(request, item_id, item_type):
    """Permite eliminar un producto o combo de la orden."""
    orden = Orden.objects.get(usuario=request.user, completada=False)

    if item_type == "producto":
        producto = get_object_or_404(Producto, id=item_id)
        orden.productos.remove(producto)
    elif item_type == "combo":
        combo = get_object_or_404(Combo, id=item_id)
        orden.combos.remove(combo)

    orden.save()
    return redirect('orden_acumulada')

@login_required
def compra_exito(request):
    return render(request, 'compra_exito.html')

@login_required
def ordenes(request):
 
    if not request.user.is_superuser:
        return redirect('home')
    ordenes = Orden.objects.all()
    return render(request, 'ordenes.html', {'ordenes': ordenes})

@login_required
def agregar_producto(request, producto_id):
    producto = get_object_or_404(Producto, id=producto_id)
    orden, created = Orden.objects.get_or_create(usuario=request.user)

    # Actualizar el detalle y precio total de la orden
    orden.detalle += f"{producto.nombre}, "
    orden.precio_total += producto.precio
    orden.save()

    return redirect('orden_acumulada')  # Redirige a la vista donde se muestra el resumen de la orden

@login_required
def agregar_producto_a_orden(request, producto_id):
    producto = get_object_or_404(Producto, id=producto_id)
    orden = Orden.objects.filter(usuario=request.user, completada=False).first()
    if not orden:
        orden = Orden.objects.create(usuario=request.user, completada=False)

    orden.detalle += f"{producto.nombre} - ${producto.precio}\n"
    orden.precio_total += producto.precio
    orden.save()
    return redirect('orden_acumulada')

def agregar_combo_a_orden(request, combo_id):
    combo = get_object_or_404(Combo, id=combo_id)
    orden, created = Orden.objects.get_or_create(usuario=request.user, completada=False)
    orden.detalle += f"Combo: {combo.nombre} - ${combo.precio_total}\n"
    orden.precio_total += combo.precio_total
    orden.save()
    return redirect('orden_acumulada')


@login_required
def agregar_combo(request, combo_id):
    combo = get_object_or_404(Combo, id=combo_id)
    orden, created = Orden.objects.get_or_create(usuario=request.user)

    # Añadir productos del combo al detalle y actualizar precio total
    orden.detalle += f"Combo: {combo.nombre} - Incluye: "
    for producto in combo.productos.all():
        orden.detalle += f"{producto.nombre}, "
    orden.precio_total += combo.precio_total
    orden.save()

    return redirect('orden_acumulada')

@login_required
def orden_acumulada(request):
    orden = Orden.objects.filter(usuario=request.user, completada=False).first()
    return render(request, 'orden_acumulada.html', {'orden': orden})

def confirmar_orden(request):
    orden = Orden.objects.filter(usuario=request.user, completada=False).first()
    orden.completada = True
    orden.save()
    return render(request, 'confirmacion_orden.html', {'orden': orden})

@login_required
def agregar_a_orden(request, producto_id=None, combo_id=None):
    # Asegúrate de que el usuario tenga solo una orden activa
    orden, created = Orden.objects.filter(usuario=request.user, completada=False).first(), False

    # Si no existe una orden incompleta, crea una nueva
    if not orden:
        orden = Orden.objects.create(usuario=request.user, completada=False)

    # Agregar producto o combo a la orden
    if producto_id:
        producto = Producto.objects.get(id=producto_id)
        orden.detalle += f"{producto.nombre}, "
        orden.precio_total += producto.precio
    elif combo_id:
        combo = Combo.objects.get(id=combo_id)
        orden.detalle += f"Combo: {combo.nombre} - ${combo.precio}\n"
        orden.precio_total += combo.precio_total

    orden.save()
    return render(request, 'orden_acumulada.html', {'orden': orden})


def ver_orden_acumulada(request):
    orden = Orden.objects.filter(usuario=request.user, completada=False).first()
    return render(request, 'orden_acumulada.html', {'orden': orden})

def completar_orden(request):
    orden = Orden.objects.filter(usuario=request.user, completada=False).first()
    if orden:
        orden.completada = True
        orden.save()
    return redirect('compra_exito')

@login_required
def confirmar_orden(request):
    orden = Orden.objects.filter(usuario=request.user, completada=False).first()
    if orden:
        orden.completada = True
        orden.save()
    return render(request, 'confirmacion_orden.html', {'orden': orden})

@login_required
def comprar_combo(request, combo_id):
    combo = get_object_or_404(Combo, id=combo_id)
    orden, created = Orden.objects.get_or_create(usuario=request.user, completada=False)
    orden.combos.add(combo)
    orden.precio_total += Decimal(combo.precio_total)  # Ajusta aquí el tipo de datos si es necesario
    orden.save()
    return redirect('orden_lista')

@login_required
def marcar_como_completada(request, orden_id):
    orden = get_object_or_404(Orden, id=orden_id)
    orden.completada = True
    orden.save()
    return redirect('ordenes')
