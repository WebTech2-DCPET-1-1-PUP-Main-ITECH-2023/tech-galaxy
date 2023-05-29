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
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.3.0/font/bootstrap-icons.css">
    </head>
    <body>
        <nav class="navbar">
            <div class="container-fluid d-flex justify-content-between py-2 px-4">
                <a class="navbar-brand d-flex flex-row align-items-center" href="<%=request.getContextPath()%>/instances/client/ClientHomePage.jsp">
                    <img src="<%=request.getContextPath()%>/assets/images/tech-galaxy.png" alt="Logo" width="70" height="40" class="d-inline-block align-text-top">
                    <p class = "color-white m-0 px-3 logo-hover primary-font">Tech Galaxy</p>
                </a>
                <div class = "d-flex flex-row align-items-center">
                    <a class="nav-link first-navbar-link-change mx-3 color color-white primary-font" aria-current="page" href="<%=request.getContextPath()%>/instances/client/Navigation Bar Tab/Wallet.jsp">Wallet</a>
                    <a class="nav-link first-navbar-link-change mx-3 color color-white primary-font" href="<%=request.getContextPath()%>/instances/client/Navigation Bar Tab/Wishlist.jsp">Wishlist</a>
                    <a class="nav-link first-navbar-link-change mx-3 color color-white primary-font" href="<%=request.getContextPath()%>/instances/client/Navigation Bar Tab/About.jsp">About</a>
                    <a class="nav-link first-navbar-link-change mx-3 color color-white primary-font" href="<%=request.getContextPath()%>/instances/client/Navigation Bar Tab/Account.jsp">Account</a>
                    <a class="nav-link first-navbar-link-change mx-3 pb-2" href="<%=request.getContextPath()%>/instances/client/Navigation Bar Tab/Cart.jsp"><i class="bi bi-cart-plus"></i></a>
                    <button class="btn ms-3 primary-font" data-bs-toggle="modal" data-bs-target="#exampleModal">Log In</button></div>
                <div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
                    <%@ include file="../Navigation Bar Tab/Login Page.jsp" %>
                </div>
            </div>

        </div>

    </nav>
    <nav class="navbar second-navbar py-2 px-4">
        <div class="container-fluid d-flex flex-row justify-content-between">
            <a class="nav-link link-change color-white " href="<%=request.getContextPath()%>/instances/client/Categories Tab/Category Page.jsp">Laptops</a>
            <a class="nav-link link-change color-white " href="<%=request.getContextPath()%>/instances/client/Categories Tab/Category Page.jsp">Prebuilt</a>
            <a class="nav-link link-change color-white " href="<%=request.getContextPath()%>/instances/client/Categories Tab/Category Page.jsp">Motherboard</a>
            <a class="nav-link link-change color-white " href="<%=request.getContextPath()%>/instances/client/Categories Tab/Category Page.jsp">CPU</a>
            <a class="nav-link link-change color-white " href="<%=request.getContextPath()%>/instances/client/Categories Tab/Category Page.jsp">GPU</a>
            <a class="nav-link link-change color-white " href="<%=request.getContextPath()%>/instances/client/Categories Tab/Category Page.jsp">Memory</a>
            <a class="nav-link link-change color-white " href="<%=request.getContextPath()%>/instances/client/Categories Tab/Category Page.jsp">Storage</a>
            <a class="nav-link link-change color-white " href="<%=request.getContextPath()%>/instances/client/Categories Tab/Category Page.jsp">Coolers</a>
            <a class="nav-link link-change color-white " href="<%=request.getContextPath()%>/instances/client/Categories Tab/Category Page.jsp">Peripherals</a>
            <a class="nav-link link-change color-white " href="<%=request.getContextPath()%>/instances/client/Categories Tab/Category Page.jsp">Utilities</a>
            <form class="d-flex" role="search">
                <input class="form-control me-2" type="search" placeholder="Search" aria-label="Search">
                <button class="second-btn" type="submit">Search</button>
            </form>
        </div>
    </nav>
</body>
</html>
