def puntaje(toledo):
    norato = (2 * toledo) + 4
    barrero = (toledo + norato) // 5
    print(toledo, norato, barrero, end=" ")
    print("\n")
    if barrero >= 0 and barrero <= 20:
        print("uno")
    elif barrero >= 21 and barrero <= 30:
        print("dos")
    elif barrero >= 31 and barrero <= 50:
        print("tres")
    else:
        print("cuatro")

def main():
    toledo = int(input())
    puntaje(toledo)
main()
