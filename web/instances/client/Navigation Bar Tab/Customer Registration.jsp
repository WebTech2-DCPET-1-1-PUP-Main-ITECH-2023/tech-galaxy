<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Customer Registration | Tech Galaxy</title>
        <link rel="icon" type="image/x-icon" href="<%=request.getContextPath()%>/assets/images/tech-galaxy.png">
        <link href="<%=request.getContextPath()%>/assets/css/bootstrap.min.css" rel="stylesheet">
        <script src="<%=request.getContextPath()%>/assets/js/bootstrap.bundle.min.js"></script>
        <link href="<%=request.getContextPath()%>/assets/css/custom.css" rel="stylesheet">
        <script src="<%=request.getContextPath()%>/assets/js/jquery-3.6.4.min.js"></script>
        <script type="module" src="<%=request.getContextPath()%>/assets/js/Form Validations/Customer Registration Validation.js"></script>
    </head>
    <body>
        <%@ include file="../Custom Components/NavBar.jsp" %>
        <div class="p-5">
            <div class ="row">
                <div class ="col">
                    <div id="carouselExampleIndicators" data-ride="carousel" class="carousel slide py-2 mx-2">
                        <div class="carousel-indicators">
                            <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="0" class="active" aria-current="true" aria-label="Slide 1"></button>
                            <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="1" aria-label="Slide 2"></button>
                            <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="2" aria-label="Slide 3"></button>
                        </div>
                        <div class="carousel-inner rounded">
                            <div class="carousel-item active">
                                <img src="<%=request.getContextPath()%>/assets/images/asus.webp" class="d-block w-100 img-responsive rounded img-crs-height" alt="Asus Ad">
                            </div>he
                            <div class="carousel-item">
                                <img src="<%=request.getContextPath()%>/assets/images/lenovo.webp"class="d-block w-100 img-responsive rounded img-crs-height" alt="Leneovo Legion Ad">
                            </div>
                            <div class="carousel-item">
                                <img src="<%=request.getContextPath()%>/assets/images/nitro.webp" class="d-block w-100 img-responsive rounded img-crs-height" alt="Acer Nitro Ad">
                            </div>
                        </div>
                        <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide="prev">
                            <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                            <span class="visually-hidden">Previous</span>
                        </button>
                        <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide="next">
                            <span class="carousel-control-next-icon" aria-hidden="true"></span>
                            <span class="visually-hidden">Next</span>
                        </button>
                    </div>
                </div>
                <div class ="col container-fluid give-primary-bg rounded p-4 mx-2 ">
                    <div class = "d-flex justify-content-center"><h1 class = "secondary-color-underline primary-font">Account Registration</h1></div>
                    <p class ="form-label"><c:out value="${customerRegistration.username}"/> has been added.</p>
                    <form id = "customerRegistrationForm" method="post" action="<%=request.getContextPath()%>/customerRegistrationForm">
                        <div class="mb-3">
                            <label class="form-label ">Preferred Username:</label>
                            <input required placeholder="Required, alphanumeric characters only, minimum: 4, maximum: 12" type="text" id = "username" name = "username" class="form-control">
                            <p id = "usernameLabel" class = "form-label"></p>
                        </div>
                        <div class="mb-3">
                            <label class="form-label">Password:</label>
                            <input required placeholder="Required, Alphanumeric; 8-16; Atleast with 1 capital, small, number, and special." id = "password" type="password" name = "password" class="form-control">
                            <p id = "passwordLabel" class = "form-label"></p>
                        </div>
                        <div class="mb-3">
                            <label class="form-label">Confirm Password:</label>
                            <input required placeholder="Required, must be same with password" id = "confirmPassword" type="password" name = "confirmPassword" class="form-control">
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
