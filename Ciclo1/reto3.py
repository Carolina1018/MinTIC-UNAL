def reto3():
    lista=[str(x) for x in input().split()]
    lista2=""
    lista.append(" ")
    total=""
    cont=1   
    for i in range (len(lista)-1):
        if lista[i]==lista[i+1]:
            cont+=1 
        else:
            lista2+=lista[i]
            total+=str(cont)
            cont=1
    for i in lista2:  
        print(i,end=" ")
    print()
    for i in total:
        print(i,end=" ")
reto3()
