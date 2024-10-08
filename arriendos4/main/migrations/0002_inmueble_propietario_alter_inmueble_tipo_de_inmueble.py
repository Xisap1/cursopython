# Generated by Django 5.1.1 on 2024-09-09 19:28

import django.db.models.deletion
from django.conf import settings
from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ("main", "0001_initial"),
        migrations.swappable_dependency(settings.AUTH_USER_MODEL),
    ]

    operations = [
        migrations.AddField(
            model_name="inmueble",
            name="propietario",
            field=models.ForeignKey(
                null=True,
                on_delete=django.db.models.deletion.RESTRICT,
                related_name="inmueble",
                to=settings.AUTH_USER_MODEL,
            ),
        ),
        migrations.AlterField(
            model_name="inmueble",
            name="tipo_de_inmueble",
            field=models.CharField(
                choices=[
                    ("casa", "Casa"),
                    ("departamento", "Departamento"),
                    ("parcela", "Parcela"),
                ],
                max_length=20,
            ),
        ),
    ]
