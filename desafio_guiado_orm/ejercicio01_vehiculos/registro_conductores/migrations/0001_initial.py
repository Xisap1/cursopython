# Generated by Django 5.1.1 on 2024-09-12 20:27

import django.db.models.deletion
from django.db import migrations, models


class Migration(migrations.Migration):

    initial = True

    dependencies = []

    operations = [
        migrations.CreateModel(
            name="Conductor",
            fields=[
                (
                    "rut",
                    models.CharField(max_length=9, primary_key=True, serialize=False),
                ),
                ("nombre", models.CharField(max_length=50)),
                ("apellido", models.CharField(max_length=50)),
                ("fecha_nac", models.DateField()),
            ],
        ),
        migrations.CreateModel(
            name="Direccion",
            fields=[
                (
                    "id",
                    models.BigAutoField(
                        auto_created=True,
                        primary_key=True,
                        serialize=False,
                        verbose_name="ID",
                    ),
                ),
                ("calle", models.CharField(max_length=50)),
                ("numero", models.CharField(max_length=10)),
                ("dpto", models.CharField(blank=True, max_length=50, null=True)),
                ("comuna", models.CharField(max_length=50)),
                ("ciudad", models.CharField(max_length=50)),
                ("region", models.CharField(max_length=50)),
                (
                    "conductor",
                    models.OneToOneField(
                        on_delete=django.db.models.deletion.CASCADE,
                        to="registro_conductores.conductor",
                    ),
                ),
            ],
        ),
        migrations.CreateModel(
            name="Vehiculo",
            fields=[
                (
                    "id",
                    models.BigAutoField(
                        auto_created=True,
                        primary_key=True,
                        serialize=False,
                        verbose_name="ID",
                    ),
                ),
                ("patente", models.CharField(max_length=6)),
                ("marca", models.CharField(max_length=50)),
                ("modelo", models.CharField(max_length=50)),
                ("year", models.IntegerField()),
                (
                    "conductor",
                    models.ForeignKey(
                        on_delete=django.db.models.deletion.CASCADE,
                        to="registro_conductores.conductor",
                    ),
                ),
            ],
        ),
    ]