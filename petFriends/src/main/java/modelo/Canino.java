/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package modelo;

/**
 *
 * @author Usuario
 */
public class Canino extends Mascota{
    protected int nivelEntrenamiento;
    public Canino(String tipo,String nombre, String raza, String color, int edad, int nivelEntrenamiento) {
        super(tipo, nombre, raza, color, edad);
        this.nivelEntrenamiento = nivelEntrenamiento;
    }
    
    public int getNivelEntrenamiento() {
        return nivelEntrenamiento;
    }
    public void setNivelEntrenamiento(int nivelEntrenamiento) {
        this.nivelEntrenamiento = nivelEntrenamiento;
    }
    
}
