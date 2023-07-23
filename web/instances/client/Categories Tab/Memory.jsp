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
        <title>Memory | Tech Galaxy</title>
        <link rel="icon" type="image/x-icon" href="<%=request.getContextPath()%>/assets/images/tech-galaxy.png">
        <link href="<%=request.getContextPath()%>/assets/css/bootstrap.min.css" rel="stylesheet">
        <script src="<%=request.getContextPath()%>/assets/js/bootstrap.bundle.min.js"></script>
        <link href="<%=request.getContextPath()%>/assets/css/custom.css" rel="stylesheet">
    </head>
    <body>
        <%@ include file="../Custom Components/LoggedInNavBar.jsp" %>
        <div class = "container-fluid row bg px-3 py-3">
                <div><h1 class = "primary-color-underline primary-font">Memory</h1>
                    <div class="row row-cols-1 row-cols-md-4 g-4 py-3 container-fluid">

                        <div class="col">
                            <div class="card container-fluid">
                                <img src="https://www.teamgroupinc.com/en/upload/product_note_pic/a162141f2d8e33f03a2e1e47e78879f1.jpg" class="card-img-top" alt="...">
                                <div class="card-body">
                                    <h5 class="card-title primary-font">TEAM XTREEM ARGB 16GB DDR4-3600 C14</h5>
                                    <p class = "card-text secondary-font">₱10,100.00</p>
                                    <ul class = "card-text secondary-font">
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
                                <img src="https://www.gskill.com/_upload/htmlEdit/05-ripjawsv-42mm-module-height.jpg" class="card-img-top" alt="...">
                                <div class="card-body">
                                    <h5 class="card-title primary-font">G.Skill Ripjaws V 16GB DDR4-3600</h5>
                                    <p class = "card-text secondary-font">₱4,699.00</p>
                                    <ul class = "card-text secondary-font">
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
                                <img src="https://hexus.net/media/uploaded/2019/2/e3142000-bd4d-49b2-ba1b-d89fc55c961c.png" class="card-img-top" alt="...">
                                <div class="card-body">
                                    <h5 class="card-title primary-font">Corsair Dominator Platinum RGB 32GB DDR4-3200</h5>
                                    <p class = "card-text secondary-font">₱12,199.00</p>
                                    <ul class = "card-text secondary-font">
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
                                    <img src="https://cdn.mos.cms.futurecdn.net/grv4yhMocZSr8Rvm637HuP.jpg" class="card-img-top" alt="...">
                                    <div class="card-body">
                                        <h5 class="card-title primary-font"> G.Skill Trident Z Neo 32GB DDR4-3600</h5>
                                        <p class = "card-text secondary-font">₱20,399.00</p>
                                        <ul class = "card-text secondary-font">
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
          
                        
        <%@ include file="../Custom Components/LoggedInFooter.jsp" %>
    </body>
</html>
