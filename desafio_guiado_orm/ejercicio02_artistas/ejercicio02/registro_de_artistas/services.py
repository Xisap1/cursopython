from registro_de_artistas.models import Artista, Album, ArtistaGrupo, Grupo
from datetime import date

def crear_artista(nombre, apellido, cantante=False, instrumento=""):
    artista = Artista(
        nombre=nombre, apellido=apellido, cantante=cantante, 
        instrumento=instrumento
    )
    artista.save()
    return artista

def crear_grupo(nombre, fecha_creacion):
    if not isinstance(fecha_creacion, date):
        print("fecha con formato inválido, por favor, ingresar en este formato: date(2000, 02, 28)")
        return None

    grupo = Grupo(nombre=nombre, fecha_creacion=fecha_creacion)
    grupo.save()
    return grupo

def relacion_artista_grupo(artista, grupo, fecha_ingreso=None, agregado_por=None):
    if not isinstance(fecha_ingreso, date):
        print("fecha con formato inválido, por favor, ingresar en este formato: date(2000, 02, 28)")
        return None

    artista_relacion_grupo = ArtistaGrupo(
        artista=artista,
        grupo=grupo,
        fecha_ingreso=fecha_ingreso,
        agregado_por=agregado_por
    )
    artista_relacion_grupo.save()
    return artista_relacion_grupo

def agregar_album(grupo, titulo, year):
    album = Album(
        grupo=grupo, titulo=titulo, year=year
    )
    album.save()
    return album

def obtiene_artista(nombre, apellido):
    return (
        Artista.objects
        .filter(nombre=nombre)
        .filter(apellido=apellido).first()
    )

def obtiene_grupo(nombre):
    return (
        Grupo.objects
        .filter(nombre=nombre).first()
    )

def artista_pertenece_a_grupos(artista):
    if hasattr(artista, "grupos"):
        return artista.grupos.all()
    else:
        return None

def artista_participa_albumes(artista):
    """si el artista no tiene el atributo grupos, retorna None"""
    if not hasattr(artista, "grupos"):
        return None

    encontrado = []
    for g in artista.grupos.all():
        if not hasattr(g, "albumes"):
            continue
        albumes = g.albumes.all()
        datos = {
            "grupo": g.nombre,
            "albumes": albumes
        }
        encontrado.append(datos)
    return encontrado

def grupo_albumes(grupo):
    if not hasattr(grupo, "albumes"):
        return None

    encontrado = []
    for a in grupo.albumes.all():
        encontrado.append(a)
    return encontrado
