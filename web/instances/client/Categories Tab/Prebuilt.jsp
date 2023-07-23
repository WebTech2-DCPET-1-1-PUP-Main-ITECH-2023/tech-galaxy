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
        <title>Prebuilt | Tech Galaxy</title>
        <link rel="icon" type="image/x-icon" href="<%=request.getContextPath()%>/assets/images/tech-galaxy.png">
        <link href="<%=request.getContextPath()%>/assets/css/bootstrap.min.css" rel="stylesheet">
        <script src="<%=request.getContextPath()%>/assets/js/bootstrap.bundle.min.js"></script>
        <link href="<%=request.getContextPath()%>/assets/css/custom.css" rel="stylesheet">
    </head>
    <body>
        <%@ include file="../Custom Components/LoggedInNavBar.jsp" %>
        <div class = "container-fluid row bg px-3 py-3">
            <div><h1 class = "primary-color-underline primary-font">Prebuilt</h1>
                <div class="row row-cols-1 row-cols-md-4 g-4 py-3 container-fluid">

                    <div class="col">
                        <div class="card container-fluid">
                            <img src="https://pcx.com.ph/wp-content/uploads/2022/04/PCX-Centaur-Prime-Xiii-RTX-4080-OC-768x768.jpg" class="card-img-top" alt="...">
                            <div class="card-body">
                                <h5 class="card-title primary-font">GFH CENTAUR PRIME (XIII) GeForce RTX™ 4080 Intel Core i9 Gaming Desktop</h5>
                                <p class = "card-text secondary-font">₱229,000.00</p>
                                <ul class = "card-text secondary-font">
                                    <li>Intel® Core™ i9-13900K Processor (36M Cache, up to 5.80 GHz)</li>
                                    <li>ASUS Prime Z790-P WIFI-CSM LGA1700 ATX Motherboard</li>
                                    <li>ASUS TUF Gaming GeForce RTX™ 4080 OC Edition</li>
                                    <li>ASUS TUF Gaming GT502 Mid Tower Case</li>
                                </ul></div>
                        </div>
                    </div>
                    <div class="col">
                        <div class="card container-fluid">
                            <img src="https://pcx.com.ph/wp-content/uploads/2022/10/PCX-GFH-DRAKE-FROST-K-NEW-600x600.png" class="card-img-top" alt="...">
                            <div class="card-body">
                                <h5 class="card-title primary-font">GFH DRAKE FROST (K) Radeon RX 6600 XT Gaming Desktop</h5>
                                <p class = "card-text secondary-font">₱131,995.00</p>
                                <ul class = "card-text secondary-font">
                                    <li>Intel Core i9-11900K processor with a clock speed of up to 5.30 GHz</li>
                                    <li>ASUS ROG STRIX Z590-A GAMING WIFI motherboard</li>
                                    <li>AMD Radeon RX 6600 XT graphics card with 8GB of GDDR6 memory</li>
                                    <li>32GB of Kingston DDR4 3600MHz Fury Beast RGB memory</li>
                                    <li>ANTEC NE 850 Gold M 850W 80+ Gold Full Modular PSU</li>
                                    <li>ROG Strix LC II 360 ARGB liquid cooler.</li>
                                    <li>ANTEC Torque White/Black mid tower chassis</li>
                                </ul></div>
                        </div>
                    </div>
                    <div class="col">
                        <div class="card container-fluid">
                            <img src="https://pcx.com.ph/wp-content/uploads/2022/09/PCX-GFH-CENTAUR-STRIX-i7-NEW-600x600.png" class="card-img-top" alt="...">
                            <div class="card-body">
                                <h5 class="card-title primary-font">GFH CENTAUR STRIX (i7) GeForce RTX™ 4070 Dual OC Gaming Desktop Package</h5>
                                <p class = "card-text secondary-font">₱135,995.00</p>
                                <ul class = "card-text secondary-font">
                                    <li>Intel® Core™ i7-12700F Processor</li>
                                    <li>ASUS Strix Z690-A Gaming WIFI</li>
                                    <li>ASUS GeForce RTX ™ 4070 Dual OC Gaming</li>
                                    <li>G.Skill Trident Z5 Neo RGB DDR5-6000 32GB,</li>
                                    <li>1TB XPG SX8200 Pro PCIe Gen3x4 M.2 2280 Solid State Drive,</li>
                                    <li>Antec NE850GM GOLD 850W 80+ Gold Full Modular PSU</li>
                                    <li>ASUS ROG Ryuo III 360 all-in-one liquid CPU cooler,</li>
                                    <li>ASUS TUF Gaming GT501 RGB PC Chassis with Tempered Glass. </li>
                                </ul></div>
                        </div>
                    </div>
                    <div class="col">
                        <div class="card container-fluid">
                            <img src="https://pcx.com.ph/wp-content/uploads/2022/10/PCX-GFH-CHIMERA-NX-OC-600x600.jpg" class="card-img-top" alt="...">
                            <div class="card-body">
                                <h5 class="card-title primary-font">GFH CHIMERA NX (OC) GeForce® GTX 1650 Gaming Desktop</h5>
                                <p class = "card-text secondary-font">₱33,995.00 – ₱46,995.00</p>
                                <ul class = "card-text secondary-font">
                                    <li>Intel® Core™ I3-13100F 13TH Gen processor</li>
                                    <li>ASUS Prime H610M-E D4 motherboard</li>
                                    <li>ASUS GeForce GTX 1650 TUF OC 4GB DDR6 128Bit graphics card</li>
                                    <li>16GB DDR4 3200MHZ Fury Beast RGB RAM</li>
                                    <li>Kingston 500GB NV2 PCIE NVME M.2 SSD</li>
                                    <li>ANTEC NX292 (Black) Tempered Glass RGB case</li>
                                </ul>
                            </div>
                        </div>
                    </div>



                </div>

            </div>
            <%@ include file="../Custom Components/LoggedInFooter.jsp" %>
    </body>
</html>
