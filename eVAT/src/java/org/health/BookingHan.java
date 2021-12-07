/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/TagHandler.java to edit this template
 */
package org.health;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.sql.Statement;
import javax.servlet.jsp.JspWriter;
import javax.servlet.jsp.JspException;
import javax.servlet.jsp.tagext.JspFragment;
import javax.servlet.jsp.tagext.SimpleTagSupport;

/**
 *
 * @author HP
 */
public class BookingHan extends SimpleTagSupport {
    
   private final String driver = "com.mysql.jdbc.Driver";

   private final String database_type = "mysql";

   private final String database_url = "\"jdbc:mysql://localhost:3306/vatsdb\"";

   private final String database_username = "root";

   private final String database_password = "";
   
   private String table;
    public void setTable(String table){
       this.table = table;
    }

    private String name;
    private String nin;
    private String email;
    private String date_of_appointment;
    private String time_of_appointment;
    private String vaccine;
    private String health_centre;
    
    public void setName(String name) {
        this.name = name;
    }
    public void setNin(String nin) {
        this.nin = nin;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public void setDate_of_appointment(String date_of_appointment) {
        this.date_of_appointment = date_of_appointment;
    }

    public void setTime_of_appointment(String time_of_appointment) {
        this.time_of_appointment = time_of_appointment;
    }

    public void setVaccine(String vaccine) {
        this.vaccine = vaccine;
    }

    public void setHealth_centre(String health_centre) {
        this.health_centre = health_centre;
    }

    /**
     * Called by the container to invoke this tag. The implementation of this
     * method is provided by the tag library developer, and handles all tag
     * processing, body iteration, etc.
     */
    @Override
    public void doTag() throws JspException, IOException {
        JspWriter out = getJspContext().getOut();
        
        Statement stmt = null;
        try{ 
           Class.forName("com.mysql.jdbc.Driver");
           Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/vatsdb","root","");
           stmt = conn.createStatement();
           
           String sql = "INSERT INTO "+ table +"(name,nin,email,date_of_appointment,time_of_appointment,vaccine,health_centre)"
                   + " VALUES('"+name+"','"+nin+"','"+email+"','"+date_of_appointment+"','"+time_of_appointment+"','"+vaccine+"','"+health_centre+"')";
           stmt.executeUpdate(sql);
           
           System.out.print("Inserted records");
       
       }catch(ClassNotFoundException | SQLException e){
                out.println(e);
       
   }
    }

    

    
    
}
