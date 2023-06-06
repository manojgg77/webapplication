/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package database;

import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.text.SimpleDateFormat;

/**
 *
 * @author 91967
 */
public class Registeruserdb {
    public int register(String uname, String uemail,String uphone,String upwd)
    {
        
        try{
          
  
        dbconnection cn=new dbconnection("user");
            
          
           PreparedStatement pt=cn.getConnectionDb().prepareStatement("INSERT INTO user.usertable(uname,uemail,uphone,upwd) VALUES( ?,?,?,?);");
           
               pt.setString(1,uname);
               pt.setString(2,uemail);
              
               pt.setString(3,uphone);
               pt.setString(4,upwd);
                int res=pt.executeUpdate();
                return res;
              
//               Statement st=cn.getConnectionDb().createStatement() ;
//               ResultSet rs=st.executeQuery("select uid from usertable where uname='"+uname+"'");
//               while(rs.next())
//               {
//                   int i=rs.getInt(1);
//               return i;
//               }
        } catch(Exception e){
            System.out.println(""+e);}
    return 0;
    }
   
}
   

