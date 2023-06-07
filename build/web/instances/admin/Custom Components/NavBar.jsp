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
            <div class="container-fluid d-flex justify-content-between py-2 px-4">
                <a class="navbar-brand d-flex flex-row align-items-center" href="<%=request.getContextPath()%>">
                    <img src="<%=request.getContextPath()%>/assets/images/tech-galaxy.png" alt="Logo" width="70" height="40" class="d-inline-block align-text-top">
                    <p class = "color-white m-0 px-3 logo-hover primary-font">Tech Galaxy</p>
                </a>
                <div class = "d-flex flex-row align-items-center">
                    <button class="btn ms-3 primary-font" data-bs-toggle="modal" data-bs-target="#adminLoginModal">Log In</button></div>
                <div class="modal fade" id="adminLoginModal" tabindex="-1" aria-labelledby="adminLoginModal" aria-hidden="true">
                    <%String adminNavBarLogin = "/adminLogIn";%>
                    <jsp:include page="<%= adminNavBarLogin%>" />
                </div>
            </div>

        </div>

    </nav>
    <nav class="navbar second-navbar py-2 px-4">
        <div class="container-fluid d-flex flex-row justify-content-between">
            <a class="nav-link link-change color-white " href="<%=request.getContextPath()%>/products">Products Page</a>
            <a class="nav-link link-change color-white " href="<%=request.getContextPath()%>/userManagement">User Management</a>
            <form class="d-flex" role="search">
                <input class="form-control me-2" id ="adminSearchNavBar" type="search" placeholder="Search" aria-label="Search">
                <button class="second-btn" type="submit">Search</button>
            </form>
        </div>
    </nav>
</body>
</html>
