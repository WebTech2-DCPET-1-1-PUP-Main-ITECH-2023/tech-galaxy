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
                    <h2 class = "first-navbar-link-change primary-font">Admin Directory</h2>
                    <div class = "navbar-nav">
                        <a class="nav-link first-navbar-link-change mx-3 color color-white primary-font" aria-current="page" href="<%=request.getContextPath()%>/allProducts">Products Page</a>
                        <a class="nav-link first-navbar-link-change mx-3 color color-white primary-font" href="<%=request.getContextPath()%>/userManagement">User Management</a>
                        <a class="nav-link first-navbar-link-change mx-3 color color-white center" data-bs-toggle="modal" data-bs-target="#adminFooterLoginModal">Log In</a>
                        <div class="modal fade" id="adminFooterLoginModal" tabindex="-1" aria-labelledby="adminFooterLoginModal" aria-hidden="true">
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

                <div class="col d-flex flex-column align-items-center mx-3">
                    <h2 class = "first-navbar-link-change primary-font">Contact</h2>
                    <p><a class = "nav-link first-navbar-link-change" href=mailto:techgalaxy.pup@gmail.com">Tech Galaxy Email</a></p>
                </div>

            </div>
            <div class="row">
                <p class="copyright primary-font">Copyright 2023 <span class = "first-navbar-link-change">Tech Galaxy</span>.</p>
            </div>
        </footer>
    </body>
</html>
