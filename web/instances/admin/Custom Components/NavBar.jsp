<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>Navigation Bar | Tech Galaxy</title>
        <link rel="icon" type="image/x-icon" href="<%=request.getContextPath()%>/assets/images/tech-galaxy.png">
        <link href="<%=request.getContextPath()%>/assets/css/bootstrap.min.css" rel="stylesheet">
        <script src="<%=request.getContextPath()%>/assets/js/bootstrap.bundle.min.js"></script>
        <link href="<%=request.getContextPath()%>/assets/css/custom.css" rel="stylesheet">
    </head>
    <body>

        <nav class="navbar">
            <div class="container-fluid d-flex flex-wrap align-items-center justify-content-between py-2 px-4">
                <a class="navbar-brand d-flex flex-row align-items-center justify-content-center" href="<%=request.getContextPath()%>">
                    <img src="<%=request.getContextPath()%>/assets/images/tech-galaxy.png" alt="Logo" width="70" height="40" class="d-inline-block align-text-top">
                    <p class = "color-white m-0 px-3 logo-hover primary-font">Tech Galaxy</p>
                </a>
                <div class = "d-flex flex-row flex-wrap align-items-center justify-content-center secondary-font">
                    <a class="nav-link first-navbar-link-change mx-3 color color-white primary-font center" href="<%=request.getContextPath()%>/adminHomePage">Admin Directory</a>
                    <a class="nav-link first-navbar-link-change mx-3 color color-white primary-font center" href="<%=request.getContextPath()%>/allProducts">Products Page</a>
                    <a class="nav-link first-navbar-link-change mx-3 color color-white primary-font center" href="<%=request.getContextPath()%>/users">User Management</a>

                    <button class="btn ms-3 primary-font" data-bs-toggle="modal" data-bs-target="#adminLogInModal">Log In</button></div>
                <div class="modal fade" id="adminLogInModal" tabindex="-1" aria-labelledby="adminLogInModal" aria-hidden="true">
                    <div class="modal-dialog modal-dialog-centered">
                        <div class="modal-content">
                            <div class="modal-header">
                                <h1 class="primary-color-underline modal-title fs-5">Log In</h1>
                                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                            </div>
                            <div class="modal-body">
                                <input type="text" class="form-control my-3" id="addUsername" placeholder="Username:" disabled>
                                <input type="password" class="form-control my-3" id="addPassword" placeholder="Password:" disabled>
                            </div>
                            <div class="modal-footer">
                                <button class="btn" data-bs-dismiss="modal">Close</button>
                                <a href = "<%=request.getContextPath()%>/instances/admin/Admin Home Page.jsp">
                                    <button class="btn">Login</button>
                                </a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

        </div>

    </nav>
</body>
</html>
