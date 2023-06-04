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
                <div><h1 class = "primary-color-underline primary-font">CPU</h1>
                    <div class="row row-cols-1 row-cols-md-4 g-4 py-3 container-fluid">

                        <div class="col">
                            <div class="card container-fluid">
                                <img src="https://o.remove.bg/downloads/5d966b14-7d4b-4cd5-95f7-0d9462b0f49e/image-removebg-preview.png" class="card-img-top" alt="...">
                                <div class="card-body">
                                    <h5 class="card-title">Intel Core i5-13400</h5>
                                    <p class = "card-text">₱15,100.00</p>
                                    <ul>
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
                                <img src=https://o.remove.bg/downloads/b20323da-5fe4-4bc4-9994-390b798c72c5/image-removebg-preview.png class="" alt="...">
                                <div class="card-body">
                                    <h5 class="card-title">AMD Ryzen 5 7600</h5>
                                    <p class = "card-text">₱14,250.00</p>
                                    <ul>
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
                                <img src="https://o.remove.bg/downloads/e00d4668-2033-490c-afbf-c82f1178deff/image-removebg-preview.png" class="card-img-top" alt="...">
                                <div class="card-body">
                                    <h5 class="card-title">Intel Core i7-13700K</h5>
                                    <p class = "card-text">₱26,295.00</p>
                                    <ul>
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
                                        <h5 class="card-title"> AMD Ryzen 9 7950X3D</h5>
                                        <p class = "card-text">₱36,495.00</p>
                                        <ul>
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