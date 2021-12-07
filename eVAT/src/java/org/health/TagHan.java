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
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.jsp.JspWriter;
import javax.servlet.jsp.JspException;
import javax.servlet.jsp.tagext.JspFragment;
import javax.servlet.jsp.tagext.SimpleTagSupport;

/**
 *
 * @author HP
 */
public class TagHan extends SimpleTagSupport {
    
   private final String driver = "com.mysql.jdbc.Driver";

   private final String database_type = "mysql";

   private final String database_url = "\"jdbc:mysql://localhost:3306/vatsdb\"";

   private final String database_username = "root";

   private final String database_password = "";

    private String fullname;
    private String username;
    private String passwod;
    private Character nin;
    private String email;

    private String table;
    public void setTable(String table){
       this.table = table;
    }    

    public void setFullname(String fullname) {
        this.fullname = fullname;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public void setPasswod(String passwod) {
        this.passwod = passwod;
    }

    public void setNin(Character nin) {
        this.nin = nin;
    }

    public void setEmail(String email) {
        this.email = email;
    }
    @Override
     
    public void doTag() throws JspException, IOException {
        JspWriter out = getJspContext().getOut();
        
        Statement stmt = null;
        try{ 
           Class.forName("com.mysql.jdbc.Driver");
           Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/vatsdb","root","");
           stmt = conn.createStatement();
           
           String sql = "INSERT INTO "+ table +"(fullname,username,passwod,nin,email) VALUES('"+fullname+"','"+username+"','"+passwod+"','"+nin+"','"+email+"')";
           stmt.executeUpdate(sql);
           
           System.out.print("Inserted records");
       
       }catch(ClassNotFoundException | SQLException e){
                out.println(e);
       
   }
        out.println("Registration successful! Proceed to login");
            out.println("<form action=\"http://localhost:8080/eVAT/login.jsp\" method=\"post\">");
                 out.println("<br><button type=\"submit\" >Login</button><br><br>");
                 out.println("</form>");
   }
}
        
  
    

