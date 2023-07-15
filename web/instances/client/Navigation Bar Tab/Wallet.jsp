<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Wallet | Tech Galaxy</title>
        <link rel="icon" type="image/x-icon" href="<%=request.getContextPath()%>/assets/images/tech-galaxy.png">
        <link href="<%=request.getContextPath()%>/assets/css/bootstrap.min.css" rel="stylesheet">
        <script src="<%=request.getContextPath()%>/assets/js/bootstrap.bundle.min.js"></script>
        <link href="<%=request.getContextPath()%>/assets/css/custom.css" rel="stylesheet">
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.3.0/font/bootstrap-icons.css">
    </head>
    <body>
        <%@ include file="../Custom Components/LoggedInNavBar.jsp" %>
        <div class = "container-fluid">
            <div class = "my-4">
                <h1 class = "primary-color-underline primary-font d-flex justify-content-center">My Wallet</h1>
                <div class = "wallet-top give-primary-bg p-4 mx-4 mt-4 color-white">
                    <h4>GalaxyPay</h4>
                    <h1>Php 250.00</h1>
                </div>
                <div class = "wallet-icon-row p-4 mx-4 mb-5">
                    <div class = "center">
                        <div class="row align-items-start g-3 d-flex justify-content-center">
                            <div class ="col">
                                <a class="row color-white icon-hover" href="#">
                                    <i class="bi bi-wallet2 my-1 wallet-icons"></i>
                                    <p class = "wallet-icon-text secondary-font my-1">Cash In</p>
                                </a>
                            </div>
                            <div class ="col">
                                <a class="row color-white icon-hover" href="#">
                                    <i class="bi bi-upc-scan my-1 wallet-icons"></i>
                                    <p class = "wallet-icon-text secondary-font my-1">Scan</p>
                                </a>
                            </div>
                            <div class ="col">
                                <a class="row color-white icon-hover" href="#">
                                    <i class="bi bi-box-arrow-in-up-right my-1 wallet-icons"></i>
                                    <p class = "wallet-icon-text secondary-font my-1">Send Money</p>
                                </a>
                            </div>
                        </div>
                        <div class="row align-items-start g-3 d-flex justify-content-center">
                            <div class ="col">
                                <a class="row color-white icon-hover" href="#">
                                    <i class="bi bi-cash-stack my-1 wallet-icons"></i>
                                    <p class = "wallet-icon-text secondary-font my-1">Pay</p>
                                </a>
                            </div>
                            <div class ="col">
                                <a class="row color-white icon-hover" href="#">
                                    <i class="bi bi-credit-card my-1 wallet-icons"></i>
                                    <p class = "wallet-icon-text secondary-font my-1">Bank Transfer</p>
                                </a>
                            </div>
                            <div class ="col">
                                <a class="row color-white icon-hover" href="#">
                                    <i class="bi bi-wallet2 my-1 wallet-icons"></i>
                                    <p class = "wallet-icon-text secondary-font my-1">Request</p>
                                </a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <%@ include file="../Custom Components/LoggedInFooter.jsp" %>
    </body>
</html>