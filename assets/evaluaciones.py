from pizza import Pizza
from ingredientes import proteico, vegetales, masa

# 5a. Mostrar atributos de clase
print(f"Valor de la pizza: ${Pizza.precio}")
print(f"Tamaño de la pizza: {Pizza.tamano}")

print(f"Ingredientes proteicos: {proteico}")
print(f"Ingredientes vegetales: {vegetales}")
print(f"Tipos de masa: {masa}")

# 5b. Validar elemento sin crear instancia
print(f"¿La salsa de tomate está presente en la lista?: {Pizza.validar_elementos("salsa de tomate", ["salsa de tomate", "salsa bbq"])}")

# 5c. Crear instancia de la clase y llamar al metodo para solicitar ingredientes
instancia_pizza = Pizza()
instancia_pizza.realizar_pedido()

# 5d. Mostrar ingredientes elegidos anteriormente y mostrar si la instancia es valida
print("Ingrediente proteico:", instancia_pizza.ingrediente_carne)
print("Primer Ingrediente vegetal:", instancia_pizza.ingrediente_vegetal1)
print("Segundo Ingrediente vegetal:", instancia_pizza.ingrediente_vegetal2)
print("Tipo de masa:", instancia_pizza.ingrediente_masa)
print("¿Es una pizza válida?", instancia_pizza.es_valida)

# 5e. Validar clase Pizza
print("¿Es la clase Pizza válida?", Pizza.es_valida)