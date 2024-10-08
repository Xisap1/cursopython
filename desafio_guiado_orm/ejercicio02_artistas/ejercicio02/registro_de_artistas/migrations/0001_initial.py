# Generated by Django 4.1 on 2024-09-12 21:23

from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):

    initial = True

    dependencies = []

    operations = [
        migrations.CreateModel(
            name="Artista",
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
                ("nombre", models.CharField(max_length=50)),
                ("apellido", models.CharField(max_length=50)),
                ("cantante", models.BooleanField(default=False)),
                ("instrumento", models.CharField(max_length=50)),
            ],
        ),
        migrations.CreateModel(
            name="ArtistaGrupo",
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
                ("fecha_ingreso", models.DateField()),
                ("creacion_registro", models.DateField(auto_now_add=True)),
                ("agregado_por", models.CharField(max_length=50)),
                (
                    "artista",
                    models.ForeignKey(
                        on_delete=django.db.models.deletion.DO_NOTHING,
                        to="registro_de_artistas.artista",
                    ),
                ),
            ],
        ),
        migrations.CreateModel(
            name="Grupo",
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
                ("nombre", models.CharField(max_length=50)),
                ("fecha_creacion", models.DateField()),
                (
                    "artistas",
                    models.ManyToManyField(
                        related_name="grupos",
                        through="registro_de_artistas.ArtistaGrupo",
                        to="registro_de_artistas.artista",
                    ),
                ),
            ],
        ),
        migrations.AddField(
            model_name="artistagrupo",
            name="grupo",
            field=models.ForeignKey(
                on_delete=django.db.models.deletion.CASCADE,
                to="registro_de_artistas.grupo",
            ),
        ),
        migrations.CreateModel(
            name="Album",
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
                ("titulo", models.CharField(max_length=50)),
                ("year", models.IntegerField()),
                (
                    "grupo",
                    models.ForeignKey(
                        on_delete=django.db.models.deletion.CASCADE,
                        related_name="albumes",
                        to="registro_de_artistas.grupo",
                    ),
                ),
            ],
        ),
    ]
