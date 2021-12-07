<%-- 
    Document   : PatientWlcm
    Created on : Dec 4, 2021, 2:11:00 PM
    Author     : HP
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Patient Registration</title>
    </head>
    <body>
        
    <center>
        <h1>Registration Successful!</h1>
        
        <h3>Return to Dashboard!</h3>
        
        <p class="small mb-0">Return to Dashboard! <a href="http://localhost:8080/eVAT/AdminDashboard.jsp">Dashboard</a></p>
        </center>
        
        
        <%
             String nin = request.getParameter("nin");
             String name = request.getParameter("name");
             String health_centre = request.getParameter("health_centre");
             String date_of_administration = request.getParameter("date_of_administration");
             String batch_number = request.getParameter("batch_number");
             String vaccine_administered = request.getParameter("vaccine_administered");
             String email = request.getParameter("email");
             
        %>
        
        <%@taglib uri="/WEB-INF/tlds/PatientReg" prefix="vaccination"%>
        <vaccination:insert table="patients"   nin="${nin}" name="${name}" health_centre="${health_centre}" date_of_administration="${date_of_administration}" batch_number="${batch_number}" vaccine_administered="${vaccine_administered}" email="${email}"/>
        
         
        
    </body>
</html>
