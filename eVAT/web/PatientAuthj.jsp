<%-- 
    Document   : PatientAuthj
    Created on : Dec 4, 2021, 10:27:41 AM
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
             String email = request.getParameter("email");
             String nin = request.getParameter("nin");
        %>
        
        <%@taglib uri="/WEB-INF/tlds/patientAuth" prefix="vaccination"%>
        <vaccination:select table="patients"  email="${email}" nin="${nin}"/>
    </center>    
    </body>
</html>
