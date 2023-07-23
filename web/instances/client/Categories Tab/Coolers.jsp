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
        <title>Coolers | Tech Galaxy</title>
        <link rel="icon" type="image/x-icon" href="<%=request.getContextPath()%>/assets/images/tech-galaxy.png">
        <link href="<%=request.getContextPath()%>/assets/css/bootstrap.min.css" rel="stylesheet">
        <script src="<%=request.getContextPath()%>/assets/js/bootstrap.bundle.min.js"></script>
        <link href="<%=request.getContextPath()%>/assets/css/custom.css" rel="stylesheet">
    </head>
    <body>
        <%@ include file="../Custom Components/LoggedInNavBar.jsp" %>
        <div class = "container-fluid row bg px-3 py-3">
            <div><h1 class = "primary-color-underline primary-font">Coolers</h1>
                <div class="row row-cols-1 row-cols-md-4 g-4 py-3 container-fluid">

                    <div class="col">
                        <div class="card container-fluid">
                            <img src="https://m.media-amazon.com/images/S/aplus-media-library-service-media/5f574714-39dc-45f9-9055-285d59e1f6fa.__CR0,0,600,450_PT0_SX600_V1___.jpg" class="card-img-top" alt="...">
                            <div class="card-body">
                                <h5 class="card-title primary-font">THERMALTAKE TH240 (CL-W286-PL12SW-A) 240MM ARGB AIO CPU Liquid Cooler (Black)</h5>
                                <p class = "card-text secondary-font">₱4,800.00</p>
                                <ul class = "card-text secondary-font">
                                    <li>P/N:	CL-W286-PL12SW-A</li>
                                    <li>Tube:	Length: 400 mm Material: Rubber</li>
                                    <li>Radiator:	Dimension: 273x 120 x 27 mm</li>
                                    <li>COMPATIBILITY:	Intel LGA 2066/2011-3/2011/1700/1200/1156/1155/1151/1150 AMD FM2/FM1/AM5/AM4/AM3+/AM3/AM2+/AM2</li>

                                </ul>
                            </div>
                        </div>
                    </div>

                    <div class="col">
                        <div class="card container-fluid">
                            <img src="https://www.silverstonetek.com/upload/images/products/pf240-argb/pf240-2.jpg" class="" alt="...">
                            <div class="card-body">
                                <h5 class="card-title primary-font">SILVERSTONE PERMAFROST 240 ARGB (PF240-ARGB / V2 ) All-In-One CPU Liquid Cooler</h5>
                                <p class = "card-text secondary-font">₱4,500.00</p>
                                <ul class = "card-text secondary-font">
                                    <li>Integrated addressable RGB lighting for water block and fan</li>
                                    <li>Rubber pads included on fan for lower vibration and noise</li>
                                    <li>Includes addressable RGB controller with 10 lighting modes and ability to adjust brightness and color changing speeds.</li>
                                    <li>Compatible with Intel LGA775/115X/1200/1366/2011/2066 and AMD AM2/AM3/AM4/AM5/FM1/FM2 sockets</li>
                                    <li>Compatible with Intel LGA115x/1200/1700/2011/2066 and AMD AM2/AM3/AM4/AM5/FM1/FM2 sockets (V2)</li>
                                </ul>

                            </div>
                        </div>
                    </div>
                    <div class="col">
                        <div class="card container-fluid">
                            <img src="https://i.ytimg.com/vi/7fjuwwUw_44/maxresdefault.jpg" class="card-img-top" alt="...">
                            <div class="card-body">
                                <h5 class="card-title primary-font">MSI MAG CORELIQUID C240 EVA E-PROJECT RGB 240MM All-In-One Liquid Cooling Fan</h5>
                                <p class = "card-text secondary-font">₱7,500.00</p>
                                <ul class = "card-text secondary-font">
                                    <li>EVAPORATION PROOF TUBING</li>
                                    <li>EXTENSIVE COMPATIBILITY(LGA 1150/1151/1155/1156/1200/1700)(AM4/FM2+/FM2/FM1/AM3+/AM3/AM2+/AM2)</li>
                                    <li>HIGH THERMAL DISSIPATION</li>
                                    <li>LGA 1700 COMPATIBLE</li>
                                    <li>PUMP MOTOR RESONANCE ELIMINATION</li>
                                    <li>RADIATOR PUMP DESIGN</li>
                                </ul>
                            </div>
                        </div>
                    </div>
                    <div class="col">
                        <div class="card container-fluid">
                            <img src="https://media.ldlc.com/bo/images/fiches/watercooling/antec/symphony%20240%20argb/symphony240argb_800_1.jpg" class="card-img-top" alt="...">
                            <div class="card-body">
                                <h5 class="card-title primary-font">ANTEC SYMPHONY 240 ARGB (2 X 120MM FANS) All-In-One CPU Liquid Cooler</h5>
                                <p class = "card-text secondary-font">₱4,500.00</p>
                                <ul class = "card-text secondary-font">
                                    <li>Chromatic ARGB Lighting Pump Head</li>
                                    <li>ARGB PWM Fan</li>
                                    <li>EDPM & IIP High Density Tube</li>
                                    <li>Water Pressure of 1.2m Height</li>
                                    <li>Socket Compatibility
                                        lntel: LGA2066 / 2011 / 1366 / 115X / 1200 / 1700
                                        AMD: FM1 / FM2 / AM4 / AM3 / AM2 / AM5
                                    </li>                                        
                                </ul>
                            </div>
                        </div>
                    </div>

                </div>

            </div>
            <%@ include file="../Custom Components/LoggedInFooter.jsp" %>
    </body>
</html>
