<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>User Management Page | Tech Galaxy</title>
        <link rel="icon" type="image/x-icon" href="<%=request.getContextPath()%>/assets/images/tech-galaxy.png">
        <link href="<%=request.getContextPath()%>/assets/css/bootstrap.min.css" rel="stylesheet">
        <script src="<%=request.getContextPath()%>/assets/js/bootstrap.bundle.min.js"></script>
        <link href="<%=request.getContextPath()%>/assets/css/custom.css" rel="stylesheet">
        <script src="<%=request.getContextPath()%>/assets/js/jquery-3.6.4.min.js"></script>
        <script src="<%=request.getContextPath()%>/assets/js/Form Validations/Toggle Password.js"></script>
        <script type="module" src="<%=request.getContextPath()%>/assets/js/Form Validations/Add Products Validation.js"></script>
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.3.0/font/bootstrap-icons.css">
    </head>
    <body>
        <%@ include file="../../Custom Components/NavBar.jsp" %>
        <div class="d-flex justify-content-center">
            <div class = "container-sm m-4">
                <div class = "border-update py-4">
                    <form method="POST" action="<%=request.getContextPath()%>/products/update">
                        <h1 class="color-white modal-title fs-5 primary-font center mb-4">Update Users Form</h1>
                        <div class="row align-items-center my-2 d-flex justify-content-center">
                            <div class="col-1">
                                <label for="productID" class="col-form-label color-white secondary-font">Product ID</label>
                            </div>
                            <div class="col-5">
                                <input required type="text" id="productID" name="productID" class="form-control product-inputs" placeholder="Required; Integer; must be greater than 0.00" value="<c:out value='${productsList.productID}'/>" readonly>
                            </div>
                        </div>
                        <div class="row align-items-center d-flex justify-content-center">
                            <p class = "col-1"></p>
                            <p id = "productIDLabel" class = "col-5 form-label"></p>
                        </div>


                        <div class="row align-items-center my-2 d-flex justify-content-center">
                            <div class="col-1">
                                <label for="productName" class="col-form-label color-white secondary-font">Product Name</label>
                            </div>
                            <div class="col-5">
                                <input required type="text" id="productName" name="productName" class="form-control product-inputs" placeholder="Required; Integer; must be greater than 0.00" value="<c:out value='${productsList.productName}'/>">
                            </div>
                        </div>
                        <div class="row align-items-center d-flex justify-content-center">
                            <p class = "col-1"></p>
                            <p id = "productNameLabel" class = "col-5 form-label"></p>
                        </div>

                        <div class="row align-items-center my-2 d-flex justify-content-center">
                            <div class="col-1">
                                <label for="description" class="col-form-label color-white secondary-font">Description</label>
                            </div>
                            <div class="col-5">
                                <input type="text" id="description" name="description" class="form-control product-inputs" placeholder="Required; Letters only; must be at least 3 characters" value="<c:out value='${productsList.description}'/>">
                            </div>
                        </div>
                        <div class="row align-items-center d-flex justify-content-center">
                            <p class = "col-1"></p>
                            <p id = "descriptionLabel" class = "col-5 form-label"></p>
                        </div>

                        <div class="row align-items-center my-2 d-flex justify-content-center">
                            <div class="col-1">
                                <label for="size" class="col-form-label color-white secondary-font">Size</label>
                            </div>
                            <div class="col-5">
                                <input required type="text" id="size" name="size" class="form-control product-inputs" placeholder="Alphanumeric; [e.g., 30 mL]" value="<c:out value='${productsList.size}'/>">
                            </div>
                        </div>
                        <div class="row align-items-center d-flex justify-content-center">
                            <p class = "col-1"></p>
                            <p id = "sizeLabel" class = "col-5 form-label"></p>
                        </div>
                        <div class="row align-items-center my-2 d-flex justify-content-center">
                            <div class="col-1">
                                <label for="productPrice" class="col-form-label color-white secondary-font">Price</label>
                            </div>
                            <div class="col-5">
                                <input required type="text" id="productPrice" name="productPrice" class="form-control product-inputs" placeholder="Required;  Double (0.00); must be greater than 0.00" value="<c:out value='${productsList.productPrice}'/>">
                            </div>
                        </div>
                        <div class="row align-items-center d-flex justify-content-center">
                            <p class = "col-1"></p>
                            <p id = "productPriceLabel" class = "col-5 form-label"></p>
                        </div>
                        <div class="row align-items-center my-2 d-flex justify-content-center">
                            <div class="col-1">
                                <label for="birthDay" class="col-form-label color-white secondary-font">Quantity</label>
                            </div>
                            <div class="col-5">
                                <input required type="number" id="quantity" name="quantity" class="form-control product-inputs" placeholder="Required; Integer; must be greater than 0.00" value="<c:out value='${productsList.quantity}'/>">
                            </div>
                        </div>
                        <div class="row align-items-center d-flex justify-content-center">
                            <p class = "col-1"></p>
                            <p id = "quantityLabel" class = "col-5 form-label"></p>
                        </div>

                        <div class = "d-flex justify-content-center">
                            <button id = "addProductsSave" class="btn primary-font">Save</button>
                        </div>
                    </form>
                </div>
            </div>

        </div>

        <%@ include file="../../Custom Components/Footer.jsp" %>
    </body>
</html>
