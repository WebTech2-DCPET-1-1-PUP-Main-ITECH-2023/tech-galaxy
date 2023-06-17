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
        <title>Peripherals | Tech Galaxy</title>
        <link rel="icon" type="image/x-icon" href="<%=request.getContextPath()%>/assets/images/tech-galaxy.png">
        <link href="<%=request.getContextPath()%>/assets/css/bootstrap.min.css" rel="stylesheet">
        <script src="<%=request.getContextPath()%>/assets/js/bootstrap.bundle.min.js"></script>
        <link href="<%=request.getContextPath()%>/assets/css/custom.css" rel="stylesheet">
    </head>
    <body>
        <%@ include file="../Custom Components/NavBar.jsp" %>
         <div class = "container-fluid row bg px-3 py-3">
            <div><h1 class = "primary-color-underline primary-font">Peripherals</h1>
                <div class="row row-cols-1 row-cols-md-4 g-4 py-3 container-fluid">

                    <div class="col">
                        <div class="card container-fluid">
                            <img src="https://cdn.shopify.com/s/files/1/0442/2749/4055/products/Razer-Deathadder-Ergonomic-Wired-Gaming-Mouse-V2-NEW-3_1024x1024.png?v=1604022139" class="card-img-top" alt="...">
                            <div class="card-body">
                                <h5 class="card-title primary-font">Razer DeathAdder V2</h5>
                                <p class = "card-text secondary-font">₱2,295.00</p>
                                <ul class = "card-text secondary-font">
                                    <li>DPI: 20,000</li>
                                    <li>Sensor: Optical</li>
                                    <li>Interface: USB</li>
                                    <li>Buttons: 6</li>
                                    <li>Ergonomic: Right-handed</li>
                                    <li>Battery life: N/A</li>
                                   
                                </ul>
                            </div>
                        </div>
                    </div>

                    <div class="col">
                        <div class="card container-fluid">
                            <img src="https://www.techspot.com/articles-info/2399/images/2022-02-25-image-7.jpg" class="card-img-top" alt="...">
                            <div class="card-body">
                                <h5 class="card-title primary-font">Wooting Two HE</h5>
                                <p class = "card-text secondary-font">₱4,982.00</p>
                                <ul class = "card-text secondary-font">
                                    <li>Switch: Lekker (Gateron)</li>
                                    <li>Size: Full size</li>
                                    <li>Backlight: RGB LED</li>
                                    <li>Passthrough: None</li>
                                    <li>Media Controls: Function shortcuts</li>
                                    <li>Wristrest: Sold separately</li>
                                    <li>Keycaps: PBT</li>
                                </ul>

                            </div>
                        </div>
                    </div>
                    <div class="col">
                        <div class="card container-fluid">
                            <img src="https://www.techspot.com/articles-info/2591/images/2022-12-27-image-7.jpg"class="card-img-top" alt="...">
                                 <div class="card-body">
                                <h5 class="card-title primary-font"> Alienware 34 QD-OLED (AW3423DWF)</h5>
                                <p class = "card-text secondary-font">₱121,234.00</p>
                                <ul class = "card-text secondary-font">
                                    <li>Screen size: 34-inch</li>
                                    <li>Panel type: IPS</li>
                                    <li>Aspect ratio: 21:9</li>
                                    <li>Resolution: 3440 x 1440</li>
                                    <li>Response time: 0.1 ms</li>
                                    <li>Refresh rate: 165Hz</li>
                                    <li>Weight: 15.26 lbs (6.92 kg)</li>
                                    <li>Refresh rate technology: AMD FreeSync Premium Pro</li>
                                </ul>
                            </div>
                        </div>
                    </div>
                    <div class="col">
                        <div class="card container-fluid">
                            <img src="https://static.gigabyte.com/StaticFile/Image/Global/09bb09115b0dcd771f5b07f461f7cebf/Product/31844/webp/1000"class="card-img-top" alt="...">
                            <div class="card-body">
                                <h5 class="card-title primary-font">Gigabyte M32UC</h5>
                                <p class = "card-text secondary-font">₱41,895.00</p>
                                <ul class = "card-text secondary-font">
                                    <li>Screen size: 32-inch</li>
                                    <li>Panel type: VA</li>
                                    <li>Aspect ratio: 16:9</li>
                                    <li>Resolution: 3840 x 2160</li>
                                    <li>Response time: 1ms MPRT</li>
                                    <li>Refresh rate: 144Hz (160Hz overclocked)</li>
                                    <li>Weight: 17.9lbs</li>
                                    <li>Refresh rate technology: AMD FreeSync Premium</li>
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        <%@ include file="../Custom Components/Footer.jsp" %>
    </body>
</html>
