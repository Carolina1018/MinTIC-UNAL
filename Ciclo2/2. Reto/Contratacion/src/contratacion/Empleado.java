package contratacion;

public class Empleado {
    
    private int identificacion;
    private String nombre;
    private float peso;
    private String tipo;

    public Empleado(String tipo, int identificacion, String nombre, float peso) {
        this.identificacion = identificacion;
        this.nombre = nombre;
        this.peso = peso;
        this.tipo = tipo;
    }

    public int getIdentificacion() {
        return identificacion;
    }

    public void setIdentificacion(int identificacion) {
        this.identificacion = identificacion;
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public float getPeso() {
        return peso;
    }

    public void setPeso(float peso) {
        this.peso = peso;
    }

    public String getTipo() {
        return tipo;
    }

    public void setTipo(String tipo) {
        this.tipo = tipo;
    }   
}
