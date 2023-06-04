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
        <title>Category-Placeholder | Tech Galaxy</title>
        <link rel="icon" type="image/x-icon" href="<%=request.getContextPath()%>/assets/images/tech-galaxy.png">
        <link href="<%=request.getContextPath()%>/assets/css/bootstrap.min.css" rel="stylesheet">
        <script src="<%=request.getContextPath()%>/assets/js/bootstrap.bundle.min.js"></script>
        <link href="<%=request.getContextPath()%>/assets/css/custom.css" rel="stylesheet">
    </head>
    <body>
        <%@ include file="../Custom Components/NavBar.jsp" %>
         <div class = "container-fluid row bg px-3 py-3">
            <div><h1 class = "primary-color-underline primary-font">Utilities</h1>
                <div class="row row-cols-1 row-cols-md-4 g-4 py-3 container-fluid">

                    <div class="col">
                        <div class="card container-fluid">
                            <img src="https://o.remove.bg/downloads/6ec6c3af-a6ca-4496-831a-b4175fd6f7f4/image-removebg-preview.png" class="card-img-top" alt="...">
                            <div class="card-body">
                                <h5 class="card-title">HDMI CABLE</h5>
                                <p class = "card-text">₱550.00</p>
                                <ul>
                                    <li>HDMI cables are used to connect your computer to a television or projector.</li>
                                    <li>They carry both audio and video signals and can be used for both video and gaming.</li>
                                    <li>The best HDMI cables will provide a reliable connection and be durable enough to withstand the wear and tear of daily use.</li>   
                                </ul></div>
                        </div>
                    </div>
                    <div class="col">
                                <div class="card container-fluid">
                                    <img src="https://o.remove.bg/downloads/32f57204-6f86-40b2-a83a-8b5d55337719/image-removebg-preview.png" class="card-img-top" alt="...">
                                    <div class="card-body">
                                        <h5 class="card-title">ZYXEL NBG7510-EU0101F AX1800 WIFI6 Dual-Band Gigabit Wireless Router
                                        </h5>
                                        <p class = "card-text">₱3,099</p>
                                        <ul>
                                            <li>IEEE 802.11 ax/n/b/g 2.4 GHz</li>
                                            <li>IEEE 802.11 ax/ac/n/a 5 GHz</li>
                                            <li>Simultaneous Dual-band WiFi:</li>
                                            <li>2.4GHz AX: 2x2 (Tx/Rx) 1024 QAM 20/40MHz, up to 574 Mbps*</li>
                                            <li>5GHz AX: 2x2 (Tx/Rx) 1024 QAM 20/40/80MHz, up to 1201 Mbps*</li>
                                            <li>MU-MIMO capable for simultaneous data streaming</li>
                                            <li>Beamforming for 2.4GHz & 5GHz bands</li>
                                            <li>Processor: Airoha EN7528HU dual core up to 900 MHz</li>
                                            <li>Compatible with 802.11a/b/g/n/ac WiFi standards</li>
                                        </ul></div>
                                </div>
                            </div>
                    <div class="col">
                        <div class="card container-fluid">
                            <img src="https://o.remove.bg/downloads/02c0c800-742e-4e93-b850-df65515a0d35/image-removebg-preview.png" class="card-img-top" alt="...">
                            <div class="card-body">
                                <h5 class="card-title">NETWORK CABLE</h5>
                                <p class = "card-text">₱250.00</p>
                                <ul>
                                    <li>Ethernet cables are used to provide an internet connection, and connect devices to a local network.</li>
                                    <li>They plug into Ethernet ports on a variety of devices. </li>
                                    <li>he most common use for an Ethernet cable is connecting a WiFi router or modem to the internet entry port or telephone line.</li>
                                </ul></div>
                        </div>
                    </div>
                    <div class="col">
                        <div class="card container-fluid">
                            <img src="https://o.remove.bg/downloads/9256c339-5ddd-4ea5-aa91-feef932ff3e1/image-removebg-preview.png" class="card-img-top" alt="...">
                            <div class="card-body">
                                <h5 class="card-title">AX3000 Mesh WiFi 6 Extender</h5>
                                <p class = "card-text">₱550.00</p>
                                <ul>
                                    <li>Dual Band WiFi 6 - Separates 5 GHz (2402 Mbps) and 2.4 GHz (574 Mbps) WiFi bands for faster speeds and greater capacity with the latest technology†</li>
                                    <li>EasyMesh-Compatible - Flexibly create a whole home mesh WiFi</li>
                                    <li>AP Mode - Create a new WiFi access point through the Gigabit Ethernet port to enhance your wired network with WiFi capability</li>
                                    <li>Gigabit Ethernet Port - Provides high-speed wired access, ideal for smart TVs, PCs, and game consoles</li>
                                    <li>App Control - Easy Setup and management with your network using the TP-Link Tether app</li>
                                    
                                </ul>
                                    </div>
                                </div>
                            </div>

                        
                        
                    </div>

                </div>
        <%@ include file="../Custom Components/Footer.jsp" %>
    </body>
</html>
