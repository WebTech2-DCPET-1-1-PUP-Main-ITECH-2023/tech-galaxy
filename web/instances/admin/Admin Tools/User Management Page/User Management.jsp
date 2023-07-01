<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8" %>
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
    </head>
    <body>
        <%@ include file="../../Custom Components/NavBar.jsp" %>
        <div class = "container-fluid my-4 mx-4">
            <h1 class = "primary-color-underline primary-font center">User Management Page</h1>
            <form>
                <div class="row align-items-center my-2">
                    <div class="col col-lg-1">
                        <label for="searchUserID" class="col-form-label color-white primary-font">User ID:</label>
                    </div>
                    <div class="col col-lg-2">
                        <input type="text" id="searchUserID" class="form-control product-inputs" aria-labelledby="passwordHelpInline">
                    </div>
                </div>

                <div class="row align-items-center my-2">
                    <div class="col col-lg-1">
                        <label for="searchUserName" class="col-form-label color-white primary-font">User Name:</label>
                    </div>
                    <div class="col col-lg-2">
                        <input type="password" id="searchUserName" class="form-control product-inputs" aria-labelledby="passwordHelpInline">
                    </div>
                </div>
                <div class="row align-items-center my-2">
                    <div class="col col-lg-1">
                        <label for="search" class="col-form-label color-white"></label>
                    </div>
                    <div class="col col-lg-2">
                        <button class="btn primary-font" id = "search">Search</button>
                    </div>
                </div>
            </form>
        </div>
        <div class="px-5 py-4 color-white">
            <div class="row text-center table-border-bottom pb-2">
                <div class="col primary-font">
                    User ID
                </div>
                <div class="col primary-font">
                    User Name
                </div>
                <div class="col primary-font">
                    Description
                </div>
                <div class="col primary-font">
                    User Role
                </div>
                <div class="col primary-font">
                    Login Status
                </div>
                <div class="col primary-font">
                    Account Status
                </div>
            </div>
            <div class="row table-border-bottom py-1">
                <div class="col">
                    -
                </div>
                <div class="col">
                    -
                </div>
                <div class="col">
                    -
                </div>
                <div class="col">
                    -
                </div>
                <div class="col">
                    -
                </div>
                <div class="col">
                    -
                </div>
            </div>
            <div class="row table-border-bottom py-1">
                <div class = "col">
                    <c:out value="${users.userID}"/> has been added.
                </div>
            </div>
            <button class="btn primary-font mt-3" id = "addUser" data-bs-toggle="modal" data-bs-target="#addUsersModal">Add Users</button>
            <div class="modal fade" id="addUsersModal" tabindex="-1" aria-labelledby="addProductsModal" aria-hidden="true">
                <%@ include file="Add Users Modal.jsp" %>
            </div>
        </div>
                <%@ include file="../../Custom Components/Footer.jsp" %>
    </body>
</html>
