/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Adminpower;

import database.adminalldb;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author 91967
 */
public class update extends HttpServlet {

     
     
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
  PrintWriter out = response.getWriter();
          response.setContentType("text/html");
           
          int  i=1 ;
          HttpSession session=request.getSession();
           int j=(int)session.getAttribute("row")-1;
           
          int sum=0;
              adminalldb ab=new adminalldb();
          
             
                int productid=(Integer.parseInt(request.getParameter("productid")));
                String productname= request.getParameter("productname");
                out.print(productname);/*
                int productprice=(Integer.parseInt(request.getParameter("productprice")));   
                int quantity1=(Integer.parseInt(request.getParameter("quantity"))); 
                sum=sum + ab.update(productid, productname, productprice,quantity1);
             
             i++;
             j--;
          }
        
          response.sendRedirect("showadmin.jsp");
*/         
    
    }
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
       
    }
 

}
