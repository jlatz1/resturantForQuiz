<%-- 
    Document   : index
    Created on : Feb 4, 2013, 11:56:53 AM
    Author     : Jessie
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Menu</title>
        <script type="text/javascript">
            
            function addFoodItem(mnuFoods, selFoods){
                if(mnuFoods.selectedIndex == -1){
                    alert("no item added; close, but no cigar!!!");
                    
                }else{
                    if(selFoods.length == 0){
                        selFoods.options[0] = new Option(mnuFoods.options[mnuFoods.selectedIndex].text);
                    }else{
                         selFoods.add(new Option(mnuFoods.options[mnuFoods.selectedIndex].text), selFoods.options[selFoods.length]);
                    }
                }
            }
            
            function removeFoodItem(selFoods){
                 if(selFoods.selectedIndex == -1) {
                    alert("You must select an item to remove!!");
                } else {
                    selFoods.remove(selFoods.selectedIndex);
                }
            }
            function checkSelectedFoods(foods){
                if(foods.length < 1){
                    alert("empty!! Close, but no cigar!!");
                    return false;
                }
                for(x = 0; x < foods.length; x++){
                    foods.options[x].selected = true;
                
                }
                    return true;
                    
            }
            
            
            
            
            </script>
    </head>
    
         
            
    <body>
         <h1 align="center">Menu</h1>
            <form id="menu" name="menu" action="ResturantControllers?action=order" method="POST" onSubmit="return checkSelectedFoods(selectedFoods)">
                     <table width="45%" align="center" border="0">
                <tr>
                    <td width="35%" bgcolor="red" align="center">
                        <strong>Food Menu</strong>
                    </td>
                    <td width="20%" bgcolor="red" align="center">
                        <strong>Actions</strong>
                    </td>
                    <td width="35%" bgcolor="red" align="center">
                        <strong>Selected Food Items</strong>
                    </td>
                </tr>
                <tr>
                    <td width="40%" bgcolor="red" align="center">
                        <select id="menuFoods" name="menuFoods" size="5" style="width: 25ex;">
                            <option value="1">Cheeseburger- $3.75</option>
                            <option>Pork Sandwich- $5.25</option>
                            <option>Ham Salad Sandwich- $4.50</option> 
                            <option>Chicken Wings- $3.25 for 6</option>
                            <option>Fries- $2.50</option>
                            <option>Chips- $1.75</option>
                            <option>Apple pie- $2.75/slice</option>
                            <option>Miller Lite Beer- $4.25</option>
                            <option>Apple Martini- $7.50</option>
                            <option>Coke 16oz- $1.50</option>
                            <option>Mellow Yellow 16oz- $1.50</option>
                            <option>Sprite 16oz- $1.50</option>
                            <option>Diet Coke 16oz- $1.50</option>
                        </select>
                    </td>
                    <td width="20%" bgcolor="red" align="center">
                        <input type="button" onClick="addFoodItem(menuFoods, selectedFoods)" value="Add ->" />
                        <br />
                        <input type="button" onClick="removeFoodItem(selectedFoods)" value="<- Remove" />
                        <br />
                        <input type="submit" value="Submit" />
                    </td>
                    <td width="35%" bgcolor="red" align="center">
                        <select id="selectedFoods" name="selectedFoods" size="5" multiple="true" style="width: 25ex;">
                            
                        </select>
                    </td>
                </tr>
                
                
            </table>
            
        </form>
            
    </body>
</html>
