from .models import Conductor, Direccion, Vehiculo
from datetime import date

def crear_conductor(rut, nombre, apellido, fecha_nac):
    """ Crea un nuevo conductor """
    conductor = Conductor(rut=rut, nombre=nombre, apellido=apellido, fecha_nac=fecha_nac)
    conductor.save()
    return conductor

def agregar_direccion_a_conductor(conductor, calle, numero, comuna, ciudad, region):
    """ Agrega una dirección al conductor """
    direccion = Direccion(conductor=conductor, calle=calle, numero=numero, comuna=comuna, ciudad=ciudad, region=region)
    direccion.save()
    return direccion

def agregar_un_vehiculo(conductor, patente, marca, modelo, year):
    """ Agrega un vehículo al conductor """
    vehiculo = Vehiculo(conductor=conductor, patente=patente, marca=marca, modelo=modelo, year=year)
    vehiculo.save()
    return vehiculo

def eliminar_vehiculo(vehiculo):
    """ Elimina un vehículo """
    vehiculo.delete()

def eliminar_conductor(conductor):
    """ Elimina un conductor y sus datos asociados """
    conductor.delete()
