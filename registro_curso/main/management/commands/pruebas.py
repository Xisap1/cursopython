from django.core.management.base import BaseCommand
from main.services import *

class Command(BaseCommand):
    def handle(self, *args, **kwargs):
        imprime_estudiante_cursos('2-1')
        print('Acción realizada')

