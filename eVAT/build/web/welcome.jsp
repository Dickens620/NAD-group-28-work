<%-- 
    Document   : welcome
    Created on : Dec 3, 2021, 3:43:13 PM
    Author     : HP
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Welcome</title>
    </head>
    <body>
        
    <center>
        <h1>Hello There!</h1>
        
        <%
            String fullname = request.getParameter("fullname");
            String username = request.getParameter("username");
            String password = request.getParameter("passwod");
            String nin = request.getParameter("nin");
            String email = request.getParameter("email");
        %>
        <%@taglib uri="/WEB-INF/tlds/customTag" prefix="vaccination"%>
        <vaccination:insert table="admins" fullname="${fullname}" username="${username}" passwod="${passwod}" nin="${nin}"
                           email="${email}"/>
    
    </center>
    </body>
        
    </body>
</html>
