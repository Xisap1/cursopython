def choose_level(n_pregunta, p_level):
    
    # Construir lógica para escoger el nivel
    ##################################################
    if p_level == 1:
        if n_pregunta == 1:
            return 'basicas'
        elif n_pregunta == 2:
            return 'intermedias'
        else:
            return 'avanzadas'
    elif p_level == 2:
        if n_pregunta < 3:
            return 'basicas'
        elif n_pregunta < 5:
            return 'intermedias'
        else:
            return 'avanzadas'

    else:
        
        if n_pregunta < 4:
            return 'basicas'
        elif n_pregunta < 7:
            return 'intermedias'
        else:
            return 'avanzadas'

        
    
    ##################################################
    
    #return level # ESTABA EN EL CODIGO DE APOYO PERO NO ME SIRVE AL PARECER

if __name__ == '__main__':
    # verificar resultados
    print(choose_level(2, 2)) # básicas
    print(choose_level(3, 2)) # intermedias
    print(choose_level(7, 2)) # avanzadas
    print(choose_level(4, 3)) # intermedias