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
        <title>GPU | Tech Galaxy</title>
        <link rel="icon" type="image/x-icon" href="<%=request.getContextPath()%>/assets/images/tech-galaxy.png">
        <link href="<%=request.getContextPath()%>/assets/css/bootstrap.min.css" rel="stylesheet">
        <script src="<%=request.getContextPath()%>/assets/js/bootstrap.bundle.min.js"></script>
        <link href="<%=request.getContextPath()%>/assets/css/custom.css" rel="stylesheet">
    </head>
    <body>
        <%@ include file="../Custom Components/NavBar.jsp" %>
        <div class = "container-fluid row bg px-3 py-3">
            <div><h1 class = "primary-color-underline primary-font">GPU</h1>
                <div class="row row-cols-1 row-cols-md-4 g-4 py-3 container-fluid">

                    <div class="col">
                        <div class="card container-fluid">
                            <img src="https://www.nvidia.com/content/dam/en-zz/Solutions/geforce/ada/rtx-4090/geforce-ada-4090-web-og-1200x630.jpg" class="" alt="...">
                            <div class="card-body">
                                <h5 class="card-title primary-font">Nvidia GeForce RTX 4090</h5>
                                <p class = "card-text secondary-font">₱121,999.00</p>
                                <ul class = "card-text secondary-font">
                                    <li>Shaders: 16,432</li>
                                    <li>Boost clock: 2,520MHz</li>
                                    <li>TFLOPs: 82.6</li>
                                    <li>Memory: 24GB GDDR6X</li>
                                    <li>Memory clock: 21GT/s</li>
                                    <li>Memory bandwidth: 1,008GB/s</li>
                                    <li>TGP: 450W</li>
                                </ul>
                            </div>
                        </div>
                    </div>

                    <div class="col">
                        <div class="card container-fluid">
                            <img src="https://www.amd.com/system/files/2022-10/1678052-radeon-7900-xtx-og-1200x628.jpg" class="" alt="...">
                            <div class="card-body">
                                <h5 class="card-title primary-font">AMD Radeon RX 7900 XTX</h5>
                                <p class = "card-text secondary-font">₱71,000.00</p>
                                <ul class = "card-text secondary-font">
                                    <li>Shaders: 6144</li>
                                    <li>Boost clock: 2,500MHz</li>
                                    <li>TFLOPs: 61.4</li>
                                    <li>Memory: 24GB GDDR6</li>
                                    <li>Memory clock: 20GT/s</li>
                                    <li>Memory bandwidth: 960GB/s</li>
                                    <li>TGP: 355W</li>
                                </ul>

                            </div>
                        </div>
                    </div>
                    <div class="col">
                        <div class="card container-fluid">
                            <img src="https://www.nvidia.com/content/dam/en-zz/Solutions/geforce/ada/rtx-4070-4070ti/geforce-ada-4070-family-og-1200x630.jpg" class="" alt="...">
                            <div class="card-body">
                                <h5 class="card-title primary-font">Nvidia GeForce RTX 4070</h5>
                                <p class = "card-text secondary-font">₱55,790.00</p>
                                <ul class = "card-text secondary-font">
                                    <li>Shaders: 5888</li>
                                    <li>Boost clock: 2,475MHz</li>
                                    <li>TFLOPs: 29.1</li>
                                    <li>Memory: 12GB GDDR6X</li>
                                    <li>Memory clock: 21Gbps</li>
                                    <li>Memory bandwidth: 504.2GB/s</li>
                                    <li>TGP: 200W</li>
                                </ul>
                            </div>
                        </div>
                    </div>
                    <div class="col">
                        <div class="card container-fluid">
                            <img src="https://www.nvidia.com/content/dam/en-zz/Solutions/geforce/ada/rtx-4060-4060ti/geforce-rtx-4060-ti-og-1200x630.jpg" class="" alt="...">
                            <div class="card-body">
                                <h5 class="card-title primary-font">Nvidia GeForce RTX 4060 Ti</h5>
                                <p class = "card-text secondary-font">₱27,530.00</p>
                                <ul class = "card-text secondary-font">
                                     <li>Shaders: 4352</li>
                                    <li>Boost clock: 2,540MHz</li>
                                    <li>TFLOPs: 22.1</li>
                                    <li>Memory: 8GB GDDR6X</li>
                                    <li>Memory clock: 48Gbps</li>
                                    <li>Memory bandwidth: 288GB/s</li>
                                    <li>TGP: 160W</li>
                                </ul>
                            </div>
                        </div>
                    </div>



                </div>

            </div>
            <%@ include file="../Custom Components/Footer.jsp" %>
    </body>
</html>
