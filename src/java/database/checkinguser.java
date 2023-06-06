/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package database;

import com.mysql.cj.protocol.Resultset;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author 91967
 */
public class checkinguser {
    public int userlogin(String uemail,String upwd)
    {
        
            
          
        try {
            dbconnection cn=new dbconnection("user");
            Statement st=cn.getConnectionDb().createStatement();
                System.out.println(""+cn.getConnectionDb());
                 ResultSet rs1 = st.executeQuery("select status from usertable where uemail='"+uemail+"'  and upwd='"+upwd+"'");
                  
                
                while(rs1.next())
                 {    
                     
                    int t=rs1.getInt(1);
                       if(t==0)
                        {
                           int i= st.executeUpdate("update user.usertable set status='1' where uemail='"+uemail+"' and upwd='"+upwd+"'");
                           
                            System.out.println("login sucess");
                            return 1;
                        }
                        else
                        {
                            
                            return 1;
                        } 
                 }        
        } catch (Exception e) {
            System.out.println(""+e);
        }
      return 0;     
    }
   
    
}
