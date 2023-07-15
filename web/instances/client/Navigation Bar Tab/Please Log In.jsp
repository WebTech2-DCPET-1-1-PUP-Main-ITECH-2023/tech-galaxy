<%-- 
    Document   : Please Log In
    Created on : 07 6, 23, 11:47:01 PM
    Author     : ACER
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>User Items | Tech Galaxy</title>
        <link rel="icon" type="image/x-icon" href="<%=request.getContextPath()%>/assets/images/tech-galaxy.png">
        <link href="<%=request.getContextPath()%>/assets/css/bootstrap.min.css" rel="stylesheet">
        <script src="<%=request.getContextPath()%>/assets/js/bootstrap.bundle.min.js"></script>
        <link href="<%=request.getContextPath()%>/assets/css/custom.css" rel="stylesheet">
    </head>
    <body>
        <%@ include file="../Custom Components/NavBar.jsp" %>
        <div class = "container-fluid d-flex flex-column my-3">
            <h3 class = "center color-white primary-font my-3">Please log in first</h3>
                <div class = "container-fluid d-flex justify-content-center align-content-center align-items-center">
                    <h1 class = "center primary-color-underline"></h1>
                    <button type="button" class="btn ms-3 primary-font" data-bs-toggle="modal" data-bs-target="#clientPleaseLogInModal" id="clientPleaseLogInModalOpen">Log In</button>
                    <div class="modal fade" id="clientPleaseLogInModal" tabindex="-1" aria-labelledby="clientPleaseLogInModal" aria-hidden="true">
                        <div class="modal-dialog modal-dialog-centered">
                            <%@ include file="Log In Modal.jsp" %>
                    </div>
                </div>
        </div>
        <%@ include file="../Custom Components/Footer.jsp" %>
    </body>
</html>
