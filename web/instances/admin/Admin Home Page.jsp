<%-- 
    Document   : AdminHomePage
    Created on : 05 27, 23, 11:17:39 PM
    Author     : ACER
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Admin - Home Page | Tech Galaxy</title>
        <link rel="icon" type="image/x-icon" href="<%=request.getContextPath()%>/assets/images/tech-galaxy.png">
        <link href="<%=request.getContextPath()%>/assets/css/bootstrap.min.css" rel="stylesheet">
        <script src="<%=request.getContextPath()%>/assets/js/bootstrap.bundle.min.js"></script>
        <link href="<%=request.getContextPath()%>/assets/css/custom.css" rel="stylesheet">
    </head>
    <body>
        <%@include file="Custom Components/NavBar.jsp" %>
        <div class ="container-fluid my-4 mx-3 d-flex flex-column">
            <h1 class = "primary-color-underline primary-font text-center">Admin Directory</h1>
            <div class="my-1">
                <a href="<%=request.getContextPath()%>/products">
                    <div class="container-fluid admin-page-directory-links my-3">
                        <h1 class="directory-title primary-font color-primary">Products Page</h1>
                        <p class="color-white">Manages and modifies the products of tech galaxy</p>
                    </div>
                </a>
                <a href="<%=request.getContextPath()%>/users">
                    <div class="container-fluid admin-page-directory-links my-3">
                        <h1 class="directory-title primary-font color-primary">User Management Page</h1>
                        <p class="color-white">Manages and modifies the users of tech galaxy</p>
                    </div>
                </a>
            </div>
        </div>
                <%@include file="Custom Components/Footer.jsp" %>
    </body>
</html>