
from django.shortcuts import render
from django.http import HttpResponse


def home(request):
    return HttpResponse(""""
        <a href="/about">About</a>
        <a href="/contact">Contact</a>
        <h1>Home</h1>
        <h2>Este es el home</h2>
                        """

    )

def about(request):
    return HttpResponse(""""
        <a href="/">Home</a>
        <a href="/contact">Contact</a>
        <h1>About</h1>
        <h2>Acerca de nosotros</h2>
                        """

    )

def contact(request):
    return HttpResponse(""""
        <a href="/">Home</a>
        <a href="/about">About</a>
        <h1>Contact</h1>
                        
        <p>
        <table>
            <tr>
                <td>Nombre:</td>
                <td><input type="text" id="nombre"></td>
            </tr>
        </table>
        <input type="button" id="submit" value="Enviar">
        """)
         
       
