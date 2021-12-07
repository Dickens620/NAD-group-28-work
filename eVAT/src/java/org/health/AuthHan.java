/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/TagHandler.java to edit this template
 */
package org.health;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import javax.servlet.jsp.JspWriter;
import javax.servlet.jsp.JspException;
import javax.servlet.jsp.tagext.JspFragment;
import javax.servlet.jsp.tagext.SimpleTagSupport;

/**
 *
 * @author HP
 */
public class AuthHan extends SimpleTagSupport {
    
   private final String driver = "com.mysql.jdbc.Driver";

   private final String database_type = "mysql";

   private final String database_url = "\"jdbc:mysql://localhost:3306/vatsdb\"";

   private final String database_username = "root";

   private final String database_password = "";
   
   

    private String username;
    private String passwod;
    private String table;
    
    
    public void setTable(String table){
       this.table = table;
    }
    
    

    public void setUsername(String username) {
        this.username = username;
    }

    public void setPasswod(String passwod) {
        this.passwod = passwod;
    }
    
    
    @Override
    public void doTag() throws JspException, IOException {
        JspWriter out = getJspContext().getOut();
        
       if(username!=null){
        try{
 
        Class.forName("com.mysql.jdbc.Driver");
        Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/vatsdb","root","");
        
        
        String sql = "SELECT * FROM admins WHERE username = ? and passwod = ?";
        PreparedStatement ps=conn.prepareStatement(sql);
        
        ps.setString(1,username);
        ps.setString(2,passwod);
        
 
        ResultSet result = ps.executeQuery();
 
        if (result.next()) {
            out.println("Login successful! Proceed to the admin dashboard");
            out.println("<form action=\"http://localhost:8080/eVAT/AdminDashboard.jsp\" method=\"post\">");
                 out.println("<br><button type=\"submit\" >Dashboard</button><br><br>");
                 out.println("</form>");
    }
            else{ 
            out.println("Login failed, please retry");
            out.println("<form action=\"http://localhost:8080/eVAT/\" method=\"post\">");
            out.println("<br><button type=\"submit\">Login</button><br><br>");
            out.println("</form>");
        }
    }catch(Exception e){
           out.println(e);
 
    }
       }
    }
}
    
