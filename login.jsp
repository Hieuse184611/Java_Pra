<%-- 
    Document   : login
    Created on : Jan 24, 2024, 5:06:46 PM
    Author     : NITRO
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Login Page</title>
    </head>
    <body>
        <h1>Input for information</h1>
        <form action="MainController" method="post">
            User ID:<input type="text" name="userID"/></br>
            Password:<input type="password" name="password"/></br>
            <input type="submit" name="action" value="Login"/>
            <input type="reset" value="reset"/>
        </form>
        
        <% 
            String error = (String)request.getAttribute("ERROR");
            if(error==null) {
                error = "";
            }
         %>
         <%= error %>
    </body>
</html>
