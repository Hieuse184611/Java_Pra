<%-- 
    Document   : createuser
    Created on : Feb 21, 2024, 4:49:02 PM
    Author     : lenovo
--%>

<%@page import="sample.sp24.t4s4.user.UserError"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Create new user</h1>
        <%
            UserError userError=(UserError) request.getAttribute("USER_ERROR");
            if(userError==null) userError=new UserError();
            %>
        <form action="MainController" method="POST">
            UserID <input type="text" name="fullName" required=""/>
            </br>FullName<input type="text" name="fullName" required=""/>
             </br>RoleID<select name="roleID"/>
             <option value="AD">AD</option> 
             <option value="US">US</option>
             <option value="OTHER">Other</option>
        </select>
              </br>Password<input type="password" name="password" required=""/>
               </br>Confirm<input type="password" name="confirm" required=""/>
                </br><input type="submit" name="action" value="Create"/>
                <input type="reset" value="Reset"/>
                <%=userError.getError()%>
        </form>
    </body>
</html>
