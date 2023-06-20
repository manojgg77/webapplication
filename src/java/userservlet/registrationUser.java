/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package userservlet;

import database.Registeruserdb;
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
public class registrationUser extends HttpServlet {

  
 
     
    protected void doPost(HttpServletRequest req, HttpServletResponse res)
            throws ServletException, IOException {
        PrintWriter out = res.getWriter();
        try{
        
        res.setContentType("text/html");
        out.println("<h1>welcome servlet</h1>");
        String uname=req.getParameter("uname");
        String uemail=req.getParameter("uemail");
       
        String uphone=req.getParameter("uphone");
        String upwd=req.getParameter("upwd");
        HttpSession ht=req.getSession();
        if( uname.isEmpty()||uemail.isEmpty()||uphone.isEmpty()||upwd.isEmpty())
        {
            ht.setAttribute("message", "Please fill all feild");
            res.sendRedirect("registrationuser.jsp");
            return;
             
        }  
        
         Registeruserdb rg=new Registeruserdb();
        int id= rg.register(uname,uemail,uphone,upwd);
        out.println(id);
         out.println("<h1>sucess!!!!!!!!!!!!!!!!!!!</h1>");
        } catch(Exception e){
            out.println(e);
             out.println("<h1>Failed!!!!!!!!!!!!!!!!!!!</h1>");
        }
        
        
        
    }
 
   

}
