package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class registrationuser_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public java.util.List<String> getDependants() {
    return _jspx_dependants;
  }

  public void _jspService(HttpServletRequest request, HttpServletResponse response)
        throws java.io.IOException, ServletException {

    PageContext pageContext = null;
    HttpSession session = null;
    ServletContext application = null;
    ServletConfig config = null;
    JspWriter out = null;
    Object page = this;
    JspWriter _jspx_out = null;
    PageContext _jspx_page_context = null;

    try {
      response.setContentType("text/html;charset=UTF-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <title>REGISTARTION PAGESS</title>\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("        <div Style=\"width:100%;height: 720px ; display: inline-flex;background-image:url(Landscape-Color.jpg );overflow: hidden;\">\n");
      out.write("            \n");
      out.write("            <div style=\"width: 400px; height: 700px; text-align: center;  margin: auto;border-radius: 10px;border: 3px solid black;;background-color: #328089; margin-top: 10px\">\n");
      out.write("                <div style=\"width: 90%; height: 650px;  margin: auto;margin-top: 25px; border-radius: 10px;border: 3px solid black;overflow: hidden;background-image:url(pngtree-blue-background-with-geometric-forms-image_280879.jpg);\">\n");
      out.write("                    <h2 style=\"color:#20b1c1;padding-top: 50px;\">registration form</h2>\n");
      out.write("                    <form action=\"registrationUser\" method=\"post\"  >\n");
      out.write("                        <table style=\"margin-top: 30px;margin-left: 30px;color:white;margin-bottom: 10px;\">\n");
      out.write("                            <tr><td>Username</td><td><input type=\"text\" placeholder=\"Enter Username\" name=\"uname\" ><br></td></tr>\n");
      out.write("                            <tr ><td>Email</td><td><input type=\"Email\" placeholder=\"Enter Email\" name=\"uemail\" ><br></td></tr>\n");
      out.write("                                   \n");
      out.write("                                        <tr><td>Phone Number</td><td><input type=\"text\" placeholder=\"Enter phonenumber\" name=\"uphone\" ><br></td></tr>\n");
      out.write("                                        <tr><td>Password</td><td><input type=\"password\" placeholder=\"Enter your password\" name=\"upwd\" ><br></td></tr>\n");
      out.write("                                       </table>\n");
      out.write("                        <input type=\"submit\" value=\"Submit\">\n");
      out.write("                         <button style=\"margin-left: 5px\"><a style=\"text-decoration: none\" href=\"loginuser.jsp\">Login</a></button>\n");
      out.write("                                </form>\n");
      out.write("            </div>\n");
      out.write("                \n");
      out.write("            </div>\n");
      out.write("            \n");
      out.write("             \n");
      out.write("</html>");
    } catch (Throwable t) {
      if (!(t instanceof SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          out.clearBuffer();
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
