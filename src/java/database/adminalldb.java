/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package database;

 
import java.sql.PreparedStatement;
import java.sql.Statement;

/**
 *
 * @author 91967
 */
public class adminalldb {
  
     public int update(int  productid ,String productname,int productprice,int quantity )
    {
         dbconnection cn=new dbconnection("product"); 
        try{
               Statement st=cn.getConnectionDb().createStatement();
                int rs=st.executeUpdate("update product set productname='"+productname+"', productprice='"+productprice+"' where productid='"+productid+"'");
                return rs;
         }catch (Exception e){
             System.out.println(""+e);
         }
        return 0;
    }
  /*  public static void main(String[] args)
    {
        adminalldb db=new adminalldb();
        db.update(1, "pent", 200 , 1000);
    }
*/
public int adminADDnewitem(int productid,String productname,int  productprice,int quantity){
     try{   
            dbconnection cn=new dbconnection("product"); 
           Statement st=cn.getConnectionDb().createStatement();
           PreparedStatement pt=cn.getConnectionDb().prepareStatement("INSERT INTO product(productid,productname,productprice,quantity) VALUES( ?,?,?,?);");
               
               pt.setInt(1,productid);
               pt.setString(2,productname);
               pt.setInt(3,productprice);
               
               pt.setInt(4,quantity);
               
               
               int i=pt.executeUpdate(); 
               return i;
        
        
        
    } catch(Exception e)
         {
          System.out.println(""+e);
         }
     return 0;
    }
  public int  adminDELETE(int productid)
    {
          try{
         dbconnection cn=new dbconnection("product");   
           Statement st=cn.getConnectionDb().createStatement();
            int rows = st.executeUpdate("DELETE   FROM product where productid='"+productid+"'  ");
            return rows;
     }
      catch(Exception e)
         {
          System.out.println(""+e);
         }
     return 0;
    }/*
  public static void main(String[] args)
  {
      adminalldb db=new adminalldb();
     int i= db.adminDELETE(4);
     if(i>0)
     {
         System.out.println("now");
     }
     else{
         System.out.println("welcome");
     }
  }
*/}
