from te import Te
import os
os.system("cls" if os.name == "nt" else "clear")

sabor = int(input("ingrese el sabor de Té que desea(1: Té negro, Té verde, infusion de hierbas): \n"))
formato = int(input("ingrese el formato de Té que desea (300 para 300 gr, o 500 para 500 gr): \n"))

tiempo, recomendacion = Te.obtener_tiempo_recomendacion(sabor)
precio = Te.obtener_precio(formato)

print(f"detalle del pedido")
print(f"usted eligio la opcion: {sabor}")

if sabor == 1:
    print("Té negro")
elif sabor == 2:
    print("Té verde")
elif sabor == 3:
    print("infusion de hierbas")

print(f"formato: {formato} gr")
print(f"precio: {precio}")
print(f"tiempo de preparacion: {tiempo} minutos")
print(f"recomendacion: {recom}")

