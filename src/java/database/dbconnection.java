/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package database;

import java.sql.Connection;
import java.sql.DriverManager;

/**
 *
 * @author 91967
 */
public class dbconnection {
         Connection con=null;
   public dbconnection(String db){
          try{
          Class.forName("com.mysql.cj.jdbc.Driver");
          String url="jdbc:mysql://localhost:3306/"+db;
             con=DriverManager.getConnection(url,"root","manoj");
            
                 
             }catch(Exception e){
                 System.out.println(""+e);
        
    }
    }
    
   public Connection getConnectionDb(){
        return con;
        
    }
     
}
