def adivina(cadena1,cadena2,cadena3):
    cont1=0
    cont2=0
    salida=""
    for i in range (len(cadena3)):
      p1=0
      p2=0
      if cadena3[i] in cadena1:
        p1=1
        cont1+=1
      else: 
        p1=0
      if cadena3[i] in cadena2:
        p2=1
        cont2+=1
      else:
        p2=0
      if cont1 > cont2:
        salida+="J"
      elif cont1 < cont2:
        salida+="K"
      else:
        salida+="L"
    print(salida)

def main():
    cadena1 = tuple(input())
    print()
    cadena2 = tuple(input())
    print()
    cadena3 = tuple(input())
    print()
    adivina(cadena1,cadena2,cadena3)
main()
