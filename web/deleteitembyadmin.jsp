<%-- Document : updateitem.jsp Created on : 12 Jun, 2023, 11:52:02 AM Author : deepa --%>

    <%@page contentType="text/html" pageEncoding="UTF-8" %>
        <!DOCTYPE html>
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
            <form style="margin-left: 30%; " action="deleteproduct"
                method="post">
                <div>
                    
                    
                        <h3 class="text-danger fw-bold">
                          <%@include file="message.jsp" %>
                       </h3>
                     
                    <table style="font-size: 20px;margin-top:200px">
                        <tr>
                            <td>product id</td>
                            <td><input type="number" style=" -moz-appearance: textfield" name="productid"></td>
                        </tr>
                    </table>
               
                <div class="ml-3" style="margin-left: 15%"><input type="submit" name="submit" value="submit"> </div> </div>
            </form>
        </body>

        </html>