/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package userservlet;

import database.checkinguser;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author 91967
 */
@WebServlet(name = "loginuser"
        + "", urlPatterns = {"/loginuser"})
public class LoginUser extends HttpServlet {

    

    
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse res)
            throws ServletException, IOException {
         PrintWriter out = res.getWriter();
          res.setContentType("text/html");
        out.println("<h1>welcome servlet</h1>");
         
        String uemail=req.getParameter("uemail");
        String upwd=req.getParameter("upwd");
          
        checkinguser ch=new checkinguser();
       int i= ch.userlogin(uemail, upwd);
        out.println(+i);
       if(i==1)
       {
           out.println("<h1>sucess!!!!!!!!!!!!!!!!!!!</h1>");
       } else {
           out.println("<h1>failed!!!!!!!!!!!!!!!!!!!</h1>");
        }
    }

    
    
}
