<%-- 
    Document   : user
    Created on : Jan 24, 2024, 5:07:02 PM
    Author     : NITRO
--%>

<%@page import="sample.sp24.t4s4.user.UserDTO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>User Page</title>
    </head>
    <body>
        <%
              UserDTO loginUser = (UserDTO)session.getAttribute("LOGIN_USER");
        %>
        User information:
        <br>UserID:<%= loginUser.getUserID()%>
        <br>Full Name<%= loginUser.getFullName()%>
        <br>ID:<%= loginUser.getRoleID()%>        
        <br>Password<%= loginUser.getPassword()%>
    </body>
</html>
