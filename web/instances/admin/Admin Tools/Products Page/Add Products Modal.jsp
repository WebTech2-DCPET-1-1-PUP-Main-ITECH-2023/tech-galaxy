<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>Add Products | Tech Galaxy</title>
        <link rel="icon" type="image/x-icon" href="<%=request.getContextPath()%>/assets/images/tech-galaxy.png">
        <link href="<%=request.getContextPath()%>/assets/css/bootstrap.min.css" rel="stylesheet">
        <script src="<%=request.getContextPath()%>/assets/js/bootstrap.bundle.min.js"></script>
        <link href="<%=request.getContextPath()%>/assets/css/custom.css" rel="stylesheet">
        <script src="<%=request.getContextPath()%>/assets/js/jquery-3.6.4.min.js"></script>
        <script type = "module" src="<%=request.getContextPath()%>/assets/js/Form Validations/Add Products Validation.js"></script>
    </head>
    <body>
        <div class="modal-dialog modal-dialog-centered">
            <div class="modal-content">
                <div class="modal-header">
                    <h1 class="color-white modal-title fs-5 primary-font">Products Form</h1>
                </div>
                <div class="modal-body">
                    <form method="POST" action="<%=request.getContextPath()%>/products">
                        <div class="row align-items-center my-2">
                            <div class="col">
                                <label for="productID" class="col-form-label color-white secondary-font">Product ID</label>
                            </div>
                            <div class="col-8">
                                <input required type="number" id="productID" name="productID" class="form-control product-inputs" placeholder="Required; Integer; must be greater than 0.00">
                            </div>
                        </div>
                        <div class="row">
                            <p class = "col"></p>
                            <p id = "productIDLabel" class = "col-8 form-label"></p>
                        </div>
                        
                        <div class="row align-items-center my-2">
                            <div class="col">
                                <label for="productName" class="col-form-label color-white secondary-font">Product Name</label>
                            </div>
                            <div class="col-8">
                                <input required type="text" id="productName" name="productName" class="form-control product-inputs" placeholder="Required; Integer; must be greater than 0.00">
                            </div>
                        </div>
                        <div class="row">
                            <p class = "col"></p>
                            <p id = "productNameLabel" class = "col-8 form-label"></p>
                        </div>
                        
                        <div class="row align-items-center my-2">
                            <div class="col">
                                <label for="description" class="col-form-label color-white secondary-font">Description</label>
                            </div>
                            <div class="col-8">
                                <input required type="text" id="description" name="description" class="form-control product-inputs" placeholder="Required; Letters only; must be at least 3 characters">
                            </div>
                        </div>
                        <div class="row">
                            <p class = "col"></p>
                            <p id = "descriptionLabel" class = "col-8 form-label"></p>
                        </div>
                        
                        <div class="row align-items-center my-2">
                            <div class="col">
                                <label for="size" class="col-form-label color-white secondary-font">Size</label>
                            </div>
                            <div class="col-8">
                                <input type="text" id="size" name="size" class="form-control product-inputs" placeholder="Alphanumeric; [e.g., 30 mL]">
                            </div>
                        </div>
                        <div class="row">
                            <p class = "col"></p>
                            <p id = "sizeLabel" class = "col-8 form-label"></p>
                        </div>

                        <div class="row align-items-center my-2">
                            <div class="col">
                                <label for="productPrice" class="col-form-label color-white secondary-font">Price</label>
                            </div>
                            <div class="col-8">
                                <input required type="text" id="productPrice" name="productPrice" class="form-control product-inputs" placeholder="Required;  Double (0.00); must be greater than 0.00">
                            </div>
                        </div>
                        <div class="row">
                            <p class = "col"></p>
                            <p id = "productPriceLabel" class = "col-8 form-label"></p>
                        </div>

                        <div class="row align-items-center my-2">
                            <div class="col">
                                <label for="quantity" class="col-form-label color-white secondary-font">Quantity</label>
                            </div>
                            <div class="col-8">
                                <input required type="number" id="quantity" name="quantity" class="form-control product-inputs" placeholder="Required; Integer; must be greater than 0.00">
                            </div>
                        </div>
                        <div class="row">
                            <p class = "col"></p>
                            <p id = "quantityLabel" class = "col-8 form-label"></p>
                        </div>

                        <div class="modal-footer">
                            <button id = "addProductsSave" class="btn primary-font">Save</button>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </body>
</html>
