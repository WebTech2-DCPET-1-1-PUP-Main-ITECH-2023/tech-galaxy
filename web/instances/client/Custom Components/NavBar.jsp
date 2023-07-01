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
        <script src="<%=request.getContextPath()%>/assets/js/jquery-3.6.4.min.js"></script>
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.3.0/font/bootstrap-icons.css">
        <script src="<%=request.getContextPath()%>/assets/js/Form Validations/Toggle Password.js"></script>
        <script type="module" src="<%=request.getContextPath()%>/assets/js/Form Validations/ClientLogIn.js"></script>
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
                    <div class="modal-dialog modal-dialog-centered">
                        <div class="modal-content">
                            <div class="modal-header">
                                <h1 class="primary-color-underline modal-title fs-5">Log In</h1>
                                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                            </div>
                            <div class="modal-body">
                                <div class = "my-1">
                                    <input type="text" class="form-control my-2" id="clientUsername" placeholder="Username:">
                                    <p id = "clientUsernameError" class = "form-label"></p>
                                </div>

                                <div class ="row my-1">
                                    <div class ="col my-1"><input type="password" class="form-control my-1" id="clientLogInPassword" placeholder="Password:"></div>
                                    <div class ="col-1 d-flex justify-content-center align-items-center align-content-center my-1"><i id="clientLogInPasswordToggle" class="bi bi-eye-fill eye"></i></div>
                                </div>
                                <p id = "clientLogInPasswordError" class = "form-label"></p>
                                <div class="d-flex flex-column align-items-center my-1"><a><p class="my-1 nav-link first-navbar-link-change color-white primary-font">Forgot Password?</p></a></div>
                                <div class ="d-flex flex-column align-items-center my-1">
                                    <p class = "my-2 color-white">Don’t have an account yet? Register here</p>
                                    <a href="<%=request.getContextPath()%>/customerRegistration"><p class = "btn my-1">Register</p></a>
                                </div>
                            </div>
                            <div class="modal-footer">
                                <button class="btn" data-bs-dismiss="modal">Close</button>
                                <button class="btn" id = "clientLogIn">Login</button>
                            </div>
                        </div>
                    </div>
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
