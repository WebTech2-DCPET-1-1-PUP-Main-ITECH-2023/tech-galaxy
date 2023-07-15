<%-- 
    Document   : Account
    Created on : 05 27, 23, 5:13:42 PM
    Author     : ACER
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Account | Tech Galaxy</title>
        <link rel="icon" type="image/x-icon" href="<%=request.getContextPath()%>/assets/images/tech-galaxy.png">
        <link href="<%=request.getContextPath()%>/assets/css/bootstrap.min.css" rel="stylesheet">
        <script src="<%=request.getContextPath()%>/assets/js/bootstrap.bundle.min.js"></script>
        <link href="<%=request.getContextPath()%>/assets/css/custom.css" rel="stylesheet">
    </head>
    <body>
        <%@ include file="../Custom Components/LoggedInNavBar.jsp" %>
        <div class ="container-fluid d-flex justify-content-center my-5 mx-7">
            <div class = "accounts py-3 mx-3">
                <h1 class = "primary-color-underline primary-font d-flex justify-content-center">User Account</h1>
                <div class = "color-white center mt-4">
                    <div class="row align-items-start g-2 d-flex justify-content-center">
                        <p class="col-4">Username</p>
                        <p class="col-4">ILoveJava</p>
                    </div>
                    <div class="row align-items-start g-2 d-flex justify-content-center">
                        <p class="col-4">Full Name</p>
                        <p class="col-4">Gladwin Ferdz Infante Del Rosario</p>
                    </div>
                    <div class="row align-items-start g-2 d-flex justify-content-center">
                        <p class="col-4">First Name</p>
                        <p class="col-4">Gladwin Ferdz</p>
                    </div>
                    <div class="row align-items-start g-2 d-flex justify-content-center">
                        <p class="col-4">Middle Name</p>
                        <p class="col-4">Infante</p>
                    </div>
                    <div class="row align-items-start g-2 d-flex justify-content-center">
                        <p class="col-4">Last Name</p>
                        <p class="col-4">Del Rosario</p>
                    </div>
                    <div class="row align-items-start g-2 d-flex justify-content-center">
                        <p class="col-4">Address</p>
                        <p class="col-4">2020 Cornelia Street, Sta. Cruz, Manila, Philippines</p>
                    </div>
                    <div class="row align-items-start g-2 d-flex justify-content-center">
                        <p class="col-4">Birth Date</p>
                        <p class="col-4">01-01-2001</p>
                    </div>
                    <div class="row align-items-start g-2 d-flex justify-content-center">
                        <p class="col-4">Mobile Number</p>
                        <p class="col-4">09081230099</p>
                    </div>
                </div>
            </div>

        </div>
        <%@ include file="../Custom Components/LoggedInFooter.jsp" %>
    </body>
</html>