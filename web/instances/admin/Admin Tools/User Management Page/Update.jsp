
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>User Management Page | Tech Galaxy</title>
        <link rel="icon" type="image/x-icon" href="<%=request.getContextPath()%>/assets/images/tech-galaxy.png">
        <link href="<%=request.getContextPath()%>/assets/css/bootstrap.min.css" rel="stylesheet">
        <script src="<%=request.getContextPath()%>/assets/js/bootstrap.bundle.min.js"></script>
        <link href="<%=request.getContextPath()%>/assets/css/custom.css" rel="stylesheet">
        <script src="<%=request.getContextPath()%>/assets/js/jquery-3.6.4.min.js"></script>
        <script src="<%=request.getContextPath()%>/assets/js/Form Validations/Toggle Password.js"></script>
        <script type="module" src="<%=request.getContextPath()%>/assets/js/Form Validations/User Additional Updates.js"></script>
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.3.0/font/bootstrap-icons.css">
    </head>
    <body>
        <%@ include file="../../Custom Components/NavBar.jsp" %>
        <div class="d-flex justify-content-center">
            <div class = "container-sm m-4">
                <div class = "border-update py-4">
                    <form method="POST" action="<%=request.getContextPath()%>/users/update">
                        <input type="hidden" name="verifier" value="/users/update" />
                        <h1 class="color-white primary-font center mb-4">Update Users Form</h1>
                        <div class="row align-items-center my-2 d-flex justify-content-center">
                            <div class="col-1">
                                <label for="userID" class="col-form-label color-white secondary-font">User ID</label>
                            </div>
                            <div class="col-5">
                                <input required type="text" id="userID" name="userID" class="form-control product-inputs" placeholder="Required; Alphanumeric; 5 Characters" value="<c:out value='${usersList.userId}'/>" readonly>
                            </div>
                        </div>
                        <div class="row align-items-center d-flex justify-content-center">
                            <p class = "col-1"></p>
                            <p id = "userIDLabel" class = "col-5 form-label"></p>
                        </div>

                        <div class="row align-items-center my-2 d-flex justify-content-center">
                            <div class="col-1">
                                <label for="firstName" class="col-form-label color-white secondary-font">First Name</label>
                            </div>
                            <div class="col-5">
                                <input required type="text" id="firstName" name="firstName" class="form-control product-inputs" placeholder="Required; Letters only; must be at least 1 character(s)" value="<c:out value='${usersList.firstName}'/>">
                            </div>
                        </div>
                        <div class="row align-items-center d-flex justify-content-center">
                            <p class = "col-1"></p>
                            <p id = "userFirstNameLabel" class = "col-5 form-label"></p>
                        </div>

                        <div class="row align-items-center my-2 d-flex justify-content-center">
                            <div class="col-1">
                                <label for="middleName" class="col-form-label color-white secondary-font">Middle Name</label>
                            </div>
                            <div class="col-5">
                                <input type="text" id="middleName" name="middleName" class="form-control product-inputs" placeholder="Letters only; must be at least 1 character(s)" value="<c:out value='${usersList.middleName}'/>">
                            </div>
                        </div>
                        <div class="row align-items-center d-flex justify-content-center">
                            <p class = "col-1"></p>
                            <p id = "userMiddleNameLabel" class = "col-5 form-label"></p>
                        </div>

                        <div class="row align-items-center my-2 d-flex justify-content-center">
                            <div class="col-1">
                                <label for="lastName" class="col-form-label color-white secondary-font">Last Name</label>
                            </div>
                            <div class="col-5">
                                <input required type="text" id="lastName" name="lastName" class="form-control product-inputs" placeholder="Required; Letters only; must be at least 1 character(s)" value="<c:out value='${usersList.lastName}'/>">
                            </div>
                        </div>
                        <div class="row align-items-center d-flex justify-content-center">
                            <p class = "col-1"></p>
                            <p id = "userLastNameLabel" class = "col-5 form-label"></p>
                        </div>
                        <div class="row align-items-center my-2 d-flex justify-content-center">
                            <div class="col-1">
                                <label for="completeAddress" class="col-form-label color-white secondary-font"> Address</label>
                            </div>
                            <div class="col-5">
                                <input type="text" id="address" name="address" class="form-control product-inputs" placeholder="Required; Letters only; must be at least 1 character(s)" value="<c:out value='${usersList.completeAddress}'/>">
                            </div>
                        </div>
                        <div class="row align-items-center d-flex justify-content-center">
                            <p class = "col-1"></p>
                            <p id = "addressLabel" class = "col-5 form-label"></p>
                        </div>
                        <div class="row align-items-center my-2 d-flex justify-content-center">
                            <div class="col-1">
                                <label for="birthDay" class="col-form-label color-white secondary-font">Birthday</label>
                            </div>
                            <div class="col-5">
                                <input type="text" id="birthDate" name="birthDate" class="form-control product-inputs" placeholder="Required; Letters only; must be at least 1 character(s)" value="<c:out value='${usersList.birthDay}'/>">
                            </div>
                        </div>
                        <div class="row align-items-center d-flex justify-content-center">
                            <p class = "col-1"></p>
                            <p id = "birthDateLabel" class = "col-5 form-label"></p>
                        </div>
                        <div class="row align-items-center my-2 d-flex justify-content-center">
                            <div class="col-1">
                                <label for="mobileNumber" class="col-form-label color-white secondary-font">Mobile Number</label>
                            </div>
                            <div class="col-5">
                                <input type="text" id="mobileNumber" name="mobileNumber" class="form-control product-inputs" placeholder="Required; Letters only; must be at least 1 character(s)" value="<c:out value='${usersList.mobileNumber}'/>">
                            </div>
                        </div>
                        <div class="row align-items-center d-flex justify-content-center">
                            <p class = "col-1"></p>
                            <p id = "mobileNumberLabel" class = "col-5 form-label"></p>
                        </div>

                        <div class="row align-items-center my-2 d-flex justify-content-center">
                            <div class="col-1">
                                <label for="userRole" class="col-form-label color-white secondary-font">User Role</label>
                            </div>
                            <div class="col-5">
                                <select required class="form-control user-inputs" id="userRole" name="userRole" required>
                                    <c:set var="userRole" value="${usersList.userRole}"></c:set>
                                    <c:if test="${userRole=='Administrator'}">
                                        <option value="Administrator">Admin</option>
                                        <option value="Customer">Customer</option>
                                    </c:if>
                                    <c:if test="${userRole=='Customer'}">
                                        <option value="Customer">Customer</option>
                                        <option value="Administrator">Admin</option>
                                    </c:if>
                                </select>
                            </div>
                        </div>
                        <div class="row align-items-center d-flex justify-content-center">
                            <p class = "col-1"></p>
                            <p id = "userRoleLabel" class = "col-5 form-label"></p>
                        </div>
                                    
                        <div class = "d-flex justify-content-center">
                            <button id = "addUsersSave" class="btn primary-font">Save</button>
                        </div>
                    </form>
                </div>
            </div>
        </div>
        <%@ include file="../../Custom Components/Footer.jsp" %>
    </body>
</html>
