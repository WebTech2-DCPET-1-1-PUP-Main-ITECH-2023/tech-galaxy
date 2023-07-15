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
        <div class="modal-dialog modal-dialog-centered">
            <div class="modal-content">
                <div class="modal-header">
                    <h1 class="color-white modal-title fs-5 primary-font">Users Form</h1>
                </div>
                <div class="modal-body">
                    <form method="POST" action="<%=request.getContextPath()%>/users/create">
                        <input type="hidden" name="verifier" value="/users/create" />
                        <div class="row align-items-center my-2">
                            <div class="col">
                                <label for="userID" class="col-form-label color-white secondary-font">User ID</label>
                            </div>
                            <div class="col-8">
                                <input required type="text" id="userID" name="userID" class="form-control product-inputs" placeholder="Required; Alphanumeric; 5 Characters">
                            </div>
                        </div>
                        <div class="row">
                            <p class = "col"></p>
                            <p id = "userIDLabel" class = "col-8 form-label"></p>
                        </div>

                        <div class="row align-items-center my-2">
                            <div class="col">
                                <label for="userFirstName" class="col-form-label color-white secondary-font">First Name</label>
                            </div>
                            <div class="col-8">
                                <input required type="text" id="userFirstName" name="userFirstName" class="form-control product-inputs" placeholder="Required; Letters only; must be at least 1
                                       character(s)">
                            </div>
                        </div>
                        <div class="row">
                            <p class = "col"></p>
                            <p id = "userFirstNameLabel" class = "col-8 form-label"></p>
                        </div>

                        <div class="row align-items-center my-2">
                            <div class="col">
                                <label for="userMiddleName" class="col-form-label color-white secondary-font">Middle Name</label>
                            </div>
                            <div class="col-8">
                                <input type="text" id="userMiddleName" name="userMiddleName" class="form-control product-inputs" placeholder="Letters only; must be at least 1 character(s)">
                            </div>
                        </div>
                        <div class="row">
                            <p class = "col"></p>
                            <p id = "userMiddleNameLabel" class = "col-8 form-label"></p>
                        </div>

                        <div class="row align-items-center my-2">
                            <div class="col">
                                <label for="userLastName" class="col-form-label color-white secondary-font">Last Name</label>
                            </div>
                            <div class="col-8">
                                <input required type="text" id="userLastName" name="userLastName" class="form-control product-inputs" placeholder="Required; Letters only; must be at least 1
                                       character(s)">
                            </div>
                        </div>
                        <div class="row">
                            <p class = "col"></p>
                            <p id = "userLastNameLabel" class = "col-8 form-label"></p>
                        </div>

                        <div class="row align-items-center my-2">
                            <div class="col">
                                <label for="userRole" class="col-form-label color-white secondary-font">User Role</label>
                            </div>
                            <div class="col-8">
                                <select required class="form-control user-inputs" id="userRole" name="userRole" required>
                                    <option value="default">--select user role--</option>
                                    <option value="Administrator">Admin</option>
                                    <option value="Customer">Customer</option>
                                </select>
                            </div>
                        </div>
                        <div class="row">
                            <p class = "col"></p>
                            <p id = "userRoleLabel" class = "col-8 form-label"></p>
                        </div>

                        <div class="modal-footer">
                            <button id = "addUsersSave" class="btn primary-font">Save</button>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </body>
</html>