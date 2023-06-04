<%-- 
    Document   : Login Page
    Created on : 05 27, 23, 5:14:10 PM
    Author     : ACER
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Admin Log In | Tech Galaxy</title>
        <link rel="icon" type="image/x-icon" href="<%=request.getContextPath()%>/assets/images/tech-galaxy.png">
        <link href="<%=request.getContextPath()%>/assets/css/bootstrap.min.css" rel="stylesheet">
        <script src="<%=request.getContextPath()%>/assets/js/bootstrap.bundle.min.js"></script>
        <link href="<%=request.getContextPath()%>/assets/css/custom.css" rel="stylesheet">
    </head>
    <body>
        <div class="modal-dialog modal-dialog-centered">
            <div class="modal-content">
                <div class="modal-header">
                    <h1 class="primary-color-underline modal-title fs-5">Log In</h1>
                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                </div>
                <div class="modal-body">
                    <input type="text" class="form-control my-3" id="addUsername" placeholder="Username:" disabled>
                    <input type="password" class="form-control my-3" id="addPassword" placeholder="Password:" disabled>
                </div>
                <div class="modal-footer">
                    <button class="btn" data-bs-dismiss="modal">Close</button>
                    <a href = "<%=request.getContextPath()%>/instances/admin/Admin Home Page.jsp">
                        <button class="btn">Login</button>
                    </a>
                </div>
            </div>
        </div>
    </body>
</html>
