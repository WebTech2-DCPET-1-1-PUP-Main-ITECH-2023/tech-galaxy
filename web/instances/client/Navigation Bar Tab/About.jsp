<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>About | Tech Galaxy</title>
        <link rel="icon" type="image/x-icon" href="<%=request.getContextPath()%>/assets/images/tech-galaxy.png">
        <link href="<%=request.getContextPath()%>/assets/css/bootstrap.min.css" rel="stylesheet">
        <script src="<%=request.getContextPath()%>/assets/js/bootstrap.bundle.min.js"></script>
        <link href="<%=request.getContextPath()%>/assets/css/custom.css" rel="stylesheet">
    </head>
    <body>
        
        <%@ include file="../Custom Components/NavBar.jsp" %>
        <div class = "container-fluid color-white">
            <div class = "mx-3 my-4">
                <h1 class = "primary-color-underline primary-font d-flex justify-content-center">About Tech Galaxy</h1>
                <p class="text-justify p-3">
                    Tech Galaxy is an e-commerce site that offers a wide range of computers and computer parts. Our carefully curated selection includes the latest products from top brands, and our user-friendly website makes browsing and purchasing easy. We provide competitive prices, fast shipping, and excellent customer service. Join our galaxy of tech enthusiasts and explore the world of computing with Tech Galaxy, your trusted source for all things tech.
                </p>
                <h1 class = "primary-color-underline primary-font">Mission</h1>
                <div class = "text-justify p-3 secondary-font">
                    <p>As an e-commerce site which provides tech and computer needs, Tech Galaxy aims to:</p>
                    <ul>
                        <li>Offer a wide range of computers and computer parts from top brands.</li>
                        <li>Provide a user-friendly website for easy browsing and purchasing.</li>
                        <li>Deliver competitive prices, fast shipping, and excellent customer service.</li>
                    </ul>
                </div>
                <div>
                    <h1 class = "primary-color-underline primary-font">Vission</h1>
                    <p class="text-justify p-3 secondary-font">
                        To be the trusted source for all things tech, Tech Galaxy aims to create a vibrant galaxy of tech enthusiasts where customers can explore the world of computing through our carefully curated selection of the latest products. Our user-friendly website ensures a seamless experience, while our commitment to competitive prices, fast shipping, and excellent customer service sets us apart as the go-to destination for all tech enthusiasts. Join us on this journey and embark on a limitless exploration of technology with Tech Galaxy.                </p>
                </div>
                <h1 class = "primary-color-underline primary-font">Meet The Team</h1>
                <div>

                    <div class = "row wishlist-card p-4 mx-4 mt-4 color-white rounded">
                        <div class = "set-width d-flex flex-column justify-content-center col-4">
                            <img src="<%=request.getContextPath()%>/assets/images/Team/gladwin.jpg" class="team-img rounded" alt="...">
                        </div>
                        <div class="col wishlist-card-body d-flex flex-column justify-content-center">
                            <h1 class="primary-font">Gladwin Ferdz Del Rosario</h5>
                                <p class = "secondary-font">Lead Developer and Backend Engineer</p>
                                <p class = "secondary-font">Gladwin takes charge of leading the development team in creating a seamless and efficient platform. His strong backend engineering skills ensure the smooth functioning and optimal performance of the website's backend architecture. Gladwin's leadership abilities and technical proficiency make him instrumental in shaping the technological backbone of Tech Galaxy.</p>
                        </div>
                    </div>  
                </div>

                <div>
                    <div class = "row wishlist-card p-4 mx-4 mt-4 color-white rounded">
                        <div class = "set-width d-flex flex-column justify-content-center col-4">
                            <img src="<%=request.getContextPath()%>/assets/images/Team/roland.jpg" class="team-img rounded" alt="...">
                        </div>
                        <div class="col wishlist-card-body d-flex flex-column justify-content-center">
                            <h1 class="primary-font">Roland Mioten</h5>
                                <p class = "secondary-font">Assistant Lead Developer and Backend Engineer</p>
                                <p class = "secondary-font">Roland supports the lead developer in driving development initiatives. His expertise in backend technologies enables him to design and implement robust and scalable solutions for the website. Roland's attention to detail and ability to collaborate effectively contribute to the seamless functioning of Tech Galaxy's backend infrastructure.</p>
                        </div>
                    </div>  
                </div>

                <div>
                    <div class = "row wishlist-card p-4 mx-4 mt-4 color-white rounded">
                        <div class = "set-width d-flex flex-column justify-content-center col-4">
                            <img src="<%=request.getContextPath()%>/assets/images/Team/baron.jpg" class="team-img rounded" alt="...">
                        </div>
                        <div class="col wishlist-card-body d-flex flex-column justify-content-center">
                            <h1 class="primary-font">Baron Bueno</h5>
                                <p class = "secondary-font">Associate Developer and Frontend Engineer</p>
                                <p class = "secondary-font">Specializing in frontend development, Baron leverages his creativity and technical proficiency to create captivating user interfaces. By collaborating closely with the team, he ensures that the website's frontend components are visually appealing and user-friendly. Baron's dedication to delivering an exceptional user experience aligns perfectly with Tech Galaxy's commitment to customer satisfaction.</p>
                        </div>
                    </div>  
                </div>

                <div>
                    <div class = "row wishlist-card p-4 mx-4 mt-4 color-white rounded">
                        <div class = "set-width d-flex flex-column justify-content-center col-4">
                            <img src="<%=request.getContextPath()%>/assets/images/Team/nicole.jpg" class="team-img rounded" alt="...">
                        </div>
                        <div class="col wishlist-card-body d-flex flex-column justify-content-center">
                            <h1 class="primary-font">Nicole Banzuela</h5>
                                <p class = "secondary-font">Associate Developer and Frontend Engineer</p>
                                <p class = "secondary-font">Nicole uses her expertise in frontend technologies to design and develop engaging user interfaces. Her attention to detail and dedication to creating seamless user experiences enhance Tech Galaxy's overall user satisfaction. Nicole's technical skills and collaborative nature make her an invaluable member of the development team at Tech Galaxy.</p>
                        </div>
                    </div>  
                </div>
            </div>
        </div>
        <%@ include file="../Custom Components/Footer.jsp" %>
    </body>
</html>
