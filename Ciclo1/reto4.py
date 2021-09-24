import json
def reto4():  
  diccionario=input("")
  dic=json.loads(diccionario)
  lista=[str(x) for x in input().split()]
  nombre=[]
  total=0
  for i in lista:
    if dic.get(i):
      nombre.append(i)
      total+=dic.get(i)
  print(total)
  print(" ".join(nombre))
reto4()
