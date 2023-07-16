<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>Add Users | Tech Galaxy</title>
        <link rel="icon" type="image/x-icon" href="<%=request.getContextPath()%>/assets/images/tech-galaxy.png">
        <link href="<%=request.getContextPath()%>/assets/css/bootstrap.min.css" rel="stylesheet">
        <script src="<%=request.getContextPath()%>/assets/js/bootstrap.bundle.min.js"></script>
        <link href="<%=request.getContextPath()%>/assets/css/custom.css" rel="stylesheet">
        <script src="<%=request.getContextPath()%>/assets/js/jquery-3.6.4.min.js"></script>
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.3.0/font/bootstrap-icons.css">
        <script type = "module" src="<%=request.getContextPath()%>/assets/js/Form Validations/Add Users Validation.js"></script>
        <script src="<%=request.getContextPath()%>/assets/js/Form Validations/Toggle Password.js"></script>
    </head>
    <body>
        <%@ include file="../../Custom Components/NavBar.jsp" %>
        <div class="d-flex justify-content-center">
            <div class = "container-sm m-4">
                <div class = "border-update p-4">
                    <h2 class="color-white primary-font center mb-4">Users Form</h2>
                    <form method="POST" action="<%=request.getContextPath()%>/users/create">
                        <div class="row align-items-center my-2 d-flex justify-content-center">
                            <div class="col-1">
                                <label for="userID" class="col-form-label color-white secondary-font">User ID</label>
                            </div>
                            <div class="col-5">
                                <input required type="text" id="userID" name="userID" class="form-control product-inputs" placeholder="Required; Alphanumeric; 5 Characters">
                            </div>
                        </div>
                        <div class="row align-items-center my-2 d-flex justify-content-center">
                            <p class = "col-1"></p>
                            <p id = "userIDLabel" class = "col-5 form-label"></p>
                        </div>

                        <div class="row align-items-center my-2 d-flex justify-content-center">
                            <div class="col-1">
                                <label for="userFirstName" class="col-form-label color-white secondary-font">First Name</label>
                            </div>
                            <div class="col-5">
                                <input required type="text" id="userFirstName" name="userFirstName" class="form-control product-inputs" placeholder="Required; Letters only; must be at least 1 character(s)">
                            </div>
                        </div>
                        <div class="row align-items-center my-2 d-flex justify-content-center">
                            <p class = "col-1"></p>
                            <p id = "userFirstNameLabel" class = "col-5 form-label"></p>
                        </div>

                        <div class="row align-items-center my-2 d-flex justify-content-center my-2">
                            <div class="col-1">
                                <label for="userMiddleName" class="col-form-label color-white secondary-font">Middle Name</label>
                            </div>
                            <div class="col-5">
                                <input type="text" id="userMiddleName" name="userMiddleName" class="form-control product-inputs" placeholder="Letters only; must be at least 1 character(s)">
                            </div>
                        </div>
                        <div class="row align-items-center my-2 d-flex justify-content-center">
                            <p class = "col-1"></p>
                            <p id = "userMiddleNameLabel" class = "col-5 form-label"></p>
                        </div>

                        <div class="row align-items-center my-2 d-flex justify-content-center my-2">
                            <div class="col-1">
                                <label for="userLastName" class="col-form-label color-white secondary-font">Last Name</label>
                            </div>
                            <div class="col-5">
                                <input required type="text" id="userLastName" name="userLastName" class="form-control product-inputs" placeholder="Required; Letters only; must be at least 1 character(s)">
                            </div>
                        </div>
                        <div class="row align-items-center my-2 d-flex justify-content-center">
                            <p class = "col-1"></p>
                            <p id = "userLastNameLabel" class = "col-5 form-label"></p>
                        </div>

                        <div class="row align-items-center my-2 d-flex justify-content-center my-2">
                            <div class="col-1">
                                <label for="userRole" class="col-form-label color-white secondary-font">User Role</label>
                            </div>
                            <div class="col-5">
                                <select required class="form-control user-inputs" id="userRole" name="userRole" required>
                                    <option value="default">--select user role--</option>
                                    <option value="Administrator">Admin</option>
                                    <option value="Customer">Customer</option>
                                </select>
                            </div>
                        </div>
                        <div class="row align-items-center my-2 d-flex justify-content-center">
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