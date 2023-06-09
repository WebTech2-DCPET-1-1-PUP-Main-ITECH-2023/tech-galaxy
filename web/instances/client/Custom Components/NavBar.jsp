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
            <div class="container-fluid d-flex flex-wrap align-items-center justify-content-between py-2 px-4">
                <a class="navbar-brand d-flex flex-row align-items-center justify-content-center" href="<%=request.getContextPath()%>">
                    <img src="<%=request.getContextPath()%>/assets/images/tech-galaxy.png" alt="Logo" width="70" height="40" class="d-inline-block align-text-top">
                    <p class = "color-white m-0 px-3 logo-hover primary-font">Tech Galaxy</p>
                </a>
                <div class = "d-flex flex-row flex-wrap align-items-center justify-content-center secondary-font">
                    <a class="nav-link first-navbar-link-change mx-3 color color-white primary-font center" aria-current="page" href="<%=request.getContextPath()%>/wallet">Wallet</a>
                    <a class="nav-link first-navbar-link-change mx-3 color color-white primary-font center" href="<%=request.getContextPath()%>/wishlist">Wishlist</a>
                    <a class="nav-link first-navbar-link-change mx-3 color color-white primary-font center" href="<%=request.getContextPath()%>/about">About</a>
                    <a class="nav-link first-navbar-link-change mx-3 color color-white primary-font center" href="<%=request.getContextPath()%>/account">Account</a>
                    <a class="nav-link first-navbar-link-change mx-3 pb-2 center" href="<%=request.getContextPath()%>/cart"><i class="cart-icon bi bi-cart-plus"></i></a>

                    <button class="btn ms-3 primary-font" data-bs-toggle="modal" data-bs-target="#clientLogInModal">Log In</button></div>
                <div class="modal fade" id="clientLogInModal" tabindex="-1" aria-labelledby="clientLogInModal" aria-hidden="true">
                    <%String navBarLogin = "/logIn";%>
                    <jsp:include page="<%= navBarLogin%>" />
                </div>
            </div>

        </div>

    </nav>
    <nav class="navbar second-navbar py-2 px-4">
        <div class="container-fluid d-flex flex-row flex-wrap align-items-center justify-content-between">
            <a class="nav-link link-change color-white center" href="<%=request.getContextPath()%>/laptops">Laptops</a>
            <a class="nav-link link-change color-white center" href="<%=request.getContextPath()%>/prebuilt">Prebuilt</a>
            <a class="nav-link link-change color-white center" href="<%=request.getContextPath()%>/motherboard">Motherboard</a>
            <a class="nav-link link-change color-white center" href="<%=request.getContextPath()%>/cpu">CPU</a>
            <a class="nav-link link-change color-white center" href="<%=request.getContextPath()%>/gpu">GPU</a>
            <a class="nav-link link-change color-white center" href="<%=request.getContextPath()%>/memory">Memory</a>
            <a class="nav-link link-change color-white center" href="<%=request.getContextPath()%>/storage">Storage</a>
            <a class="nav-link link-change color-white center" href="<%=request.getContextPath()%>/coolers">Coolers</a>
            <a class="nav-link link-change color-white center" href="<%=request.getContextPath()%>/peripherals">Peripherals</a>
            <a class="nav-link link-change color-white center" href="<%=request.getContextPath()%>/utilities">Utilities</a>
            <form class="d-flex center" role="search">
                <input class="form-control me-2" id ="clientSearchNavBar" type="search" placeholder="Search" aria-label="Search">
                <button class="second-btn" type="submit">Search</button>
            </form>
        </div>
    </nav>
</body>
</html>
