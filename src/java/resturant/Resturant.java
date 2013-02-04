/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package resturant;

/**
 *
 * @author Jessie
 */
public class Resturant {
    
    private String name;
    
    public Resturant(String name){
        setName(name);
    }

    /**
     * @return the name
     */
    public String getName() {
        return name;
    }

    /**
     * @param name the name to set
     */
    public void setName(String name) {
        this.name = name;
    }
}
