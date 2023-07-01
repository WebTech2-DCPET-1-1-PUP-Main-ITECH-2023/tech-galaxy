<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Wishlist | Tech Galaxy</title>
        <link rel="icon" type="image/x-icon" href="<%=request.getContextPath()%>/assets/images/tech-galaxy.png">
        <link href="<%=request.getContextPath()%>/assets/css/bootstrap.min.css" rel="stylesheet">
        <script src="<%=request.getContextPath()%>/assets/js/bootstrap.bundle.min.js"></script>
        <link href="<%=request.getContextPath()%>/assets/css/custom.css" rel="stylesheet">
    </head>
    <body>
        <%@ include file="../Custom Components/NavBar.jsp" %>
        <div class = "container-fluid my-4">
            <h1 class = "primary-color-underline primary-font d-flex justify-content-center">My Wishlist</h1>

            <div class = "row wishlist-card p-4 mx-4 mt-4 color-white">
                <div class = "set-width wishlist-img d-flex flex-column justify-content-center col-4">
                    <img src="https://images.acer.com/is/image/acer/Predator-Helios-300-PH-315-54-Backliton-Black-01a-1?$Visual-Filter-XL$" class="wishlist-img" alt="...">
                </div>
                <div class="col wishlist-card-body d-flex flex-column justify-content-center">
                    <h5 class="">Acer Predator Helios 300 PH315-52-54KC</h5>
                    <p class = "">₱61,749.00</p>
                    <ul>
                        <li>Windows 10 Home</li>
                        <li>Intel Core i7-10875H</li>
                        <li>32GB LPDDR4</li>
                        <li>1TB SSD</li>
                        <li>15.6" FHD & NVIDIA® GeForce® RTX 2070</li>
                    </ul>
                </div>
            </div>

            <div class = "row wishlist-card p-4 mx-4 mt-4 color-white">
                <div class = "set-width col-4 wishlist-img-parent d-flex flex-column justify-content-center">
                    <img src="https://pcx.com.ph/wp-content/uploads/2023/01/1-1.jpg" class="wishlist-img" alt="...">
                </div>
                <div class="col wishlist-card-body d-flex flex-column justify-content-center">
                    <h5 class="">Gigabyte GeForce RTX™ 4070Ti AORUS ELITE (GV-N407TAORUS-E-12GD) 12GB GDDR6X 192BIT Graphics Card</h5>
                    <p class = "">₱63,700</p>
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

            <div class = "row wishlist-card p-4 mx-4 mt-4 color-white">
                <div class = "set-width col-4 wishlist-img d-flex flex-column justify-content-center">
                    <img src="https://cdn.shopify.com/s/files/1/0355/8296/7943/products/3_e45e64f8-c39e-42e1-9bc9-17545fd9af82_600x.jpg?v=1676774656" class="wishlist-img" alt="...">
                </div>
                <div class="col wishlist-card-body d-flex flex-column justify-content-center">
                    <h5 class="">RAZER VIPER MINI WIRED GAMING MOUSE</h5>
                    <p class = "">₱1,450</p>
                    <ul>
                        <li>The #1 Best-Selling Gaming Peripherals Manufacturer in the US Source - The NPD Group U S Retail Tracking Service Keyboards Mice PC Headset/Pc Microphone Gaming Designed based on dollar sales Jan 2017- Dec 2019</li>
                        <li>Lightest Zero-Compromise Miniature Mouse 10% Smaller Than the Viper and lighter at 61g with an 8500 DPI optical sensor befitting the most serious gamers without the need for drilling holes in the chassis like competitor mice</li>
                        <li>Faster Than Traditional Mechanical Switches Razer optical mouse switches use light beam-based actuation registering button presses at the speed of light for absolute control</li>
                    </ul>
                </div>
            </div>
        </div>
        <%@ include file="../Custom Components/Footer.jsp" %>
    </body>
</html>