package Java;

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
public class Hardware {
    private UUID hardwareid;
    private String hardwareitem;
    private String hardwarebrand;
    private String hardwareserial;
    private int price;
    
  
    public Hardware(UUID hardwareid,String item, String brand, String serial, int price){
        this.hardwareid = hardwareid;
        this.hardwareitem = item;
        this.hardwarebrand = brand;
        this.hardwareserial = serial;
        this.price = price;
        
    }
    
    public Hardware(){
        
    }
    
    public UUID getHardwareid() {
        return hardwareid;
    }

    public void setHardwareid(UUID hardwareid) {
        this.hardwareid = hardwareid;
    }

    public String getHardwareitem() {
        return hardwareitem;
    }

    public void setHardwareitem(String hardwareitem) {
        this.hardwareitem = hardwareitem;
    }

    public String getHardwarebrand() {
        return hardwarebrand;
    }

    public void setHardwarebrand(String hardwarebrand) {
        this.hardwarebrand = hardwarebrand;
    }

    public String getHardwareserial() {
        return hardwareserial;
    }

    public void setHardwareserial(String hardwareserial) {
        this.hardwareserial = hardwareserial;
    }

    public int getPrice() {
        return price;
    }

    public void setPrice(int price) {
        this.price = price;
    }
    
    
}
