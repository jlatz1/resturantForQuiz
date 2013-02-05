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
               String orders[] = request.getAttribute("selectedFoods");
            for(int x = 0; x < orders.length; x++){
                out.println("<li>" + orders.length + "</li>");
            }
            out.println("</ul>");
            
            %>
        </ul>
    </body>
</html>
