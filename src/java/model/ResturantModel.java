/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package model;
import java.util.ArrayList;
import resturant.Resturant;

/**
 *
 * @author Jessie
 */
public class ResturantModel {
    private ArrayList<Resturant> orders = new ArrayList<Resturant>();
    private String [] foods;
    
    public ResturantModel(String[] foods){
        this.foods = foods;
}
       public ArrayList<Resturant> processOrders() {
        for(int x = 0; x < foods.length; x++) { 
            Resturant r = new Resturant(foods[x]);
            orders.add(r);
        }
        return orders;
    }
    
}
