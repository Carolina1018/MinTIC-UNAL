package melomanos;

import java.util.ArrayList;
import java.util.List;
import java.util.Objects;

public class Melomanos {
    
    public static ArrayList<String> lista = new ArrayList<>(List.of("boleros", "rock", "boleros", "pop", "baladas", "baladas", "merengue", "baladas", "merengue", "salsa", "rancheras", "vallenato"));
    
    public static ArrayList<Integer> lista2 = new ArrayList<>(List.of(0,3,6,9));
    public static ArrayList<String> lista3 = new ArrayList<>(List.of("boleros", "rock", "boleros", "pop",  "baladas", "merengue", "baladas", "merengue", "boleros" , "vallenato", "rancheras", "vallenato"));
    public static String nomGenero = "vallenato";
    
    public static ArrayList<String> lista4 = new ArrayList<>(List.of("Gracias a la vida", "A Dios le pido", "Bendita tu luz", "Bésame mucho", "Matador", "Bailando", "Pedro navaja"));
    public static ArrayList<String> lista5 = new ArrayList<>(List.of("A Dios le pido", "Querida", "Yolanda", "Bésame mucho", "La bamba", "La flaca", "Matador", "Gracias a la vida"));
    
    public static ArrayList<String> lista6 = new ArrayList<>(List.of("Gracias a la vida", "A Dios le pido", "Bendita tu luz", "Bésame mucho", "Matador", "Bailando", "Pedro navaja"));
    public static ArrayList<String> lista7 = new ArrayList<>(List.of("A Dios le pido",  "Querida",  "Yolanda",  "Bésame mucho",  "La bamba", "La flaca", "Matador", "Gracias a la vida"));
    
    public static void main(String[] args) {
        System.out.println(generos(lista));
        System.out.println(albumQueNoTengo(lista2,lista3,nomGenero));
        System.out.println(noHeEscuchado(lista4,lista5));
        System.out.println(paraIntercambiar(lista6,lista7));
    } 
    
    public static ArrayList<String> generos(ArrayList<String> lista){
        ArrayList<String> resp1 = new ArrayList<String>();
        for(int i = 0; i<lista.size();i++){
            if(!(resp1.contains(lista.get(i)))){
                resp1.add(lista.get(i));
            } 
        }
        return resp1;
    }
    
    public static ArrayList<String> albumQueNoTengo(ArrayList<Integer> posiciones, ArrayList<String> nombres, String nombreGenero){
        
        ArrayList<String> resp2 = new ArrayList<String>(); 
        ArrayList<Integer> posi = new ArrayList<Integer>(); 
        
        for (int i = 0; i < nombres.size(); i++){
            if(nombreGenero.equals(nombres.get(i))){
                posi.add(i);
            }            
        } 
        for (int i = 0; i < posiciones.size(); i++){
            for (int j = 0; j < posi.size(); j++){
                if(Objects.equals(posiciones.get(i),posi.get(j))){
                    resp2.add(String.valueOf(posiciones.get(i)));
                } 
            }
        }
        return resp2;
    }
    
    public static ArrayList<String> noHeEscuchado(ArrayList<String> cancionesColeccionista, ArrayList<String> cancionesPropias){
        
        ArrayList<String> resp3 = new ArrayList<String>();
        for(int i = 0; i<cancionesColeccionista.size();i++){
            if (!(cancionesPropias.contains(cancionesColeccionista.get(i)))){
                resp3.add(cancionesColeccionista.get(i));
            }
        }
        return resp3;
    }
    public static Integer paraIntercambiar(ArrayList<String> cancionesColeccionista, ArrayList<String> cancionesPropias){
        
        int cont1=0;
        int cont2=0;
        int resp;
        for (int i = 0; i < cancionesPropias.size(); i++){
            if(!cancionesColeccionista.contains(cancionesPropias.get(i))){
                cont1 ++;
            }
        }
        
        for (int i = 0; i < cancionesColeccionista.size(); i++){
            if(!cancionesPropias.contains(cancionesColeccionista.get(i))){
                cont2 ++;
            }
        }
        
        if (cont1 < cont2){
            resp = cont1;
        }
        else{
            resp = cont2;
        }
        return resp;
    }
}
