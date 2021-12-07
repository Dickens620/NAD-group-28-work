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
public class PatientRegHan extends SimpleTagSupport {
    
   private final String driver = "com.mysql.jdbc.Driver";

   private final String database_type = "mysql";

   private final String database_url = "\"jdbc:mysql://localhost:3306/vatsdb\"";

   private final String database_username = "root";

   private final String database_password = "";
   
   private String table;
    public void setTable(String table){
       this.table = table;
    }    


    private String nin;
    private String name;
    private String health_centre;
    private String date_of_administration;
    private String batch_number;
    private String vaccine_administered;
    private String email;
    
    
    public void setNin(String nin) {
        this.nin = nin;
    }

    public void setName(String name) {
        this.name = name;
    }

    public void setHealth_centre(String health_centre) {
        this.health_centre = health_centre;
    }

    public void setDate_of_administration(String date_of_administration) {
        this.date_of_administration = date_of_administration;
    }

    public void setBatch_number(String batch_number) {
        this.batch_number = batch_number;
    }

    public void setVaccine_administered(String vaccine_administered) {
        this.vaccine_administered = vaccine_administered;
    }

    public void setEmail(String email) {
        this.email = email;
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
           
           String sql = "INSERT INTO "+ table +"(nin,name,health_centre,date_of_administration,batch_number,vaccine_administered,email)"
                   + " VALUES('"+nin+"','"+name+"','"+health_centre+"','"+date_of_administration+"','"+batch_number+"','"+vaccine_administered+"','"+email+"')";
           stmt.executeUpdate(sql);
           
           System.out.print("Inserted records");
       
       }catch(ClassNotFoundException | SQLException e){
                out.println(e);
       
   }
    }
    }

    
    

