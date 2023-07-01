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
        <%@ include file="../Custom Components/NavBar.jsp" %>
      <div class = "container-fluid row bg px-3 py-3">
                <div><h1 class = "primary-color-underline primary-font">CPU</h1>
                    <div class="row row-cols-1 row-cols-md-4 g-4 py-3 container-fluid">

                        <div class="col">
                            <div class="card container-fluid">
                                <img src="https://villman.com/product_photos/ezgif-4-7659920198_980y8_87d3i.gif" class="card-img-top" alt="...">
                                <div class="card-body">
                                    <h5 class="card-title primary-font">Intel Core i5-13400</h5>
                                    <p class = "card-text secondary-font">₱15,100.00</p>
                                    <ul class = "card-text secondary-font">
                                        <li>Architecture: Raptor Lake</li>
                                        <li>Socket: LGA 1700</li>
                                        <li>Cores/Threads: 10 (6P + 4E) / 16</li>
                                        <li>Base Frequency: 2.5</li>
                                        <li>Top Boost Frequency: 4.6</li>
                                        <li>TDP: 65W/148W</li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                        
                          <div class="col">
                            <div class="card container-fluid">
                                <img src="https://d2j6dbq0eux0bg.cloudfront.net/images/81001528/3471314644.jpg" class="card-img-top" alt="...">
                                <div class="card-body">
                                    <h5 class="card-title primary-font">AMD Ryzen 5 7600</h5>
                                    <p class = "card-text secondary-font">₱14,250.00</p>
                                    <ul class = "card-text secondary-font">
                                        <li>Architecture: Zen 4</li>
                                        <li>Socket: AM5</li>
                                        <li>Cores/Threads: 6/12</li>
                                        <li>Base Frequency: 3.8</li>
                                        <li>Top Boost Frequency: 5.1</li>
                                        <li>TDP: 65W/88W</li>
                                    </ul>

                                </div>
                            </div>
                        </div>
                         <div class="col">
                            <div class="card container-fluid">
                                <img src="https://villman.com/product_photos/ezgif-4-0b93ec0e73_jq0k5.gif" class="card-img-top" alt="...">
                                <div class="card-body">
                                    <h5 class="card-title primary-font">Intel Core i7-13700K</h5>
                                    <p class = "card-text secondary-font">₱26,295.00</p>
                                    <ul class = "card-text secondary-font">
                                        <li>Architecture: Alder Lake</li>
                                        <li>Socket: LGA 1700</li>
                                        <li>Cores/Threads: 12 (8P+8E) / 24</li>
                                        <li>Base Frequency: 3.4 GHz</li>
                                        <li>Top Boost Frequency: 5.4 GHz</li>
                                        <li>TPD: 125W</li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                         <div class="col">
                                <div class="card container-fluid">
                                    <img src="https://www.amd.com/system/files/styles/992px/private/2023-01/1769031-star-wars-jedi-survivor-ryzen-7000-lockup-1260x709_2.jpg?itok=GzUUuo31" class="card-img-top" alt="...">
                                    <div class="card-body">
                                        <h5 class="card-title primary-font"> AMD Ryzen 9 7950X3D</h5>
                                        <p class = "card-text secondary-font">₱36,495.00</p>
                                        <ul class = "card-text secondary-font">
                                            <li>Architecture: Zen 4</li>
                                            <li>Socket: AM5</li>
                                            <li>Cores/Threads: 16/32</li>
                                            <li>Base Frequency: 4.2 GHz</li>
                                            <li>Top Boost Frequency: 5.7 GHz</li>
                                            <li>TDP: 120W</li>                                        
                                        </ul>
                                    </div>
                                </div>
                            </div>

                        
                        
                    </div>

                </div>
          
                        
        <%@ include file="../Custom Components/Footer.jsp" %>
    </body>
</html>