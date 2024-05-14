from abc import abstractmethod #abstracto

#clase raiz
class Membresia:
    def __init__(self, correo: str, numero_tarjeta: str, costo: int, dispositivos: int):
        self.__correo = correo
        self.__numero_tarjeta = numero_tarjeta
        self.__costo = costo
        self.__dispositivos = dispositivos

#definiciones parametros
    def get_correo(self):
        return self.__correo

    def get_numero_tarjeta(self):
        return self.__numero_tarjeta

    def get_costo(self):
        return self.__costo

    def get_dispositivos(self):
        return self.__dispositivos
    
    def set_costo(self, p_costo:int):
        self.__costo = p_costo

    def set_dispositivos(self, p_dispositivos:int):
        self.__dispositivos = p_dispositivos

    @abstractmethod
    def cambiar_suscripcion():
        pass

#sub clase

class Gratis(Membresia):   #hereda de membresia    #membresia por defecto, n| 0
    def __init__(self, correo: str, numero_tarjeta: str):
        super().__init__(correo, numero_tarjeta, 0, 1) #con super, hereda los parametros de membresia
#tipos de membresia, basica (1), familiar (2), sin conexion (3)y pro (4)
    def cambiar_suscripcion(self, tipo_membresia):
        if tipo_membresia == 1:
            v_membresia = Basica(self.get_correo(), self.get_numero_tarjeta())
        elif tipo_membresia == 2:
            v_membresia = Familiar(self.get_correo(), self.get_numero_tarjeta())
        elif tipo_membresia == 3:
            v_membresia = SinConexion(self.get_correo(), self.get_numero_tarjeta())
        elif tipo_membresia == 4:
            v_membresia = Pro(self.get_correo(), self.get_numero_tarjeta())
        else:
            v_membresia = self

        return v_membresia
#definicion de las clases de membresia
class Basica(Membresia):     #herencia de membresia(base)
    def __init__(self, correo: str, numero_tarjeta: str):
        super().__init__(correo, numero_tarjeta, 3000, 2)
#comportamiento : cancelar
    def cancelar_suscripcion(self, correo:str, numero_tarjeta: str):
        return(Gratis(self.get_correo(), self.get_numero_tarjeta()))
#cambiar
    def cambiar_suscripcion(self, p_tipo_membresia):
        if p_tipo_membresia == 2:
            v_membresia = Familiar(self.get_correo(), self.get_numero_tarjeta())
        elif p_tipo_membresia == 3:
            v_membresia = SinConexion(self.get_correo(), self.get_numero_tarjeta())
        elif p_tipo_membresia == 4:
            v_membresia = Pro(self.get_correo(), self.get_numero_tarjeta())
        else:
            v_membresia = self

        return v_membresia
#
class Familiar(Basica, Membresia):
    def __init__(self, correo: str, numero_tarjeta: str):
        super().__init__(correo, numero_tarjeta)
        self.set_costo(5000)
        self.set_dispositivos(5)
        self.__diasregalo = 7

    def cambiar_suscripcion(self, p_tipo_membresia):
        if p_tipo_membresia == 1:
            v_membresia = Basica(self.get_correo(), self.get_numero_tarjeta())
        elif p_tipo_membresia == 3:
            v_membresia = SinConexion(self.get_correo(), self.get_numero_tarjeta())
        elif p_tipo_membresia == 4:
            v_membresia = Pro(self.get_correo(), self.get_numero_tarjeta())
        else:
            v_membresia = self

        return v_membresia
#agrega a esta sub clase nuevo metodo
    def cambiar_control_parental(self):
        pass
#
class SinConexion(Basica, Membresia):
    def __init__(self, correo: str, numero_tarjeta: str):
        super().__init__(correo, numero_tarjeta)
        self.set_costo(3500)
        self.set_dispositivos(2)
        self.__diasregalo = 7

    def cambiar_suscripcion(self, p_tipo_membresia):
        if p_tipo_membresia == 1:
            v_membresia = Basica(self.get_correo(), self.get_numero_tarjeta())
        elif p_tipo_membresia == 2:
            v_membresia = Familiar(self.get_correo(), self.get_numero_tarjeta())
        elif p_tipo_membresia == 4:
            v_membresia = Pro(self.get_correo(), self.get_numero_tarjeta())
        else:
            v_membresia = self

        return v_membresia
    
    def cambiar_contenido_disponible(self):
        pass
#
class Pro(SinConexion, Familiar, Membresia):
    def __init__(self, correo: str, numero_tarjeta: str):
        super().__init__(correo, numero_tarjeta)
        self.set_costo(7000)
        self.set_dispositivos(6)
        self.__diasregalo = 15

    def cambiar_suscripcion(self, p_tipo_membresia):
        if p_tipo_membresia == 1:
            v_membresia = Basica(self.get_correo(), self.get_numero_tarjeta())
        elif p_tipo_membresia == 2:
            v_membresia = Familiar(self.get_correo(), self.get_numero_tarjeta())
        elif p_tipo_membresia == 3:
            v_membresia = SinConexion(self.get_correo(), self.get_numero_tarjeta())
        else:
            v_membresia = self

        return v_membresia

