/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Interface.java to edit this template
 */
package modelo;
import java.util.List;

/**
 *
 * @author Usuario
 */
public interface ICalcular {
    int calPromedio(List<Mascota> mascotas, int nu); 
    int calPoblacion(List<Mascota> mascotas, String tipo); 
}
