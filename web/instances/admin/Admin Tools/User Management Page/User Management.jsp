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
                <div class="col primary-font center">
                    User ID
                </div>
                <div class="col primary-font center">
                    First Name
                </div>
                <div class="col primary-font center">
                    Middle name
                </div>
                <div class="col primary-font center">
                    Last name
                </div>
                <div class="col primary-font center">
                    Address
                </div>
                <div class="col primary-font center">
                    Birthday
                </div>
                <div class="col primary-font center">
                    Mobile Number
                </div>
                <div class="col primary-font center">
                    User Role
                </div>
                <div class="col primary-font center">
                    Login Status
                </div>
                <div class="col primary-font center">
                    Account Status
                </div>
                <div class="col primary-font center">
                    Action
                </div>
            </div>
            <c:forEach items="${usersList}" var="user">
                <div class="row table-border-bottom py-2">
                    <div class="col center">
                        ${user.userId}
                    </div>
                    <div class="col center">
                        ${user.firstName}
                    </div>
                    <div class="col center">
                        ${user.middleName}
                    </div>
                    <div class="col center">
                        ${user.lastName}
                    </div>
                    <div class="col center">
                        ${user.completeAddress}
                    </div>
                    <div class="col center">
                        ${user.birthDay}
                    </div>
                    <div class="col center">
                        ${user.mobileNumber}
                    </div>
                    <div class="col center">
                        ${user.userRole}
                    </div>
                    <div class="col center">
                        ${user.loginStatus}
                    </div>
                    <div class="col center">
                        ${user.accountStatus}
                    </div>
                    <div class="col center">
                        <div>
                            <form method="POST" action="<%=request.getContextPath()%>/users/update/form">
                                <input type="hidden" name="verifier" value="/users/update/form" />
                                <input type="hidden" name="userId" value="${user.userId}" />
                                <button class="btn btn-sm btn-link">Update</button>
                            </form>
                        </div>
                        <div>
                            <form method="POST" action="<%=request.getContextPath()%>/users/delete">
                                <input type="hidden" name="verifier" value="/users/delete" />
                                <input type="hidden" name="userId" value="${user.userId}" />
                                <button class="btn btn-sm btn-link">Delete</button>
                            </form>
                        </div>
                    </div>
                </div>
            </c:forEach>
            <div class="row table-border-bottom py-1">
                <div class = "col">
                    <c:out value="${message}"/>
                </div>
            </div>
            <a href="<%=request.getContextPath()%>/users/create/form" class="btn primary-font mt-3" id = "addUser" >Add Users</a>
        </div>
        <%@ include file="../../Custom Components/Footer.jsp" %>
    </body>
</html>