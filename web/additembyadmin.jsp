<%-- Document : additembyadmin.jsp Created on : 12 Jun, 2023, 10:43:16 AM Author : deepa --%>
    <%@page import="java.util.List" %>
        <%@page import="java.util.ArrayList" %>
            <%@page import="java.util.Base64" %>
                <%@page import="java.io.OutputStream" %>
                    <%@page import="java.sql.Blob" %>
                        <%@page import="java.sql.ResultSet" %>
                            <%@page import="database.productshow" %>
                                <%@page contentType="text/html" pageEncoding="UTF-8" %>
                                    <!DOCTYPE html>
                                    <% Blob image=null; byte[] imgdata=null; ResultSet rs1; productshow ps=new
                                        productshow(); try{ rs1=ps.productshow1(); %>
                                        <html>

                                        <head>
                                            <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
                                            <title>JSP Page</title>
                                            <link rel="stylesheet" href="style.css">
                                            <link rel="preconnect" href="https://fonts.googleapis.com">
                                            <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
                                            <link
                                                href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;500;600;700&display=swap"
                                                rel="stylesheet">
                                            <link
                                                href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css"
                                                rel="stylesheet"
                                                integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC"
                                                crossorigin="anonymous">
                                            <script
                                                src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"
                                                integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM"
                                                crossorigin="anonymous"></script>
                                            <script
                                                src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js"
                                                integrity="sha384-IQsoLXl5PILFhosVNubq5LC7Qb9DXgDA9i+tQ8Zj3iwWAwPtgFTxbJ8NT4GN1R8p"
                                                crossorigin="anonymous"></script>
                                            <script
                                                src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.min.js"
                                                integrity="sha384-cVKIPhGWiC2Al4u+LWgxfKTRIcfu0JTxR+EQDz/bgldoEyl4H0zUF0QKbrJ0EcQF"
                                                crossorigin="anonymous"></script>
                                        </head>

                                        <body style="background: url(image/w-qjCHPZbeXCQ-unsplash.jpg);">
                                            <div class="container-fluid">
                                                <div class="row">

                                                    <div
                                                        class="col-lg-10 col-md-10 col-sm-10 col-10 text-center d-inline-flex">

                                                        <div class="col-lg-2 col-md-2 col-sm-10 mt-5 col-12 ">
                                                            <h3 class=" mb-0">We Have Following Id Please select Unique
                                                            </h3>
                                                            <table class="text-center m-auto">
                                                                <tr>
                                                                    <td class="bg-primary mt-0">product_id</td>
                                                                </tr>
                                                                <% while(rs1.next()){ List<Integer> list=new ArrayList
                                                                    <Integer>();
                                                                        list.add(rs1.getInt("productid"));
                                                                        session.setAttribute("list", list);
                                                                        %>
                                                                        <tr class="bg-danger fw-bold border-2">
                                                                            <td class="border-3">
                                                                                <%=rs1.getInt("productid")%>
                                                                            </td>

                                                                        </tr>
                                                                        <% }} catch (Exception e) { System.out.println(
                                                                            e); } %>
                                                            </table>
                                                        </div>
                                                        <div class="col-lg-8 col-md-8 col-sm-10 mt-5 col-10 ">
                                                            <div class="card m-auto mt-5 bg-transparent fs-3 border-0">

                                                                <form style="text-align: -moz-center;"
                                                                    action="additemadmin" method="post">
                                                                    <h3 class="text-danger fw-bold">
                                                                        <%@include file="message.jsp" %>
                                                                    </h3>
                                                                    <div class="fs-2 fw-bold mb-4">ADD NEW ITEM HERE
                                                                    </div>
                                                                    <table>
                                                                        <tr>
                                                                            <td>product_id</td>
                                                                            <td><input type="number" name="productid"
                                                                                    style=" -moz-appearance: textfield" min="1" >
                                                                            </td>
                                                                        </tr>
                                                                        <tr>
                                                                            <td>item name</td>
                                                                            <td><input type="text" name="productname">
                                                                            </td>
                                                                        </tr>
                                                                        <tr>
                                                                            <td>Price</td>
                                                                            <td><input type="number" name="productprice"
                                                                                    value="0"
                                                                                    style=" -moz-appearance: textfield">
                                                                            </td>
                                                                        </tr>
                                                                        <tr>
                                                                            <td>quantity</td>
                                                                            <td><input type="number" name="quantity"
                                                                                    value="0"
                                                                                    style=" -moz-appearance: textfield">
                                                                            </td>
                                                                        </tr>
                                                                        <tr>
                                                                            <td>description</td>
                                                                            <td><input type="text" name="productdes">
                                                                            </td>
                                                                        </tr>


                                                                    </table>
                                                                    <div class="mt-2"
                                                                        style="margin-top: 5%;display:inline-flex;margin-right:5px;">
                                                                        <input class="bg-danger"
                                                                            style="margin-right: 77px;" type="Reset"
                                                                            value="Reset">
                                                                        <input class="bg-primary" type="submit"
                                                                            value="Submit">

                                                                    </div>
                                                                </form>
                                                            </div>
                                                        </div>
                                                    </div>

                                                </div>
                                            </div>
                                        </body>

                                        </html>