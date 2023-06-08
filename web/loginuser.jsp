
<%-- 
    Document   : login.jsp
    Created on : 5 Jun, 2023, 11:21:24 AM
    Author     : 91967
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>LOGIN USER </title>
    </head>
    <body>
       
        <div Style="width:100%;height: 720px ; display: inline-flex;background-image:url(Landscape-Color.jpg );overflow: hidden;">
           
            
            <div style="width: 400px; height: 700px; text-align: center;  margin: auto;border-radius: 10px;border: 3px solid black ;background-color: #328089; margin-top: 10px">
                <div style="width: 90%; height: 650px;  margin: auto;margin-top: 25px; border-radius: 10px;border: 3px solid black;overflow: hidden;background-image:url(pngtree-blue-background-with-geometric-forms-image_280879.jpg);">
                    <h2 style="color:#20b1c1;padding-top: 50px;">registration form</h2>
                    <form action="LoginUser" method="post" style="color:white;">
                        <table style="margin-top: 30px;margin-left: 30px;margin-bottom: 10px;"> 
                            <tr ><td>Email</td><td><input type="Email" placeholder="Enter Email" name="uemail" ><br></td></tr>
                            <tr><td>Password</td><td><input type="password" placeholder="Enter your password" name="upwd" ><br></td></tr>
                         </table>
                        <input type="submit" value="Submit"><br>
                        <button style="margin-left: 24px"><a style="text-decoration: none" href="registrationuser.jsp">registration</a></button>
                        <button style="background-color: white"><a style="text-decoration: none" href="">Forget password</a></button>
                         
                    </form>
                   
            </div>
                
            </div>
    </body>
</html>
