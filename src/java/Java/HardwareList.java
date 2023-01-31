/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Java;

import java.util.ArrayList;

/**
 *
 * @author mahar
 */
public class HardwareList {
    private final ArrayList<Hardware> hardwares;
    
    public HardwareList(){
        hardwares = new ArrayList();
    }

    public ArrayList<Hardware> getHardwares() {
        return hardwares;
    }
   
    
    public void add(Hardware h){
        hardwares.add(h);
    }
    
    public int getSize(){
        return hardwares.size();
    }
    
    public Hardware getHardwares(String brand, String serial){
        for (int i = 0; i < hardwares.size(); i++) {
            Hardware h = hardwares.get(i);
            if (brand.equals(h.getHardwarebrand()) && 
                serial.equals(h.getHardwareserial())) {
                return h;
            }
        }
        return null;
    }

   public void drop(String brand, String serial) {
        Hardware h = getHardwares(brand, serial);
        hardwares.remove(h);
    } 
    
}


