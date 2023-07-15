<%-- 
    Document   : AdminHomePage
    Created on : 05 27, 23, 11:17:39 PM
    Author     : ACER
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Admin - Home Page | Tech Galaxy</title>
        <link rel="icon" type="image/x-icon" href="<%=request.getContextPath()%>/assets/images/tech-galaxy.png">
        <link href="<%=request.getContextPath()%>/assets/css/bootstrap.min.css" rel="stylesheet">
        <script src="<%=request.getContextPath()%>/assets/js/bootstrap.bundle.min.js"></script>
        <link href="<%=request.getContextPath()%>/assets/css/custom.css" rel="stylesheet">
    </head>
    <body>
        <%@include file="Custom Components/NavBar.jsp" %>
        <div class ="container-fluid my-4 mx-3 d-flex flex-column">
            <h1 class = "primary-color-underline primary-font text-center">Admin Directory</h1>
            <div class="my-1">
                <form method="POST" action="<%=request.getContextPath()%>/products/read">
                    <input type="hidden" name="verifier" value="/products/view" />
                    <button>
                        <div class="container-fluid admin-page-directory-links my-3">
                            <h1 class="directory-title primary-font color-white">Products Page</h1>
                            <p class="color-white">Manages and modifies the products of tech galaxy</p>
                        </div>
                    </button>
                    </a>
                </form>

                <form method="POST" action="<%=request.getContextPath()%>/users/read">
                    <input type="hidden" name="verifier" value="/users/view" />
                    <button>
                        <div class="container-fluid admin-page-directory-links my-3">
                            <h1 class="directory-title primary-font color-white">User Management Page</h1>
                            <p class="color-white">Manages and modifies the users of tech galaxy</p>
                        </div>
                    </button>
                </form>
            </div>
        </div>
        <%@include file="Custom Components/Footer.jsp" %>
    </body>
</html>