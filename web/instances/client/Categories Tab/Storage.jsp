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
        <title>Storage | Tech Galaxy</title>
        <link rel="icon" type="image/x-icon" href="<%=request.getContextPath()%>/assets/images/tech-galaxy.png">
        <link href="<%=request.getContextPath()%>/assets/css/bootstrap.min.css" rel="stylesheet">
        <script src="<%=request.getContextPath()%>/assets/js/bootstrap.bundle.min.js"></script>
        <link href="<%=request.getContextPath()%>/assets/css/custom.css" rel="stylesheet">
    </head>
    <body>
        <%@ include file="../Custom Components/NavBar.jsp" %>
         <div class = "container-fluid row bg px-3 py-3">
                <div><h1 class = "primary-color-underline primary-font">Storage</h1>
                    <div class="row row-cols-1 row-cols-md-4 g-4 py-3 container-fluid">

                        <div class="col">
                            <div class="card container-fluid">
                                <img src="https://cdn.mos.cms.futurecdn.net/XznGAj929i82MWrAHPH4Eo.jpg" class="card-img-top" alt="...">
                                <div class="card-body">
                                    <h5 class="card-title primary-font">WD Black SN850X</h5>
                                    <p class = "card-text secondary-font">Starting at ₱11,199.00</p>
                                    <ul class = "card-text secondary-font">
                                        <li>Capacity: 500GB, 1TB, 2TB</li>
                                        <li>Controller: WD in-house (SanDisk)</li>
                                        <li>Memory: 112-layer TLC</li>
                                        <li>Interface: PCIe Gen4 x4</li>
                                        <li>Seq. read: 7,300MB/s</li>
                                        <li>Seq write: 6,300MB/s</li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                        
                          <div class="col">
                            <div class="card container-fluid">
                                <img src="https://cdn.mos.cms.futurecdn.net/qMuTBXAZy6dXpXgDbqBLRB-1200-80.jpg.webp" class="card-img-top" alt="...">
                                <div class="card-body">
                                    <h5 class="card-title primary-font">WD Black SN770</h5>
                                    <p class = "card-text secondary-font">Starting at ₱5,800.00</p>
                                    <ul class = "card-text secondary-font">
                                        <li>Capacity: 250GB, 500GB, 1TB, 2TB</li>
                                        <li>Controller: Sandisk PCIe 4.0</li>
                                        <li>Flash: Kioxia BiCS5 112-layer TLC</li>
                                        <li>Interface: M.2 PCIe 4.0 x4</li>
                                        <li>Seq. read: 5,150MB/s</li>
                                        <li>Seq. write: 4,900MB/s</li>
                                    </ul>

                                </div>
                            </div>
                        </div>
                         <div class="col">
                            <div class="card container-fluid">
                                <img src="https://cdn.mos.cms.futurecdn.net/jCeb2wuhFxzSAfhqsejg9G.jpg" class="card-img-top" alt="...">
                                <div class="card-body">
                                    <h5 class="card-title primary-font">SK Hynix Platinum P41</h5>
                                    <p class = "card-text secondary-font">Starting at ₱8,595.00</p>
                                    <ul class = "card-text secondary-font">
                                        <li>Capacity: 500GB, 1TB, 2TB</li>
                                        <li>Controller: SK Hynix Aries</li>
                                        <li>Flash: 176-layer TLC NAND</li>
                                        <li>Interface: M.2 PCIe 4.0 x4</li>
                                        <li>Seq. read: 7,000MB/s</li>
                                        <li>Seq. write: 6,500MB/s</li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                         <div class="col">
                                <div class="card container-fluid">
                                    <img src="https://cdn.mos.cms.futurecdn.net/YN5orz2HhJLLyBcpf3VpHL-1024-80.jpg.webp" class="card-img-top" alt="...">
                                    <div class="card-body">
                                        <h5 class="card-title primary-font">Silicon Power XS70 SSD</h5>
                                        <p class = "card-text secondary-font">Starting At ₱7,235.24</p>
                                        <ul class = "card-text secondary-font">
                                            <li>Capacity: 1TB, 2TB, 4TB</li>
                                            <li>Controller: Phison PS5018-E18</li>
                                            <li>Flash: Micron 176L TLC NAND</li>
                                            <li>Interface: M.2 PCIe 4.0 x4</li>
                                            <li>Seq. read: 7,300MB/s</li>
                                            <li>Seq. write: 6,800MB/s</li>                                        
                                        </ul>
                                    </div>
                                </div>
                            </div>

                        
                        
                    </div>

                </div>
        <%@ include file="../Custom Components/Footer.jsp" %>
    </body>
</html>
