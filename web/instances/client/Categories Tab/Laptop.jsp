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
                <div><h1 class = "primary-color-underline primary-font">Laptops</h1>
                    <div class="row row-cols-1 row-cols-md-4 g-4 py-3 container-fluid">

                        <div class="col">
                            <div class="card container-fluid">
                                <img src="https://images.acer.com/is/image/acer/Predator-Helios-300-PH-315-54-Backliton-Black-01a-1?$Visual-Filter-XL$" class="card-img-top" alt="...">
                                <div class="card-body">
                                    <h5 class="card-title">Acer Predator Helios 300 PH315-52-54KC</h5>
                                    <p class = "card-text">₱61,749.00</p>
                                    <ul>
                                        <li>Windows 10 Home</li>
                                        <li>Intel Core i7-10875H</li>
                                        <li>32GB LPDDR4</li>
                                        <li>1TB SSD</li>
                                        <li>15.6" FHD & NVIDIA® GeForce® RTX 2070</li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                        
                          <div class="col">
                            <div class="card container-fluid">
                                <img src="https://i.pcmag.com/imagery/reviews/038PiIbnEo36ILsKLjlj6oW-2.fit_lim.size_1050x.jpg" class="card-img-top" alt="...">
                                <div class="card-body">
                                    <h5 class="card-title">Legion 7i (16, Gen 7)</h5>
                                    <p class = "card-text">₱109,295.00</p>
                                    <ul>
                                        <li>12th Generation Intel® Core™ i5-12500H Processor (E-cores up to 3.30 GHz, P-cores up to 4.50 GHz)</li>
                                        <li>Windows 11 Home 64 Single Language</li>
                                        <li>NVIDIA® GeForce RTX™ 3050 Ti 4GB GDDR6</li>
                                        <li>8 GB DDR5-4800MHz (Soldered)</li>
                                        <li>16" WUXGA (1920 x 1200), IPS, Anti-Glare, Non-Touch, 100% sRGB, 350 nits, 165Hz, Narrow Bezel</li>
                                        <li>512 GB SSD M.2 2280 PCIe Gen4 TLC</li>
                                    </ul>

                                </div>
                            </div>
                        </div>
                         <div class="col">
                            <div class="card container-fluid">
                                <img src="https://scontent.fmnl7-1.fna.fbcdn.net/v/t39.30808-6/251779400_2372132132929443_807508151673142500_n.jpg?_nc_cat=110&ccb=1-7&_nc_sid=0debeb&_nc_eui2=AeF0_EK4_zVXpQyIuXgJBiP5gwDq5qRNBEKDAOrmpE0EQjMn429T5c2NgkgqZe3tNGZTG0YHUJankOSDMWRsZDFH&_nc_ohc=oC7R46puHXoAX9Tvurb&_nc_ht=scontent.fmnl7-1.fna&oh=00_AfCGkPs3WqhRIYVi0cvJR7O9RrZbQHRR4Vzoam6GOpupfg&oe=64824DBE" class="card-img-top" alt="...">
                                <div class="card-body">
                                    <h5 class="card-title">ACER Nitro5 AN515-45-R2NV AMD Ryzen 7 (Shale Black)</h5>
                                    <p class = "card-text">₱66,999.00</p>
                                    <ul>
                                        <li>Windows 10 Home SL 64BIT</li>
                                        <li>AMD Ryzen 7 5800H</li>
                                        <li>16GB DDR4</li>
                                        <li>512GB PCIE NVME SSD</li>
                                        <li>NVIDIA GeForce RTX3060 6GB GDDR6</li>
                                        <li>15.6″ FHD IPS 144Hz</li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                         <div class="col">
                                <div class="card container-fluid">
                                    <img src="https://asset.msi.com/resize/image/global/product/product_1672904428c1c83f8f03bb887124d3d5c0bb2eb2e8.png62405b38c58fe0f07fcef2367d8a9ba1/400.png" class="card-img-top" alt="...">
                                    <div class="card-body">
                                        <h5 class="card-title">Titan GT77HX 13VI i9-13980HX RTX4090</h5>
                                        <p class = "card-text">₱272,900</p>
                                        <ul>
                                            <li>17.3" UHD (3840x2160), 144Hz, Mini LED, HDR 1000, 100% DCI-P3, IPS-Level panel</li>
                                            <li>RTX4090 Laptop GPU GDDR6 16GB</li>
                                            <li>Raptor Lake i9-13980HX</li>
                                            <li>Cherry Mechanical Per-Key RGB gaming keyboard by SteelSeries</li>
                                            <li>DDR5 64GB (32GBx2)</li>
                                            <li>4TB (2TBx2) NVMe PCIe Gen4x4 SSD</li>
                                            <li>Intel® Killer™ Wi-Fi 6E AX1690(i)</li>
                                            <li>Windows 11 Home</li>
                                        </ul>
                                    </div>
                                </div>
                            </div>

                        
                        
                    </div>

                </div>
          
                        
        <%@ include file="../Custom Components/Footer.jsp" %>
    </body>
</html>
