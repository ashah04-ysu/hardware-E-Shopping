package Java;

import java.util.ArrayList;
import java.util.UUID;

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 *
 * @author mahar
 */
public class HardwareArray {
    
    ArrayList<Hardware> hardwares;
    
    
    //the constructor initializes the array.
    public HardwareArray(){
        hardwares = new ArrayList(); 
        hardwares.add(new Hardware(UUID.randomUUID(),"Hardisk","Anker","1q2w3e",50));
        hardwares.add(new Hardware(UUID.randomUUID(),"RAM","Intel","4r5t6y",20));
        hardwares.add(new Hardware(UUID.randomUUID(),"Monitor","Samsung","7u8i9o",500));
    }
    
    // Adding object to the hardware list.
//    public void addObject(){
//        hardwares.add(new Hardware(UUID.randomUUID(),"Hardisk","Anker","1q2w3e",50));
//        hardwares.add(new Hardware(UUID.randomUUID(),"RAM","Intel","4r5t6y",20));
//        hardwares.add(new Hardware(UUID.randomUUID(),"Monitor","Samsung","7u8i9o",500));
//    }

    //Return the list of Hardwares to show in JSP
    public ArrayList<Hardware> getHardwares() {
        return hardwares;
    }
    
    // Search the current hardware list with item and serial and return corresponding item.
    public Hardware getHardware(String brand,String serial){
        for (int i=0; i<hardwares.size(); i++){
            Hardware hardware = hardwares.get(i);
            if (brand.equals(hardware.getHardwarebrand()) && serial.equals(hardware.getHardwareserial())){
                return hardware;
            }
        }
        return null;
        
    }
    
    public void add(Hardware hardware){
        hardwares.add(hardware);
    }
    
   
}
