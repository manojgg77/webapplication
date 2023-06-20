<%-- Document : productshow Created on : 8 Jun, 2023, 12:27:56 PM Author : 91967 --%>

    <%@page import="java.util.Base64" %>
        <%@page import="java.io.OutputStream" %>
            <%@page import="java.sql.Blob" %>
                <%@page import="java.sql.ResultSet" %>
                    <%@page import="database.productshow" %>
                        <%@page contentType="text/html" pageEncoding="UTF-8" %>
                            <!DOCTYPE html>
                            <% Blob image=null; byte[] imgdata=null; ResultSet rs1; productshow ps=new productshow();
                                try{ rs1=ps.productshow1(); %>
                                <html>

                                <head>
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
                                    <script
                                        src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"
                                        integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM"
                                        crossorigin="anonymous"></script>
                                    <script
                                        src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js"
                                        integrity="sha384-IQsoLXl5PILFhosVNubq5LC7Qb9DXgDA9i+tQ8Zj3iwWAwPtgFTxbJ8NT4GN1R8p"
                                        crossorigin="anonymous"></script>
                                    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.min.js"
                                        integrity="sha384-cVKIPhGWiC2Al4u+LWgxfKTRIcfu0JTxR+EQDz/bgldoEyl4H0zUF0QKbrJ0EcQF"
                                        crossorigin="anonymous"></script>

                                </head>

                                <body>
                                    <div class="container  ">
                                        <div class="header mt-5  ">
                                            <div class="container">
                                                <div class="navbar">
                                                    <div class="logo">
                                                        <img src="images/logo.png" width="125px">
                                                    </div>
                                                    <nav>
                                                        <ul id="menuitem">
                                                            <li><a href="index.html" method="post">Home</a></li>
                                                            <li><a href="product.html" method="post">Products</a></li>
                                                            <li><a href="about.html" method="post">About</a></li>
                                                            <li><a href="contact.html" method="post">Contact</a></li>
                                                            <li><a href="account.html">Account</a></li>
                                                        </ul>
                                                    </nav>
                                                    <a href="cart.html"> <img src="images/cart.png" width="30px"
                                                            height="30px"></a>
                                                    <img src="images/menu.png" class="menu-icon" onclick="menutoggle()">
                                                </div>

                                            </div>
                                        </div>
                                        <div class="container-fluid mt-5"
                                            style="text-align: center; display: inline-flex;display: block ruby;">
                                            <div class="row">
                                                <% while(rs1.next()){ image=rs1.getBlob("productimg");
                                                    imgdata=image.getBytes(1, (int)image.length()); String
                                                    encode=Base64.getEncoder().encodeToString(imgdata); String
                                                    pic="data:image/jpg;base64," +encode; %>
                                                    <div class="col-md-6 col-sm-12 col-lg-4 col-12 mt-5">
                                                        <div class="card " style="width: 22rem;"> <a
                                                                style="text-decoration:none;" href="bootom_buy.html">
                                                                <div>
                                                                    <img src="<%=pic%>" style="height: 250px;"
                                                                        class="card-img-top" alt="...">
                                                                </div>
                                                                <div class="card-body">
                                                                    <h5 class="card-title">
                                                                        <%=rs1.getString("productname")%>
                                                                    </h5>
                                                                    <h6 style="color:black;">
                                                                        <%=rs1.getString("productdes")%>
                                                                    </h6>
                                                                    <h5><b>
                                                                            <%=rs1.getInt("productprice")%>
                                                                        </b></h5>
                                                            </a>
                                                            <div>
                                                                <button class="button btn btn-primary cart-img "
                                                                    style="display: inline-flex;"> <img
                                                                        src="images/cart.png" alt="">cart</button>
                                                                <button class=" button btn btn-primary  bg-white"
                                                                    style="size: 40px;height: 40px; overflow: hidden;"><img
                                                                        src="images/Untitled.jpeg" alt=""
                                                                        style="height: 30px;padding: 0px;width: 40px;"></button>
                                                            </div>
                                                        </div>
                                                    </div>
                                            </div>
                                            <% }} catch (Exception e) { System.out.println( e); } %>
                                        </div>
                                    </div>
                                    </div>

                                </body>

                                </html>