<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Footer | Tech Galaxy</title>
        <link rel="icon" type="image/x-icon" href="<%=request.getContextPath()%>/assets/images/tech-galaxy.png">
        <link href="<%=request.getContextPath()%>/assets/css/bootstrap.min.css" rel="stylesheet">
        <script src="<%=request.getContextPath()%>/assets/js/bootstrap.bundle.min.js"></script>
        <link href="<%=request.getContextPath()%>/assets/css/custom.css" rel="stylesheet">
    </head>
    <body>
        <footer class="d-flex flex-column align-items-center color-white">
            <div class="row m-5">

                <div class="col d-flex flex-column align-items-center mx-3">
                    <h2 class = "first-navbar-link-change primary-font">Tech Galaxy</h2>
                    <p class="text-justify p-3">
                        In a galaxy far far away... Tech Galaxy is an e-commerce site that offers a wide range of computers and computer parts. Our carefully curated selection includes the latest products from top brands, and our user-friendly website makes browsing and purchasing easy. We provide competitive prices, fast shipping, and excellent customer service. Join our galaxy of tech enthusiasts and explore the world of computing with Tech Galaxy, your trusted source for all things tech.
                    </p>
                </div>

                <div class="col d-flex flex-column align-items-center mx-3 center">
                    <h2 class = "first-navbar-link-change primary-font">Navigation</h2>
                    <div class = "navbar-nav">
                        <a class="nav-link first-navbar-link-change mx-3 color color-white primary-font" aria-current="page" href="<%=request.getContextPath()%>/wallet">Wallet</a>
                        <a class="nav-link first-navbar-link-change mx-3 color color-white primary-font" href="<%=request.getContextPath()%>/wishlist">Wishlist</a>
                        <a class="nav-link first-navbar-link-change mx-3 color color-white primary-font" href="<%=request.getContextPath()%>/about">About</a>
                        <a class="nav-link first-navbar-link-change mx-3 color color-white primary-font" href="<%=request.getContextPath()%>/account">Account</a>
                        <a class="nav-link first-navbar-link-change mx-3 color color-white center" data-bs-toggle="modal" data-bs-target="#clientFooterLoginModal">Log In</a>
                        <div class="modal fade" id="clientFooterLoginModal" tabindex="-1" aria-labelledby="clientFooterLoginModal" aria-hidden="true">
                            <div class="modal-dialog modal-dialog-centered">
                                <div class="modal-content">
                                    <div class="modal-header">
                                        <h1 class="primary-color-underline modal-title fs-5">Log In</h1>
                                        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                                    </div>
                                    <form>
                                        <div class="modal-body">

                                            <input type="text" class="form-control my-2" id="clientUsername" placeholder="Username:">
                                            <p id = "clientUsernameError"></p>
                                            <div class ="row">
                                                <div class ="col"><input type="password" class="form-control my-2" id="clientPassword" placeholder="Password:"></div>
                                                <div class ="col-1 d-flex justify-content-center align-items-center align-content-center"><i id="clientPasswordToggle" class="bi bi-eye-fill eye"></i></div>
                                            </div>
                                            <div class ="row">
                                                <div class ="col"><p id = "clientPasswordError"></div>
                                            </div>
                                            <div class ="d-flex flex-column align-items-center">
                                                <p class = "my-2 color-white">Don’t have an account yet? Register here</p>
                                                <a href="<%=request.getContextPath()%>/customerRegistration"><button class="btn">Register</button></a>
                                            </div>

                                        </div>
                                        <div class="modal-footer">
                                            <button class="btn" data-bs-dismiss="modal">Close</button>
                                            <button class="btn" id = "clientLogIn">Login</button>
                                        </div>
                                    </form>
                                </div>
                            </div>
                        </div>
                        <a class="nav-link first-navbar-link-change mx-3 color color-white" href="<%=request.getContextPath()%>/customerRegistrationPage">Register</a>
                    </div>

                </div>

                <div class="col d-flex flex-column align-items-center mx-3">
                    <h2 class = "first-navbar-link-change primary-font">Contact</h2>
                    <p><a class = "nav-link first-navbar-link-change" href="mailto:techgalaxy.pup@gmail.com">Tech Galaxy Email</a></p>
                </div>

            </div>
            <div class="row">
                <p class="copyright primary-font">Copyright 2023 <span class = "first-navbar-link-change">Tech Galaxy</span>.</p>
            </div>
        </footer>
    </body>
</html>
