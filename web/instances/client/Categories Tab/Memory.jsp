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
                <div><h1 class = "primary-color-underline primary-font">Memory</h1>
                    <div class="row row-cols-1 row-cols-md-4 g-4 py-3 container-fluid">

                        <div class="col">
                            <div class="card container-fluid">
                                <img src="https://o.remove.bg/downloads/014f3936-19c5-430d-895b-af82680b1812/image-removebg-preview.png" class="" alt="...">
                                <div class="card-body">
                                    <h5 class="card-title">TEAM XTREEM ARGB 16GB DDR4-3600 C14</h5>
                                    <p class = "card-text">₱10,100.00</p>
                                    <ul>
                                        <li>Speed: 3600MHz</li>
                                        <li>Timing: 14-15-15-35</li>
                                        <li>CAS latency: 14</li>
                                        <li>Voltage: 1.35V</li>
                                        <li>DIMMs: 2x 8GB</li>
                                      
                                    </ul>
                                </div>
                            </div>
                        </div>
                        
                          <div class="col">
                            <div class="card container-fluid">
                                <img src=https://o.remove.bg/downloads/96a01068-4d2d-4a21-842d-5f9dfcfd22d1/image-removebg-preview.png class="" alt="...">
                                <div class="card-body">
                                    <h5 class="card-title">G.Skill Ripjaws V 16GB DDR4-3600</h5>
                                    <p class = "card-text">₱4,699.00</p>
                                    <ul>
                                        <li>Speed: 3600MHz</li>
                                        <li>Timing: 18-22-22-42</li>
                                        <li>CAS Latency: 18</li>
                                        <li>Voltage: 1.35V</li>
                                        <li>DIMMs: 2x 8GB</li>
                                        
                                    </ul>

                                </div>
                            </div>
                        </div>
                         <div class="col">
                            <div class="card container-fluid">
                                <img src="https://o.remove.bg/downloads/562bc033-0a45-4b4d-a0c0-3cfcb83b8ec1/image-removebg-preview.png" class="" alt="...">
                                <div class="card-body">
                                    <h5 class="card-title">Corsair Dominator Platinum RGB 32GB DDR4-3200</h5>
                                    <p class = "card-text">₱12,199.00</p>
                                    <ul>
                                        <li>Speed: 3200MHz</li>
                                        <li>Timing: 16-18-18-36</li>
                                        <li>CAS Latency: 16</li>
                                        <li>Voltage: 1.35V</li>
                                        <li>DIMMs: 2x 16GB</li>
                                       
                                    </ul>
                                </div>
                            </div>
                        </div>
                         <div class="col">
                                <div class="card container-fluid">
                                    <img src="https://o.remove.bg/downloads/1e36c8d3-109a-4172-81d5-26ca6efc96c4/image-removebg-preview.png" class="" alt="...">
                                    <div class="card-body">
                                        <h5 class="card-title"> G.Skill Trident Z Neo 32GB DDR4-3600</h5>
                                        <p class = "card-text">₱20,399.00</p>
                                        <ul>
                                            <li>Speed: 3600MHz</li>
                                            <li>Timing: 18-22-22-42</li>
                                            <li>CAS Latency: 18</li>
                                            <li>Voltage: 1.35V</li>
                                            <li>TDIMMs: 2x 16GB</li>
                                                                           
                                        </ul>
                                    </div>
                                </div>
                            </div>

                        
                        
                    </div>

                </div>
          
                        
        <%@ include file="../Custom Components/Footer.jsp" %>
    </body>
</html>
