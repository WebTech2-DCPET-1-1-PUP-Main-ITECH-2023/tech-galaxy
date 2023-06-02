<%-- 
    Document   : Category page
    Created on : 05 27, 23, 5:16:54 PM
    Author     : ACER
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>User Management | Tech Galaxy</title>
        <link rel="icon" type="image/x-icon" href="<%=request.getContextPath()%>/assets/images/tech-galaxy.png">
        <link href="<%=request.getContextPath()%>/assets/css/bootstrap.min.css" rel="stylesheet">
        <script src="<%=request.getContextPath()%>/assets/js/bootstrap.bundle.min.js"></script>
        <link href="<%=request.getContextPath()%>/assets/css/custom.css" rel="stylesheet">
    </head>
    <body>
<%@ include file="../../Custom Components/NavBar.jsp" %>
        <div class = "container-fluid my-4 mx-4">
            <h1 class = "primary-color-underline primary-font center">Products Page</h1>
            <form>
                <div class="row align-items-center my-2">
                    <div class="col col-lg-1">
                        <label for="productId" class="col-form-label color-white">Product ID:</label>
                    </div>
                    <div class="col col-lg-2">
                        <input type="password" id="productId" class="form-control product-inputs" aria-labelledby="passwordHelpInline">
                    </div>
                </div>

                <div class="row align-items-center my-2">
                    <div class="col col-lg-1">
                        <label for="inputPassword6" class="col-form-label color-white">Product Name:</label>
                    </div>
                    <div class="col col-lg-2">
                        <input type="password" id="inputPassword6" class="form-control product-inputs" aria-labelledby="passwordHelpInline">
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
                <div class="col">
                    Product ID
                </div>
                <div class="col">
                    Product Name
                </div>
                <div class="col">
                    Description
                </div>
                <div class="col">
                    Size
                </div>
                <div class="col">
                    Prize
                </div>
                <div class="col">
                    Quantity
                </div>
            </div>
            <div class="row table-border-bottom py-1">
                <div class="col">
                    -
                </div>
                <div class="col">
                    -
                </div>
                <div class="col">
                    -
                </div>
                <div class="col">
                    -
                </div>
                <div class="col">
                    -
                </div>
                <div class="col">
                    -
                </div>
            </div>
            <div class="row table-border-bottom py-1">
                <div class = "col">
                    Product Name: "<c:out value="${addProducts.productName}"/>" with a product ID of "<c:out value="${addProducts.productID}"/>" has been added to inventory.
                </div>
            </div>
            <button class="btn primary-font mt-3" id = "addProduct" data-bs-toggle="modal" data-bs-target="#addUsersModal">Add Users</button>
            <div class="modal fade" id="addUsersModal" tabindex="-1" aria-labelledby="addProductsModal" aria-hidden="true">
                <%@ include file="Add Users Modal.jsp" %>
            </div>
        </div>
                <%@ include file="../../Custom Components/Footer.jsp" %>
    </body>
</html>
