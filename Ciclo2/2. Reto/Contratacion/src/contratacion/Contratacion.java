package contratacion;
import java.util.ArrayList;
import java.util.Scanner;
import java.lang.Object;

public class Contratacion {

    Scanner opcion;
    String opcionSeleccionada;
    String[] parametro;
    boolean flag = true;
    TiempoCompleto empleado;
    private ArrayList<Object> listaEmpleados = new ArrayList<>();    
    
    public static void main(String[] args) {
        Contratacion contratacion = new Contratacion();
        contratacion.procesarComando();
    }
    public void procesarComando(){        
        while(flag) {            
            System.out.println("Menu principal \n 1. Agregar Empleado de tiempo completo \n 2. Agregar un empleado de medio tiempo");        
            opcion = new Scanner(System.in);        
            opcionSeleccionada = opcion.nextLine();
            parametro = opcionSeleccionada.split("&");            
            if (parametro[0].equals("1")){
                contratarEmpleado(parametro);
            }
            if (parametro[0].equals("2")){
                listarEmpleado(listaEmpleados);
                System.out.println("3. Salir");
                opcionSeleccionada = opcion.nextLine();
                if(opcionSeleccionada.equals("3")){
                    System.exit(0);
                }
            }
        }
    }
    public void contratarEmpleado(String[] parametro){
        switch (parametro[1]) {
            case "Tiempo Completo" -> {
                TiempoCompleto empleado1;
                empleado1 = new TiempoCompleto(parametro[1],Integer.parseInt(parametro[2]),parametro[3],Float.parseFloat(parametro[4]),Float.parseFloat(parametro[5]));
                listaEmpleados.add(empleado1);
            }
            case "Medio Tiempo" -> {
                MedioTiempo empleado2;
                empleado2 = new MedioTiempo(parametro[1],Integer.parseInt(parametro[2]),parametro[3],Float.parseFloat(parametro[4]),Float.parseFloat(parametro[5]));
                listaEmpleados.add(empleado2);
            }
            default -> System.out.println("Persona Invalida");
       }
    }
    public void listarEmpleado(ArrayList<Object> listaEmpleados){
        System.out.println("***Listado de Empleados***");
        for (int i = 0; i < listaEmpleados.size(); i++){
            if (listaEmpleados.get(i).getClass() == TiempoCompleto.class){                        
                TiempoCompleto empleado3 = (TiempoCompleto) listaEmpleados.get(i);
                System.out.println("\tEmpleado Tiempo Completo - Identificación:" + empleado3.getIdentificacion());
                System.out.println("\tnombre:" + empleado3.getNombre());
                System.out.println("\tpeso:" + empleado3.getPeso());
                System.out.println("\tsalario:" + empleado3.getSalario());
            }
            else if(listaEmpleados.get(i).getClass() == MedioTiempo.class){
                MedioTiempo empleado4 = (MedioTiempo) listaEmpleados.get(i);
                System.out.println("\tEmpleado Medio Tiempo - Identificación:" + empleado4.getIdentificacion());
                System.out.println("\tnombre:" + empleado4.getNombre());
                System.out.println("\tpeso:" + empleado4.getPeso());
                System.out.println("\tValor hora:" + empleado4.getValorHora());
             }
        }
    }
}
