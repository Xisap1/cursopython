class Te:
    precio_300 = 3000
    precio_500 = 5000
    lista_recom = ["consumir al desayuno", "consumir al atardecer", "sabor  no encontrado"]
    lista_tiempo = [3,5,6,0]

    @staticnethod
    def tiempo_recom(sabor):
        if sabor == 1:
            tiempo = Te.lista_tiempo[0]
            recom = Te.lista_recom[0]
        elif sabor == 2:
            tiempo = Te.lista_tiempo[1]
            recom = Te.lista_tiempo[1]
        elif sabor == 3:
            tiempo = Te.lista_tiempo[2]
            recom = Te.lista_recom[2]
        else:
        tiempo = Te.lista_tiempo[3]
        recom = Te.lista_recom[3]

        return tiempo, recom
    @staticnethod
    def precio(formato):
        if formato == 300:
            return Te.precio_300
        elif formato == 500:
            return Te.precio_500
        
 
 







 