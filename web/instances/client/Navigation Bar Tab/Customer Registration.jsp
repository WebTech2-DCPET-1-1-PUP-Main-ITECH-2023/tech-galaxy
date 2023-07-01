<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Customer Registration | Tech Galaxy</title>
        <link rel="icon" type="image/x-icon" href="<%=request.getContextPath()%>/assets/images/tech-galaxy.png">
        <link href="<%=request.getContextPath()%>/assets/css/bootstrap.min.css" rel="stylesheet">
        <script src="<%=request.getContextPath()%>/assets/js/jquery-3.6.4.min.js"></script>
        <script src="<%=request.getContextPath()%>/assets/js/bootstrap.bundle.min.js"></script>
        <link href="<%=request.getContextPath()%>/assets/css/custom.css" rel="stylesheet">
        <script type="module" src="<%=request.getContextPath()%>/assets/js/Form Validations/Customer Registration Validation.js"></script>
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.3.0/font/bootstrap-icons.css">
    </head>
    <body>
        <%@ include file="../Custom Components/NavBar.jsp" %>
        <div class="p-5">
            <div class ="row d-flex justify-content-center align-content-center">
                    <div class ="col-7 container-fluid give-primary-bg rounded p-4 mx-2 ">
                        <div class = "d-flex justify-content-center"><h1 class = "secondary-color-underline primary-font">Account Registration</h1></div>
                        <p class ="form-label"><c:out value="${customerRegistration.username}"/> has been added.</p>
                        <form id = "customerRegistrationForm" method="post" action="<%=request.getContextPath()%>/customerRegistration">
                            <div class="mb-3">
                                <label class="form-label ">Preferred Username:</label>
                                <input required placeholder="Required, alphanumeric characters only, minimum: 4, maximum: 5" type="text" id = "username" name = "username" class="form-control">
                                <p id = "usernameLabel" class = "form-label"></p>
                            </div>
                            <div class="mb-3">
                                <label class="form-label">Password:</label>
                                <div class = "row">
                                    <div class ="col"><input required placeholder="Required, Alphanumeric; 8-16 characters; Atleast with 1 capital, small, number, and special." type="password" name = "password" class="form-control" id = "password"></div>
                                    <div class ="col-1"><i id="userPasswordToggle" class="bi bi-eye-fill eye"></i></div>
                                </div>
                                
                                <p id = "passwordLabel" class = "form-label"></p>
                            </div>
                            <div class="mb-3">
                                <label class="form-label">Confirm Password:</label>
                                <div class = "row">
                                    <div class ="col"><input required placeholder="Required, must be same with password" id = "confirmPassword" type="password" name = "confirmPassword" class="form-control"></div>
                                    <div class ="col-1"><i  id = "userConfirmPasswordToggle" class="bi bi-eye-fill eye"></i></div>
                                </div>
                                <p id = "confirmPasswordLabel" class = "form-label"></p>
                            </div>
                            <div class="mb-3">
                                <label class="form-label">First Name:</label>
                                <input required placeholder="Required, characters only, minimum: 1" id = "firstName" type="text" name = "firstName" class="form-control">
                                <p id = "firstNameLabel" class = "form-label"></p>
                            </div>
                            <div class="mb-3">
                                <label class="form-label">Middle Name:</label>
                                <input placeholder="Characters only" id = "middleName" name = "middleName" type="text" class="form-control">
                                <p id = "middleNameLabel" class = "form-label"></p>
                            </div>
                            <div class="mb-3">
                                <label class="form-label">Last name:</label>
                                <input required placeholder="Required, characters only, minimum: 2" id = "lastName" name = "lastName" type="text" class="form-control">
                                <p id = "lastNameLabel" class = "form-label"></p>
                            </div>
                            <div class="mb-3">
                                <label class="form-label">Complete Address:</label>
                                <input required placeholder="Required, alphanumeric characters only" type="text" name = "address" id = "address" class="form-control">
                                <p id = "addressLabel" class = "form-label"></p>
                            </div>
                            <div class ="row">
                                <div class="col mb-3">
                                    <label class="form-label">Birth Date:</label>
                                    <input required type="text" placeholder="MM/DD/YYYY" id = "birthDate" name = "birthDate" class="form-control">
                                    <p id = "birthDateLabel" class = "form-label"></p>
                                </div>
                                <div class="col mb-3">
                                    <label class="form-label">Mobile Number:</label>
                                    <input required placeholder="Required, numeric characters only, 11 digits" id = "mobileNumber" name = "mobileNumber" type="number" class="form-control">
                                    <p id = "mobileNumberLabel" class = "form-label"></p>
                                </div>
                            </div>
                            <div class = "d-flex justify-content-center">
                                <button class="second-btn ms-3" id = "submit">Register</button>
                            </div>
                        </form>
                    </div>

            </div>
        </div>
        <%@ include file="../Custom Components/Footer.jsp" %>
    </body>
</html>
