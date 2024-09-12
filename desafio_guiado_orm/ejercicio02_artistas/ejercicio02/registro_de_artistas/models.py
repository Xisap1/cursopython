from django.db import models
class Artista(models.Model):
 nombre = models.CharField(max_length=50, blank=False, null=False)
 apellido = models.CharField(max_length=50, blank=False, null=False)
 cantante = models.BooleanField(default=False)
 instrumento = models.CharField(max_length=50)
class Grupo(models.Model):
 nombre = models.CharField(max_length=50, blank=False, null=False)
 fecha_creacion = models.DateField(blank=False, null=False)
 artistas = models.ManyToManyField(
 "Artista", through="ArtistaGrupo", related_name="grupos"
 )
class ArtistaGrupo(models.Model):
 artista = models.ForeignKey("Artista", on_delete=models.DO_NOTHING)
 grupo = models.ForeignKey("Grupo", on_delete=models.CASCADE)
 fecha_ingreso = models.DateField()
 creacion_registro = models.DateField(auto_now_add=True)
 agregado_por = models.CharField(max_length=50)

class Album(models.Model):
 grupo = models.ForeignKey(
 "Grupo",null=False,
 blank=False,
 related_name="albumes",
 on_delete=models.CASCADE
 )
 titulo = models.CharField(max_length=50, null=False, blank=False)
 year = models.IntegerField(null=False, blank=False)
