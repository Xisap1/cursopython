# Generated by Django 4.1 on 2024-10-26 11:23

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ("productos", "0010_combo_descripcion_combo_imagen"),
    ]

    operations = [
        migrations.AddField(
            model_name="orden",
            name="combos",
            field=models.ManyToManyField(blank=True, to="productos.combo"),
        ),
        migrations.AddField(
            model_name="orden",
            name="productos",
            field=models.ManyToManyField(blank=True, to="productos.producto"),
        ),
    ]