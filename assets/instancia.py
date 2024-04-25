from te import Te

te_negro = Te()
te_verde = Te()
infusion_de_hierba = Te()

tipo_te_negro = type(te_negro)
tipo_te_verde = type(te_verde)

print(f"el tipo de dato de te negro es (tipo_te_negro)")
print(f"el tipo de dato de te verde es (tipo_te_verde)")

if tipo_te_negro == tipo_te_verde:
    print("ambos objetos son del mismo tipo")

else:
    print("los objetos no son del mismo tipo")

