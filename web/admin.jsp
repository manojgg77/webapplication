<%-- Document : admin Created on : 9 Jun, 2023, 11:01:57 AM Author : deepa --%>


    <%@page contentType="text/html" pageEncoding="UTF-8" %>
        <!DOCTYPE html>
        <html>

        <head>
            <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
            <title>JSP Page</title>
           
            <link rel="preconnect" href="https://fonts.googleapis.com">
            <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
            <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;500;600;700&display=swap"
                rel="stylesheet">
            <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet"
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
                crossorigin="anonymous"></script> <link rel="stylesheet" href="style.css">
            <script>
                function additem() {
                    document.getElementById("add").style.display = "block";
                    document.getElementById("update").style.display = "none";
                    document.getElementById("delete").style.display = "none";
                     document.getElementById("show").style.display = "none";
                }
                function updateitem() {
                    document.getElementById("update").style.display = "block";
                    document.getElementById("add").style.display = "none";
                    document.getElementById("delete").style.display = "none";
                    document.getElementById("show").style.display = "none";
                }
                function deleteitem() {
                    document.getElementById("update").style.display = "none";
                    document.getElementById("add").style.display = "none";
                    document.getElementById("delete").style.display = "block";
                    document.getElementById("show").style.display = "none";
                }
                 function showitem() {
                    document.getElementById("update").style.display = "none";
                    document.getElementById("add").style.display = "none";
                    document.getElementById("delete").style.display = "none";
                    document.getElementById("show").style.display = "block";
                }

            </script>
            <style>

            </style>
        </head>

        <body style="margin:0px;border:2px solid;">
            <div class="container-fluid">
                <div class="row" style="background-color:#bbb0b0">
                    <div class="col-lg-2 col-md-2 col-sm-2 col-2" style="">
                        <div class=" mz fst-italic fw-bold" style="color:rgb(106, 53, 62);">ADMIN PANEL
                        </div>
                    </div>
                    <div class="mz col-lg-7 col-md-7 col-sm-7 col-7" style="text-align: center"><input type="search"
                            name="search"
                            style="border: 1px solid;border-radius:20px;text-align: center;font-size:1.2vw">
                        <input type="button" name="search" value="search" style="font-size: 1.3vw">
                    </div>
                    <div class=" mz col-lg-2 col-md-2 col-sm-2 col-2" style="text-align: center">
                        <img src="images/Landscape-Color.jpg" alt="" style="height: 3vw;width: 2vw" />
                    </div>
                    <div class=" mz col-lg-1 col-md-1 col-sm-1 col-1" style="text-align: center">
                        <img src="images/Landscape-Color.jpg" alt="" style="height: 3vw;width: 3vw;border-radius: 50%" />
                    </div>
                </div>
                <div class="row" style="height:690px">
                    <div class="col-lg-2 col-md-3 col-sm-5 col-5" style="background-color:activeborder;margin:0px">
                        <div class="col-lg-12 col-md-12 col-sm-12 col-12" style="display: grid;">
                            <a onclick="additem()" class=" f mz text-decoration-none text-black-50 fw-bold">Add Item</a>
                            <a onclick="updateitem()" class=" f mz text-decoration-none text-black-50 fw-bold">Update
                                Item</a>
                            <a onclick="deleteitem()" class=" f mz text-decoration-none text-black-50 fw-bold">Delete
                                Item</a>
                              <a onclick="showitem()" class=" f mz text-decoration-none text-black-50 fw-bold">All Product
                   </a>
                            <a href="#" style="text-decoration: none;font-size:2.2vw;margin-top: 20px ">Collection</a>

                        </div>
                    </div>
                    <div class="col-lg-10 col-md-9 col-sm-10 col-7" style="display: none;padding: 0px" id="add">
                        <iframe src="additembyadmin.jsp" height="100%" width="100%"></iframe>

                    </div>
                    <div class="col-lg-10 col-md-9 col-sm-10 col-7" style="display: none;padding: 0px" id="update">
                        <iframe src="updateitemadmin.jsp" height="100%" width="100%"></iframe>

                    </div>
                    <div class="col-lg-10 col-md-9 col-sm-10 col-7" style="display: none;padding:0px" id="delete">
                        <iframe src="deleteitembyadmin.jsp" height="100%" width="100%"></iframe>  </div>
                         <div class="col-lg-10 col-md-9 col-sm-10 col-7" style="display: none;padding:0px" id="show">
                        <iframe src="showbyadmin.jsp" height="100%" width="100%"></iframe>

                    </div>
                </div>
            </div>
        </body>

        </html>