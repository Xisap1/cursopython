import ingredientes

# 1. Crear Clase
class Pizza:
    precio = 10000
    tamano = "Familiar"

    def validar(self):
        self.carne1 = None
        self.vegetal1 = None
        self.vegetal2 = None
        self.masa = None
        self.es_valida = False

# 2. Metodo que permite validar elementos
    @staticmethod
    def validar_elementos(elementos, valor_elementos):
       return True if elementos in valor_elementos else False 
    
# 3. Metodo para Realizar Pedidos   
    def realizar_pedido(self):
        self.ingrediente_carne = input(f" Ingrese el tipo de carne que desea: {ingredientes.proteico}: ")
        self.ingrediente_vegetal1 = input(f" Ingrese el primer tipo de vegetal que desea: {ingredientes.vegetales}: ")
        self.ingrediente_vegetal2 = input(f" Ingrese el segundo tipo de vegetal que desea: {ingredientes.vegetales}: ")
        self.ingrediente_masa = input(f" Ingrese el tipo de masa que desea: {ingredientes.masa}: ")

# 4. Evaluar si el ingreso es valido.     
        if (self.validar_elementos(self.ingrediente_carne, ingredientes.proteico) and 
            self.validar_elementos(self.ingrediente_vegetal1, ingredientes.vegetales) and
            self.validar_elementos(self.ingrediente_vegetal2, ingredientes.vegetales) and
            self.validar_elementos(self.ingrediente_masa, ingredientes.masa)):
            self.es_valida = True      
        else: 
            self.es_valida = False