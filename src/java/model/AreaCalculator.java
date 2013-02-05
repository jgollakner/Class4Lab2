/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

/**
 *
 * @author JoeGollakner
 */
public class AreaCalculator {
    
    public double getArea(String l, String w){
        
        double dl = Double.parseDouble(l);
        double dw = Double.parseDouble(w);
        
        double area = dl * dw;
        
        return area;
    }
}
