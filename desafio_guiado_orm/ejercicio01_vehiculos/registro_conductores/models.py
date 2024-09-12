from django.db import models

class Conductor(models.Model):
    rut = models.CharField(max_length=9, primary_key=True)
    nombre = models.CharField(max_length=50)
    apellido = models.CharField(max_length=50)
    fecha_nac = models.DateField()

    def __str__(self):
        return f'{self.nombre} {self.apellido}'

class Direccion(models.Model):
    calle = models.CharField(max_length=50)
    numero = models.CharField(max_length=10)
    dpto = models.CharField(max_length=50, null=True, blank=True)
    comuna = models.CharField(max_length=50)
    ciudad = models.CharField(max_length=50)
    region = models.CharField(max_length=50)
    conductor = models.OneToOneField(Conductor, on_delete=models.CASCADE)

    def __str__(self):
        return f'{self.calle} {self.numero}, {self.comuna}'

class Vehiculo(models.Model):
    patente = models.CharField(max_length=6)
    marca = models.CharField(max_length=50)
    modelo = models.CharField(max_length=50)
    year = models.IntegerField()
    conductor = models.ForeignKey(Conductor, on_delete=models.CASCADE)

    def __str__(self):
        return f'{self.marca} {self.modelo} ({self.patente})'
