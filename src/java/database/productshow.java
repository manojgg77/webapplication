/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package database;

import java.sql.ResultSet;
import java.sql.Statement;
 
/**
 *
 * @author 91967
 */
public class productshow {
    public ResultSet productshow1()
            
    {
        
        ResultSet rs1 = null;
               try {
          dbconnection cn=new dbconnection("product"); 
                   System.out.println(cn);
            Statement st=cn.getConnectionDb().createStatement();
                
                  String sql="select * from product";
                  ;
             rs1 = st.executeQuery(sql);
              
           return rs1;
        } catch (Exception e) {
              System.out.println( e);
        }
             return rs1;
    }
    

//public static void main(String[] args)
//{
//    productshow p=new productshow();
//    //p.productshow1();
//}
}