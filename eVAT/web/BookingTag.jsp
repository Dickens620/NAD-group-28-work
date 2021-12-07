<%-- 
    Document   : BookingTag
    Created on : Dec 6, 2021, 4:33:01 AM
    Author     : HP
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Booking Tag</title>
    </head>
    <body>
        <h1>Hello World!</h1>
        
             
            <%
             String name = request.getParameter("name");
             String nin = request.getParameter("nin");
             String email = request.getParameter("email");
             String date_of_appointment = request.getParameter("date_of_appointment");
             String time_of_appointment = request.getParameter("time_of_appointment");
             String vaccine = request.getParameter("vaccine");
             String health_centre = request.getParameter("health_centre");
             %>
             
              <%@taglib uri="/WEB-INF/tlds/BookingLib" prefix="vaccination"%>
        <vaccination:insert table="patients"   name="${name}" nin="${nin}" email="${email}" date_of_appointment="${date_of_appointment}" time_of_appointment="${time_of_appointment}" vaccine="${vaccine}" health_centre="${health_centre}"/>
        
             
        
    </body>
</html>
