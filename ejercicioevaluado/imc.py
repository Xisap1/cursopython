import math
# Solicitud de Inputs
w= float(input("Ingrese peso de la persona en Kg:\n>"))
h= float(input("Ingrese la altura en metros:\n>"))

# cálculo de calorías
imc = w / (h ** 2)
# entregar output en el formato solicitado
print(f'EL valor del IMC en Kg/m2 es: {math.ceil(imc)}')

if imc < 18.5:
 print("La clasificación OMS es bajo peso ") 

elif 18.5 <= imc and imc < 25:
 print("La clasificación OMS es adecuado ")

elif 25 <= imc and imc <30:
  print("La clasificación OMS es sobrepeso")

elif 30 <= imc and imc <35:
  print("La clasificación OMS es Obesidad Grado I")

elif 35 <= imc and imc <40:
  print("La clasificación OMS es Obesidad Grado II")

else: 
 print("La clasificación OMS es Obesidad Grado III")