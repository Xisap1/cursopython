class Anuncio ():
    def __init__(self, ancho: int, alto: int, url_clic: str, sub_tipo: str):
        self.__ancho = ancho
        self.__alto = alto
        self.__url_clic = url_clic
        self.__sub_tipo = sub_tipo

#comportamiento:
    def mostrar_formatos(self):
        opcion = int(input("el formato elegido es: (1) Video, (2) Display y (3) Social"))
        if opcion > 3:
         self.sub_tipo = False
        elif opcion => 1:
         self.sub_tipo = True
        else:
         print("Formato no valido")

def comprimir_anuncio(self):
     pass
     

def redimencionar_anuncio(self):
    pass
 
    
#subclase
class Video (Anuncio):

        def __init__(self, ancho, alto, duracion):
            super.__init__(ancho, alto)
            self.duracion = duracion
    
class instream(Video):
   def __init__(self, ancho, alto, duracion):
            super.__init__(ancho, alto, duracion)
            
    
class outstream(Video):
    def __init__(self, ancho, alto, duracion):
            def __init__(self, ancho, alto, duracion):
            super.__init__(ancho, alto, duracion)
class Display (Anuncio):
         def __init__(self, ancho, alto, duracion):
            super.__init__(ancho, alto, duracion)

class tradicional(Display):
def __init__(self, ancho, alto, duracion):
            super.__init__(ancho, alto, duracion)
class nativa(Display):
     def __init__(self, ancho, alto, duracion):
            super.__init__(ancho, alto, duracion)
#subclase    
class Social (Anuncio):
  def __init__(self, ancho, alto, duracion):
            super.__init__(ancho, alto, duracion)
class facebook(Social):
def __init__(self, ancho, alto, duracion):
            super.__init__(ancho, alto, duracion)

class linkedin(Social):
     def __init__(self, ancho, alto, duracion):
            super.__init__(ancho, alto, duracion)

