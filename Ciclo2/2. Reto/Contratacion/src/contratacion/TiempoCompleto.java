package contratacion;

public class TiempoCompleto extends Empleado {
    
    private float salario;

    public TiempoCompleto(String tipo, int identificacion, String nombre, float peso, float salario) {
        super(tipo, identificacion, nombre, peso);
        this.salario = salario;
    }
    
    public float getSalario() {
        return salario;
    }

    public void setSalario(float salario) {
        this.salario = salario;
    }   
}
