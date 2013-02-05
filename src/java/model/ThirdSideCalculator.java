/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

/**
 *
 * @author JoeGollakner
 */
public class ThirdSideCalculator {
    
    public double getSideThree(String a, String b){
        
        double sa = Double.parseDouble(a);
            double sb = Double.parseDouble(b);
            
            double thirdSide = Math.sqrt(Math.pow(sa, 2) + Math.pow(sb, 2));
        
        return thirdSide;
        
    }
    
}
