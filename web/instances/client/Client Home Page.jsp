<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
response.setHeader("Cache-Control","no-store");
response.setHeader("Pragma","no-cache");
response.setHeader ("Expires", "0"); //prevents caching at the proxy server
%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>Home | Tech Galaxy</title>
        <link rel="icon" type="image/x-icon" href="<%=request.getContextPath()%>/assets/images/tech-galaxy.png">
        <link href="<%=request.getContextPath()%>/assets/css/bootstrap.min.css" rel="stylesheet">
        <script src="<%=request.getContextPath()%>/assets/js/bootstrap.bundle.min.js"></script>
        <link href="<%=request.getContextPath()%>/assets/css/custom.css" rel="stylesheet">
        <script src="<%=request.getContextPath()%>/assets/js/jquery-3.6.4.min.js"></script>
    </head>
    <%@ include file="Custom Components/NavBar.jsp" %>
    <div class="container-fluid bg-color-dark p-4">
        <div id="carouselExampleIndicators" data-ride="carousel" class="carousel slide py-2">
            <div class="carousel-indicators">
                <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="0" class="active" aria-current="true" aria-label="Slide 1"></button>
                <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="1" aria-label="Slide 2"></button>
                <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="2" aria-label="Slide 3"></button>
            </div>
            <div class="carousel-inner rounded">
                <div class="carousel-item active">
                    <img src="<%=request.getContextPath()%>/assets/images/asus.webp" class="d-block w-100 img-responsive rounded img-height img-fluid" alt="Asus Ad">
                </div>
                <div class="carousel-item">
                    <img src="<%=request.getContextPath()%>/assets/images/lenovo.webp" class="d-block w-100 img-responsive rounded img-height img-fluid" alt="Leneovo Legion Ad">
                </div>
                <div class="carousel-item">
                    <img src="<%=request.getContextPath()%>/assets/images/nitro.webp" class="d-block w-100 img-responsive rounded img-height img-fluid" alt="Acer Nitro Ad">
                </div>
            </div>
            <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide="prev">
                <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                <span class="visually-hidden">Previous</span>
            </button>
            <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide="next">
                <span class="carousel-control-next-icon" aria-hidden="true"></span>
                <span class="visually-hidden">Next</span>
            </button>
        </div>

        <div class = "container-fluid row bg px-3 py-3">
            <div><h1 class = "primary-color-underline">Featured</h1>
                <div class="row row-cols-1 row-cols-md-4 g-4 py-3 container-fluid">
                    <div class="col">
                        <div class="card container-fluid">
                            <img src="https://images.acer.com/is/image/acer/Predator-Helios-300-PH-315-54-Backliton-Black-01a-1?$Visual-Filter-XL$" class="card-img-top" alt="...">
                            <div class="card-body">
                                <h5 class="card-title primary-font">Acer Predator Helios 300 PH315-52-54KC</h5>
                                <p class = "card-text secondary-font">₱61,749.00</p>
                                <ul class = "card-text secondary-font">
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
                            <img src="https://pcx.com.ph/wp-content/uploads/2022/04/PCX-Centaur-Prime-Xiii-RTX-4080-OC-768x768.jpg" class="card-img-top" alt="...">
                            <div class="card-body">
                                <h5 class="card-title primary-font">PCX GFH CENTAUR PRIME (XIII) GeForce RTX™ 4080 Intel Core i9 Gaming Desktop</h5>
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
                            <img src="https://villman.com/product_photos/ezgif-3-f732c96dba_ipprq.gif" class="card-img-top" class="card-img-top" alt="...">
                            <div class="card-body">
                                <h5 class="card-title primary-font">Legion 7i (16, Gen 7)</h5>
                                <p class = "card-text secondary-font">Starting at: PHP109,295.00</p>
                                <ul class = "card-text secondary-font">
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
                            <img src="https://pcx.com.ph/wp-content/uploads/2022/02/1.1-51-768x768.jpg" class="card-img-top" alt="...">
                            <div class="card-body">
                                <h5 class="card-title primary-font">ACER Nitro5 AN515-45-R2NV AMD Ryzen 7 (Shale Black)</h5>
                                <p class = "card-text secondary-font">₱66,999.00</p>
                                <ul class = "card-text secondary-font">
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

                </div>

            </div>
            <div><h1 class = "primary-color-underline">Top Products</h1>
                <div class = "py-2">
                    <div class="row row-cols-1 row-cols-md-4 g-4 py-3 container-fluid">

                        <div class="col">
                            <div class="card container-fluid">
                                <img src="https://pcx.com.ph/wp-content/uploads/2022/12/11.1-768x768.jpg" class="card-img-top" alt="...">
                                <div class="card-body">
                                    <h5 class="card-title primary-font">ASUS ROG STRIX G15 G513IC-HN073W GeForce RTX3050 AMD Ryzen 7 4800H (Eclipse Gray)</h5>
                                    <p class = "card-text secondary-font">PHP 64, 995</p>
                                    <ul class = "card-text secondary-font">
                                        <li>Windows 11 Home SL 64BIT</li>
                                        <li>AMD Ryzen 7 4800H</li>
                                        <li>NVIDIA GeForce RTX3050 4GB GDDR6</li>
                                        <li>15.6″ FHD 144Hz</li>
                                        <li>8GB DDR4</li>
                                        <li>512GB M.2 NVME PCIE SSD</li>
                                    </ul>
                                </div>
                            </div>
                        </div>

                        <div class="col">
                            <div class="card container-fluid">
                                <img src="https://villman.com/product_photos/ezgif-2-cdad504c0d_00tkb.gif" class="card-img-top" alt="...">
                                <div class="card-body">
                                    <h5 class="card-title primary-font">DELL INSPIRON 5625 (SILVER)</h5>
                                    <p class = "card-text secondary-font">PHP 59,990</p>
                                    <ul class = "card-text secondary-font">
                                        <li>AMD Ryzen 7 5825U 8-core/16-thread Processor</li>
                                        <li>8 GB, 1 x 8 GB, DDR4, 3200 MHz</li>
                                        <li>512 GB, M.2, PCIe NVMe, SSD</li>
                                        <li>16 inch, FHD+ 1920 x 1200, 60Hz, WVA, Touch, 300 nit, ComfortView Plus</li>
                                        <li>AMD Radeon Graphics</li>
                                        <li>MediaTek Wi-Fi 6 MT7921 2x2 and Bluetooth 5.2</li>
                                        <li>Windows 11 Home</li>
                                    </ul>
                                </div>
                            </div>
                        </div>

                        <div class="col">
                            <div class="card container-fluid">
                                <img src="https://cdn.shopify.com/s/files/1/2227/7667/products/SamsungOdysseyG5_1024x1024.jpg?v=1679456012" class="card-img-top" alt="...">
                                <div class="card-body">
                                    <h5 class="card-title primary-font">SAMSUNG ODYSSEY G5 LS27AG500PEXXP 27" IPS 165HZ 2560 X 1440P 2K FREESYNC MONITOR HDMI DP, VESA</h5>
                                    <p class = "card-text secondary-font">PHP 21,870.00</p>
                                    <ul class = "card-text secondary-font">
                                        <li>Screen Size (Class): 27</li>
                                        <li>Flat / Curved: Flat</li>
                                        <li>Active Display Size (HxV) (mm): 596.736 x 335.684mm</li>
                                        <li>Aspect Ratio: 16:9</li>
                                        <li>Panel Type: IPS</li>
                                        <li>Brightness (Typical): 350 cd/㎡</li>
                                        <li>Peak Brightness (Typical): -</li>
                                        <li>Brightness (Min): 280 cd/㎡</li>
                                    </ul>
                                </div>
                            </div>
                        </div>

                        <div class="col">
                            <div class="card container-fluid">
                                <img src="https://pcx.com.ph/wp-content/uploads/2023/01/1-1.jpg" class="card-img-top" alt="...">
                                <div class="card-body">
                                    <h5 class="card-title primary-font">Gigabyte GeForce RTX™ 4070Ti AORUS ELITE (GV-N407TAORUS-E-12GD) 12GB GDDR6X 192BIT Graphics Card</h5>
                                    <p class = "card-text secondary-font">PHP63,700</p>
                                    <ul class = "card-text secondary-font">
                                        <li>Powered by NVIDIA DLSS 3, ultra-efficient Ada Lovelace arch, and full ray tracing</li>
                                        <li>4th Generation Tensor Cores: Up to 4x performance with DLSS 3 vs. brute-force rendering</li>
                                        <li>3rd Generation RT Cores: Up to 2X ray tracing performance</li>
                                        <li>Powered by GeForce RTX™ 4070 Ti</li>
                                        <li>Integrated with 12GB GDDR6X 192bit memory interface</li>
                                        <li>WINDFORCE cooling system</li>
                                    </ul>
                                </div>
                            </div>
                        </div>

                    </div>
                </div>
                <div><h1 class = "primary-color-underline">New Arrivals</h1>
                    <div class="row row-cols-1 row-cols-md-4 g-4 py-3 container-fluid">

                        <div class="col">
                            <div class="card container-fluid">
                                <img src="https://cdn.shopify.com/s/files/1/0355/8296/7943/products/3_e45e64f8-c39e-42e1-9bc9-17545fd9af82_600x.jpg?v=1676774656" class="card-img-top" alt="...">
                                <div class="card-body">
                                    <h5 class="card-title primary-font">RAZER VIPER MINI WIRED GAMING MOUSE</h5>
                                    <p class = "card-text secondary-font">₱1,450</p>
                                    <ul class = "card-text secondary-font">
                                        <li>The #1 Best-Selling Gaming Peripherals Manufacturer in the US Source - The NPD Group U S Retail Tracking Service Keyboards Mice PC Headset/Pc Microphone Gaming Designed based on dollar sales Jan 2017- Dec 2019</li>
                                        <li>Lightest Zero-Compromise Miniature Mouse 10% Smaller Than the Viper and lighter at 61g with an 8500 DPI optical sensor befitting the most serious gamers without the need for drilling holes in the chassis like competitor mice</li>
                                        <li>Faster Than Traditional Mechanical Switches Razer optical mouse switches use light beam-based actuation registering button presses at the speed of light for absolute control</li>
                                    </ul>
                                </div>
                            </div>
                        </div>

                        <div class="col">
                            <div class="card container-fluid">
                                <img src="https://pcx.com.ph/wp-content/uploads/2023/04/1.1-3-768x768.jpg" class="card-img-top" alt="...">
                                <div class="card-body">
                                    <h5 class="card-title primary-font">ZYXEL NBG7510-EU0101F AX1800 WIFI6 Dual-Band Gigabit Wireless Router
                                    </h5>
                                    <p class = "card-text secondary-font">₱3,099</p>
                                    <ul class = "card-text secondary-font">
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
                                <img src="https://gameone.ph/media/catalog/product/cache/4219e9b59d00ffcd8142a0edd5bc497f/t/e/tenda-ac23-ac2100-dual-band-gigabit-wifi-router-1.jpg" class="card-img-top" alt="...">
                                <div class="card-body">
                                    <h5 class="card-title primary-font">Tenda AC23 AC2100 Dual Band Gigabit WiFi Router</h5>
                                    <p class = "card-text secondary-font">PHP 495</p>
                                    <ul class = "card-text secondary-font">
                                        <li>AC2100 for Advanced WiFi Speed</li>
                                        <li>4x4 MU-Mimo for 5GHz Band</li>
                                        <li>Built-in Signal Amplifier for Main Chip </li>
                                        <li>7*6dBi External Antennas for Better WiFi Signal </li>
                                        <li>Support Fiber Internet Up to 1000 Mbps</li>
                                        <li><li>Support Fiber Internet Up to 1000 Mbps</li>
                                        <li>Support IPv6 Protocol </li>
                                </div>
                            </div>
                        </div>

                        <div class="col">
                            <div class="card container-fluid">
                                <img src="https://asset.msi.com/resize/image/global/product/product_1672904428c1c83f8f03bb887124d3d5c0bb2eb2e8.png62405b38c58fe0f07fcef2367d8a9ba1/400.png" class="card-img-top" alt="...">
                                <div class="card-body">
                                    <h5 class="card-title primary-font">Titan GT77HX 13VI i9-13980HX RTX4090</h5>
                                    <p class = "card-text secondary-font">PHP 272,900</p>
                                    <ul class = "card-text secondary-font">
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
            </div>
        </div>
    </div>
    <%@ include file="Custom Components/Footer.jsp" %>
</html>
