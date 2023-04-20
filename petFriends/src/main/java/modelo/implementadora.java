/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Other/File.java to edit this template
 */
package modelo;
import java.util.List;
/**
 *
 * @author Usuario
 */
public class implementadora implements ICalcular {

    @Override
    public int calPromedio(List<Mascota> mascotas, int nu) {
        int suma=0; 
        int prom; 
        for (Mascota mascota : mascotas) {
            suma=suma+mascota.getEdad(); 
        }
        prom=suma/nu; 
        return prom;
    }
    @Override
    public int calPoblacion(List<Mascota> mascotas, String tipo) {
        int numCaninos=0;
        int numFelinos=0;
        int fina=0;
        for (Mascota mascota : mascotas) {
            if (mascota instanceof Canino) {
                numCaninos++;
            } else if (mascota instanceof Felino) {
                numFelinos++;

        }
        if(tipo=="perritos"){
            fina=numCaninos; 
        }else if(tipo=="gatitos"){
            fina=numFelinos; 
        }
        
    }
      return fina;  
  }
}
