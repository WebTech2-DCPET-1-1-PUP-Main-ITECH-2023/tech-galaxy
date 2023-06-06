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
        <script type = "module" src="<%=request.getContextPath()%>/assets/js/Form Validations/Add Users Validation.js"></script>
    </head>
    <body>
        <div class="modal-dialog modal-dialog-centered">
            <div class="modal-content">
                <div class="modal-header">
                    <h1 class="color-white modal-title fs-5">Users Form</h1>
                </div>
                <div class="modal-body">
                    <form method="POST" action="<%=request.getContextPath()%>/addUsers">
                        <div class="row align-items-center my-2">
                            <div class="col">
                                <label for="userID" class="col-form-label color-white">User ID</label>
                            </div>
                            <div class="col-8">
                                <input required type="text" id="userID" name="userID" class="form-control product-inputs" placeholder="Required; Integer; must be greater than 0.00">
                            </div>
                        </div>
                        <div class="row">
                            <p class = "col"></p>
                            <p id = "userIDLabel" class = "col-8 form-label"></p>
                        </div>

                        <div class="row align-items-center my-2">
                            <div class="col">
                                <label for="userFirstName" class="col-form-label color-white">First Name</label>
                            </div>
                            <div class="col-8">
                                <input required type="text" id="userFirstName" name="userFirstName" class="form-control product-inputs" placeholder="Required; Integer; must be greater than 0.00">
                            </div>
                        </div>
                        <div class="row">
                            <p class = "col"></p>
                            <p id = "userFirstNameLabel" class = "col-8 form-label"></p>
                        </div>

                        <div class="row align-items-center my-2">
                            <div class="col">
                                <label for="userMiddleName" class="col-form-label color-white">Middlle Name</label>
                            </div>
                            <div class="col-8">
                                <input required type="text" id="userMiddleName" name="userMiddleName" class="form-control product-inputs" placeholder="Required; Integer; must be greater than 0.00">
                            </div>
                        </div>
                        <div class="row">
                            <p class = "col"></p>
                            <p id = "userMiddleNameLabel" class = "col-8 form-label"></p>
                        </div>

                        <div class="row align-items-center my-2">
                            <div class="col">
                                <label for="userLastName" class="col-form-label color-white">Last Name</label>
                            </div>
                            <div class="col-8">
                                <input required type="text" id="userLastName" name="userLastName" class="form-control product-inputs" placeholder="Required; Integer; must be greater than 0.00">
                            </div>
                        </div>
                        <div class="row">
                            <p class = "col"></p>
                            <p id = "userLastNameLabel" class = "col-8 form-label"></p>
                        </div>

                        <div class="row align-items-center my-2">
                            <div class="col">
                                <label for="userRole" class="col-form-label color-white">User Role</label>
                            </div>
                            <div class="col-8">
                                <select required class="form-control user-inputs" id="userRole" name="userRole" required>
                                    <option value="default">--select user role--</option>
                                    <option value="Admin">Admin</option>
                                    <option value="Manager">Manager</option>
                                    <option value="Staff">Staff</option>
                                </select>
                            </div>
                        </div>
                        <div class="row">
                            <p class = "col"></p>
                            <p id = "userRoleLabel" class = "col-8 form-label"></p>
                        </div>

                        <div class="modal-footer">
                            <button id = "addUsersSave" class="btn">Save</button>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </body>
</html>