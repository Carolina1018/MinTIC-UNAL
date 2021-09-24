package contratacion;

public class MedioTiempo extends Empleado{
    
    private float valorHora;

    public MedioTiempo(String tipo, int identificacion, String nombre, float peso, float valorHora) {
        super(tipo, identificacion, nombre, peso);
        this.valorHora = valorHora;
    }

    public float getValorHora() {
        return valorHora;
    }

    public void setValorHora(float valorHora) {
        this.valorHora = valorHora;
    }   
}
