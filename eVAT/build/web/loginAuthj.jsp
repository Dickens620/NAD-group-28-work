<%-- 
    Document   : loginAuthj
    Created on : Dec 3, 2021, 5:36:12 PM
    Author     : HP
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Login Process</title>
    </head>
    <body>
        
    <center>
        <h1>Hello There!</h1>
        
        <%
           String username = request.getParameter("username");
           String passwod = request.getParameter("passwod");
     
        %>
        
        <%@taglib uri="/WEB-INF/tlds/authTag" prefix="vaccination"%>
        <vaccination:select table="admins"  username="${username}" passwod="${passwod}"/>
        
    </center>    
        
    </body>
</html>
