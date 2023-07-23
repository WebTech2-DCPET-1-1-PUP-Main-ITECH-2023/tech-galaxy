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
                <a class="navbar-brand d-flex flex-row align-items-center justify-content-center" href="<%=request.getContextPath()%>/customerHomePage">
                    <img src="<%=request.getContextPath()%>/assets/images/tech-galaxy.png" alt="Logo" width="70" height="40" class="d-inline-block align-text-top">
                    <p class = "color-white m-0 px-3 logo-hover primary-font">Tech Galaxy</p>
                </a>
                <div class = "d-flex flex-row flex-wrap align-items-center justify-content-center secondary-font">
                    <a class="nav-link first-navbar-link-change mx-3 color color-white primary-font center" href="<%=request.getContextPath()%>/adminHomePage">Admin Directory</a>
                    <a class="nav-link first-navbar-link-change mx-3 color color-white primary-font center" href="<%=request.getContextPath()%>/products">Products Page</a>
                    <a class="nav-link first-navbar-link-change mx-3 color color-white primary-font center" href="<%=request.getContextPath()%>/users">User Management</a>
                    <form method="post" action = "<%=request.getContextPath()%>/logOut">
                        <button class="btn ms-3 primary-font" type="submit">Log Out</button>
                    </form>
                </div>
            </div>
        </nav>
    </body>
</html>
