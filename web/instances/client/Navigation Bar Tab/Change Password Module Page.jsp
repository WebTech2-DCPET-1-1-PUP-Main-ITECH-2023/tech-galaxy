<%-- 
    Document   : Change Password Module Page
    Created on : 07 15, 23, 5:16:12 AM
    Author     : ACER
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>Change Password Page | Tech Galaxy</title>
        <link rel="icon" type="image/x-icon" href="<%=request.getContextPath()%>/assets/images/tech-galaxy.png">
        <link href="<%=request.getContextPath()%>/assets/css/bootstrap.min.css" rel="stylesheet">
        <script src="<%=request.getContextPath()%>/assets/js/bootstrap.bundle.min.js"></script>
        <link href="<%=request.getContextPath()%>/assets/css/custom.css" rel="stylesheet">
        <script src="<%=request.getContextPath()%>/assets/js/jquery-3.6.4.min.js"></script>
        <script src="<%=request.getContextPath()%>/assets/js/Form Validations/Toggle Password.js"></script>
        <script type="module" src="<%=request.getContextPath()%>/assets/js/Form Validations/Change Password Validation.js"></script>
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.3.0/font/bootstrap-icons.css">
    </head>
    <body>
        <%@ include file="../Custom Components/NavBar.jsp" %>
        <div>
            <div class="d-flex justify-content-center">
                <div class = "container-sm m-4">
                    <div class = "border-update py-4">
                        <h1 class="color-white modal-title fs-5 primary-font center mb-4">Change Password Module</h1>
                        <form method="POST" action="<%=request.getContextPath()%>/changePassword">
                            <div class="row align-items-center my-2 d-flex justify-content-center">
                                <div class="col-1">
                                    <label class="form-label">User Id:</label>
                                </div>
                                <div class="col-5">
                                    <div class = "row">
                                        <div class ="col"><input required placeholder="Required, enter your user ID." type="text" name = "userID" class="form-control" id = "userID"></div>
                                    </div>
                                </div>
                            </div>
                            <div class="row align-items-center d-flex justify-content-center">
                                <p class = "col-1"></p>
                                <p id = "userIDLabel" class = "col-5 form-label"></p>
                            </div>
                            <div class="row align-items-center my-2 d-flex justify-content-center">
                                <div class="col-1">
                                    <label class="form-label">Old Password:</label>
                                </div>
                                <div class="col-5">
                                    <div class = "row">
                                        <div class ="col"><input required placeholder="Required, enter your old Password" type="password" name = "oldPassword" class="form-control" id = "oldPassword"></div>
                                        <div class ="col-1"><i id="oldPasswordToggle" class="bi bi-eye-fill eye"></i></div>
                                    </div>
                                </div>
                            </div>
                            <div class="row align-items-center d-flex justify-content-center">
                                <p class = "col-1"></p>
                                <p id = "oldPasswordLabel" class = "col-5 form-label"></p>
                            </div>

                            <div class="row align-items-center my-2 d-flex justify-content-center">
                                <div class="col-1">
                                    <label class="form-label">New Password:</label>
                                </div>
                                <div class="col-5">
                                    <div class = "row">
                                        <div class ="col"><input required placeholder="Required, Alphanumeric; 8-16 characters; Atleast with 1 capital, small, number, and special." type="password" name = "newPassword" class="form-control" id = "newPassword"></div>
                                        <div class ="col-1"><i id="newPasswordToggle" class="bi bi-eye-fill eye"></i></div>
                                    </div>
                                </div>
                            </div>
                            <div class="row align-items-center d-flex justify-content-center">
                                <p class = "col-1"></p>
                                <p id = "newPasswordLabel" class = "col-5 form-label"></p>
                            </div>

                            <div class="row align-items-center my-2 d-flex justify-content-center">
                                <div class="col-1">
                                    <label class="form-label">Confirm New Password:</label>
                                </div>
                                <div class="col-5">
                                    <div class = "row">
                                        <div class ="col"><input required placeholder="Required, must be same with password" id = "confirmNewPassword" type="password" name = "confirmNewPassword" class="form-control"></div>
                                        <div class ="col-1"><i  id = "userConfirmNewPasswordToggle" class="bi bi-eye-fill eye"></i></div>
                                    </div>
                                </div>
                                <div class="row align-items-center d-flex justify-content-center">
                                    <p class = "col-1"></p>
                                    <p id = "confirmNewPasswordLabel" class = "col-5 form-label"></p>
                                </div>
                                <p class = "center color-white primary-font my-1"><c:out value="${message}"/></p>
                                <div class = "d-flex justify-content-center">
                                    <button id = "addUsersSave" class="btn primary-font">Save</button>
                                </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
        <%@ include file="../Custom Components/Footer.jsp" %>
    </body>
</html>
