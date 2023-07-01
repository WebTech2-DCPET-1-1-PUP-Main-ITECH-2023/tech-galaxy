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
        <title>Motherboard | Tech Galaxy</title>
        <link rel="icon" type="image/x-icon" href="<%=request.getContextPath()%>/assets/images/tech-galaxy.png">
        <link href="<%=request.getContextPath()%>/assets/css/bootstrap.min.css" rel="stylesheet">
        <script src="<%=request.getContextPath()%>/assets/js/bootstrap.bundle.min.js"></script>
        <link href="<%=request.getContextPath()%>/assets/css/custom.css" rel="stylesheet">
    </head>
    <body>
        <%@ include file="../Custom Components/NavBar.jsp" %>
         <div class = "container-fluid row bg px-3 py-3">
                <div><h1 class = "primary-color-underline primary-font">Motherboards</h1>
                    <div class="row row-cols-1 row-cols-md-4 g-4 py-3 container-fluid">

                        <div class="col">
                            <div class="card container-fluid">
                                <img src="https://storage-asset.msi.com/global/picture/image/feature/mb/Z790/mag_z790_tomahawk_wifi/kv-pd.png" class="card-img-top" alt="...">
                                <div class="card-body">
                                    <h5 class="card-title primary-font">MAG Z790 TOMAHAWK WIFI</h5>
                                    <p class = "card-text secondary-font">₱18,750.00</p>
                                    <ul class = "card-text secondary-font">
                                        <li>CPU support: Intel 12th and 13th Gen</li>
                                        <li>Memory support: 4x DIMM, Up to 128GB, DDR5-7200+(OC)</li>
                                        <li>Expansion slots: 1x PCIe 5.0 x16, 1x PCIe 4.0 x4, 1x PCIe 3.0 x1</li>
                                        <li>Video ports: 1x DisplayPort 1.4. 1x HDMI 2.1</li>
                                        <li>USB: Up to 1x USB 3.2 Gen2x2, 6x USB 3.2 Gen 2, 6x USB 3.1 Gen 1, 6x USB 2.0</li>
                                        <li>Storage: 4x M.2, 7x SATA</li>
                                        <li>Network: Intel 2.5G LAN, Intel Wi-Fi 6E</li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                        
                          <div class="col">
                            <div class="card container-fluid">
                                <img src="https://static.tweaktown.com/content/1/0/10109_16_asrock-z690-taichi-razer-edition-motherboard-review_full.jpg" class="card-img-top" alt="...">
                                <div class="card-body">
                                    <h5 class="card-title primary-font">ASRock Z690 Taichi</h5>
                                    <p class = "card-text secondary-font">₱38,750</p>
                                    <ul class = "card-text secondary-font">
                                        <li>CPU support: Intel 12th Gen</li>
                                        <li>Socket: LGA 1700</li>
                                        <li>Size: ATX</li>
                                        <li>Memory support: 4x DIMM, up to 128GB, DDR5-6400 (OC)</li>
                                        <li>Expansion slots: 2x PCIe 5.0 x16, 1x PCIe 4.0 x16, 1x PICe 3.0 x1</li>
                                        <li>Video ports: 1x HDMI 2.0, 2x Thunderbolt Type-C</li>
                                        <li>USB: 2x Thunderbolt 4 Type-C; Up to 1x USB 3.2 Gen2x2, 2x USB 3.2 Gen 2, 9x USB 3.1 Gen 1, 3x USB 2.0</li>
                                        <li>Storage: 3x M.2, 6x SATA 6Gbps</li>
                                        <li>Network: Killer Wi-Fi 6E; Killer E3100G 2.5G and Intel I219V 1G LAN</li>
                                    </ul>

                                </div>
                            </div>
                        </div>
                         <div class="col">
                            <div class="card container-fluid">
                                <img src="https://www.gigabyte.com/FileUpload/Global/KeyFeature/1982/innergigabyteimages/AESTHETICS.jpg" class="card-img-top" alt="...">
                                <div class="card-body">
                                    <h5 class="card-title primary-font">GIGABYTE Z690 AORUS PRO MOTHERBOARD</h5>
                                    <p class = "card-text secondary-font">₱18,367.24</p>
                                    <ul class = "card-text secondary-font">
                                        <li>CPU support: Intel 12th Gen</li>
                                        <li>Socket: LGA 1700</li>
                                        <li>Size: ATX</li>
                                        <li>Expansion slots: 1x PCIe 5.0 x16, 2x PCIe 4.0 x16 (running at x4)</li>
                                        <li>Video ports: 1x DisplayPort 1.4</li>
                                        <li>USB: Up to 2x USB 3.2 Gen2x2, 4x USB 3.2 Gen 2, 6x USB 3.1 Gen 1, 8x USB 2.0</li>
                                        <li>Storage: 4x M.2, 6x SATA 6Gbps</li>
                                        <li>Network: Intel Wi-Fi 6; Intel i225V 2.5G LAN</li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                         <div class="col">
                                <div class="card container-fluid">
                                    <img src="https://www.pcworld.com/wp-content/uploads/2023/04/Screenshot-2022-12-29-at-2.12.40-PM.png?w=1024" class="card-img-top" alt="...">
                                    <div class="card-body">
                                        <h5 class="card-title primary-font">Asus TUF Gaming B650 Plus WiFi</h5>
                                        <p class = "card-text secondary-font">₱15,969.99</p>
                                        <ul class = "card-text secondary-font">
                                            <li>CPU support: AMD Ryzen 7000</li>
                                            <li>Socket: AM5</li>
                                            <li>Size: ATX</li>
                                            <li>Memory support: DDR5-6400+(OC), Up to 128GB</li>
                                            <li>Expansion slots: 1x PCIe 5.0, 2x PCIe 4.0</li>
                                            <li>Storage: 3x M.2, 4x SATA</li>
                                            <li>Networking: Realtek 2.5G LAN, Wi-Fi 6</li>
                                            <li>Rear USB: 1x USB 3.2 Gen2x2, 3x USB 3.2 Gen 2, 3x USB 3.1 Gen 1, 8x USB 2.0</li>
                                        </ul>
                                    </div>
                                </div>
                            </div>

                        
                        
                    </div>

                </div>
          
        <%@ include file="../Custom Components/Footer.jsp" %>
    </body>
</html>
