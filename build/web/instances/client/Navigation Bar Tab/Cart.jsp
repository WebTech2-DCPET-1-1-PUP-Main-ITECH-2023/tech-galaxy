<%-- 
    Document   : Cart
    Created on : 05 27, 23, 5:13:48 PM
    Author     : ACER
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Cart | Tech Galaxy</title>
        <link rel="icon" type="image/x-icon" href="<%=request.getContextPath()%>/assets/images/tech-galaxy.png">
        <link href="<%=request.getContextPath()%>/assets/css/bootstrap.min.css" rel="stylesheet">
        <script src="<%=request.getContextPath()%>/assets/js/bootstrap.bundle.min.js"></script>
        <link href="<%=request.getContextPath()%>/assets/css/custom.css" rel="stylesheet">
    </head>
    <body>
        <%@ include file="../Custom Components/NavBar.jsp" %>
        <div class = "container-fluid my-4">
            <h1 class = "primary-color-underline primary-font d-flex justify-content-center">My Cart</h1>
            <div class = "row wishlist-card p-4 mx-4 mt-4 color-white">
                <div class = "set-width wishlist-img d-flex flex-column justify-content-center col-4">
                    <img src="https://pcx.com.ph/wp-content/uploads/2022/04/PCX-Centaur-Prime-Xiii-RTX-4080-OC-768x768.jpg" class="wishlist-img" alt="...">
                </div>
                <div class="col wishlist-card-body d-flex flex-column justify-content-center">
                    <h5 class="">PCX GFH CENTAUR PRIME (XIII) GeForce RTX™ 4080 Intel Core i9 Gaming Desktop</h5>
                    <p class = "">₱229,000.00</p>
                    <ul>
                        <li>Intel® Core™ i9-13900K Processor (36M Cache, up to 5.80 GHz)</li>
                        <li>ASUS Prime Z790-P WIFI-CSM LGA1700 ATX Motherboard</li>
                        <li>ASUS TUF Gaming GeForce RTX™ 4080 OC Edition</li>
                        <li>ASUS TUF Gaming GT502 Mid Tower Case</li>
                    </ul>
                </div>
            </div>

            <div class = "row wishlist-card p-4 mx-4 mt-4 color-white">
                <div class = "set-width wishlist-img d-flex flex-column justify-content-center col-4">
                    <img src="https://pcx.com.ph/wp-content/uploads/2022/12/11.1-768x768.jpg" class="wishlist-img" alt="...">
                </div>
                <div class="col wishlist-card-body d-flex flex-column justify-content-center">
                    <h5 class="">ASUS ROG STRIX G15 G513IC-HN073W GeForce RTX3050 AMD Ryzen 7 4800H (Eclipse Gray)</h5>
                    <p class = "">PHP 64, 995</p>
                    <ul>
                        <li>Windows 11 Home SL 64BIT</li>
                        <li>AMD Ryzen 7 4800H</li>
                        <li>NVIDIA GeForce RTX3050 4GB GDDR6</li>
                        <li>15.6″ FHD 144Hz</li>
                        <li>8GB DDR4</li>
                        <li>512GB M.2 NVME PCIE SSD</li>
                    </ul>
                </div>
            </div>

            <div class = "row wishlist-card p-4 mx-4 mt-4 color-white">
                <div class = "set-width wishlist-img d-flex flex-column justify-content-center col-4">
                    <img src="https://pcx.com.ph/wp-content/uploads/2023/01/1-1.jpg" class="wishlist-img" alt="...">
                </div>
                <div class="col wishlist-card-body d-flex flex-column justify-content-center">
                    <h5 class="">Gigabyte GeForce RTX™ 4070Ti AORUS ELITE (GV-N407TAORUS-E-12GD) 12GB GDDR6X 192BIT Graphics Card</h5>
                    <p class = "">PHP63,700</p>
                    <ul>
                        <li>Powered by NVIDIA DLSS 3, ultra-efficient Ada Lovelace arch, and full ray tracing</li>
                        <li>4th Generation Tensor Cores: Up to 4x performance with DLSS 3 vs. brute-force rendering</li>
                        <li>3rd Generation RT Cores: Up to 2X ray tracing performance</li>
                        <li>Powered by GeForce RTX™ 4070 Ti</li>
                        <li>Integrated with 12GB GDDR6X 192bit memory interface</li>
                        <li>WINDFORCE cooling system</li>
                    </ul>
                </div>
            </div>
        </div>
        <%@ include file="../Custom Components/Footer.jsp" %>
    </body>
</html>
