<%-- 
    Document   : menu
    Created on : Feb 4, 2013, 12:49:37 PM
    Author     : Jessie
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="resturant.Resturant;"%>
<%@page import= "java.util.ArrayList;"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Menu results!</title>
    </head>
    <body>
        <h1 align="center">Menu results!</h1>
        
        <p>Thank you for your input. Here are your results!!</p>
        
        <ul>
            <% 
           
            try{
           ArrayList<Resturant> orders = (ArrayList)request.getAttribute("orders");
            for(int x = 0; x < orders.size(); x++) {
            out.println("<li>" + orders.get(x).getName() + "</li>");
    }   
            
                  out.println("</ul>");
           }catch(NullPointerException ne){
                 out.println("Cannot be null! Close, but no cigar!!");            
                             
        }
        
          
                    
            %>
        </ul>
        <p><a href="index.jsp">Back to Menu Home</a></p>
    </body>
</html>
