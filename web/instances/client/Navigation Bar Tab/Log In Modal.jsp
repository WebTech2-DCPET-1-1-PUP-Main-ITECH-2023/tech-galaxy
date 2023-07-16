<%-- 
    Document   : Log In Modal
    Created on : 07 7, 23, 12:27:14 AM
    Author     : ACER
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Log In | Tech Galaxy</title>
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
                <form id = "clientLogInForm" method="post" action = "<%=request.getContextPath()%>/logIn">
                    <div class="modal-body">
                        <div class = "my-1">
                            <input type="text" class="form-control my-2" id="clientUsername" placeholder="Username:" name="clientUsername">
                            <p id = "clientUsernameError" class = "form-label"></p>
                        </div>
                        <div class ="row my-1">
                            <div class ="col my-1"><input type="password" class="form-control my-1" id="clientLogInPassword" placeholder="Password:" name="clientLogInPassword"></div>
                            <div class ="col-1 d-flex justify-content-center align-items-center align-content-center my-1"><i id="clientLogInPasswordToggle" class="bi bi-eye-fill eye"></i></div>
                        </div>
                        <p id = "clientLogInPasswordError" class = "form-label my-1"></p>
                        <p class = "center color-white primary-font my-1"><c:out value="${logInErrorMessage}"/></p>
                        <div class ="d-flex flex-column align-items-center my-1">
                            <p class = "color-white my-2">Forgot your Password?</p>
                            <a href="<%=request.getContextPath()%>/changePasswordPage">
                                <p class = "btn my-1">Change Password</p>
                            </a>
                        </div>
                        <div class ="d-flex flex-column align-items-center my-1">
                            <p class = "my-2 color-white">Don’t have an account yet? Register here</p>
                            <a href="<%=request.getContextPath()%>/customerRegistrationServlet/form"><p class = "btn my-1">Register</p></a>
                        </div>
                    </div>
                    <div class="modal-footer">
                        <button class="btn" data-bs-dismiss="modal">Close</button>
                        <button class="btn" id = "clientLogIn">Login</button>
                    </div>
                </form>
            </div>
        </div>
    </body>
</html>
