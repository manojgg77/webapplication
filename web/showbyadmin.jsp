<%-- Document : showbyadmin Created on : 18 Jun, 2023, 12:20:39 PM Author : 91967 --%>
    <%@page import="database.productshow" %>
        <%@page import="java.sql.ResultSet" %>
            <%@page contentType="text/html" pageEncoding="UTF-8" %>
                <!DOCTYPE html>
                <% productshow p=new productshow(); try{ ResultSet rs=p.productshow1(); %>
                    <html>

                    <head>
                        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
                        <link rel="stylesheet" href="style.css">
                        <title>JSP Page</title>
                        <link rel="stylesheet" href="style.css">
                        <link rel="preconnect" href="https://fonts.googleapis.com">
                        <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
                        <link
                            href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;500;600;700&display=swap"
                            rel="stylesheet">
                        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css"
                            rel="stylesheet"
                            integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC"
                            crossorigin="anonymous">
                        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"
                            integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM"
                            crossorigin="anonymous"></script>
                        <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js"
                            integrity="sha384-IQsoLXl5PILFhosVNubq5LC7Qb9DXgDA9i+tQ8Zj3iwWAwPtgFTxbJ8NT4GN1R8p"
                            crossorigin="anonymous"></script>
                        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.min.js"
                            integrity="sha384-cVKIPhGWiC2Al4u+LWgxfKTRIcfu0JTxR+EQDz/bgldoEyl4H0zUF0QKbrJ0EcQF"
                            crossorigin="anonymous"></script>

                    </head>

                    <body style="background-image:url(image/Landscape-Color.jpg)">
                        <div class="container">
                            <div class="row">
                                <div class="col-lg-10 col-md-10 col-sm-5 col-7">
                                    <div class=" ff  card bg-transparent ">
                                        <form class=" m-auto d-inline text-center">
                                            <table class=" text-centre">
                                                <tr class="bg-primary fw-bold">
                                                    <td class="border-3">prouctid</td>
                                                    <td class="border-3">prouctname</td>
                                                    <td class="border-3">prouctprice</td>
                                                    <td class="border-3">quantity</td>
                                                    <td class="border-3">productdes</td>
                                                    <td>delete</td>
                                                </tr>
                                                <% int i=1; while(rs.next()){%>
                                                <tr class="bg-danger fw-bold border-2">
                                                        <td class="border-3">
                                                            <%=rs.getInt("productid")%>
                                                        </td>
                                                        <td class="border-3">
                                                            <%=rs.getString("productname")%>
                                                        </td>
                                                        <td class="border-3">
                                                            <%=rs.getInt("productprice")%>
                                                        </td>
                                                        <td class="border-3">
                                                            <%=rs.getInt("quantity")%>
                                                        </td>
                                                        <td class="border-3" style="width: 150px;max-height:20px;">
                                                            <%=rs.getString("productdes")%>
                                                        </td>
                                                        <td><a href="deleteproduct?id=<%=rs.getInt("productid")%>">delete</a></td>
                                                         <td><a href="updateproduct?id=<%=rs.getInt("productid")%>">update</a></td>
                                                    </tr>

                                                    <%i++;} session.setAttribute("row",i--);%>
                                            </table>

                                            <%}catch (Exception e) { System.out.println( e); } %>




                                        </form>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </body>

                    </html>