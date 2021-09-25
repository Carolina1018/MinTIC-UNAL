def clases(lista):
    lista1=[]
    for i in lista:
        if i not in lista1:
            lista1.append(i)
    return lista1

def mefaltandelaclase(faltan,clases,clase_tazo):
    resp = []
    posi = []
    for i in range(len(clases)):
        if clase_tazo == clases[i]:
            posi.append(i)
    for i in range(len(posi)):
        if posi[i] in faltan:
            resp.append(posi[i])
    return resp
      
def notengo(lista1,lista2):
    lista3=[]
    for i in lista1:
        if i not in lista2:
            lista3.append(i)
    return lista3
    
def puedocambiar(lis1,lis2):
    cont1=0
    cont2=0
    for i in range(len(lis2)):
        if lis2[i] not in lis1:
            cont1+=1
    for i in range(len(lis1)):
        if lis1[i] not in lis2:
            cont2+=1
    if cont1 < cont2:
        return cont1
    else:
        return cont2
    
