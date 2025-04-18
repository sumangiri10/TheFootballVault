<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
  <title>The Football Vault - About Us</title>
  <link rel="stylesheet" href="${pageContext.request.contextPath}/CSS/header.css" />
  <link rel="stylesheet" href="${pageContext.request.contextPath}/CSS/footer.css" />
  <link rel="stylesheet" href="${pageContext.request.contextPath}/CSS/about-us.css" />
</head>
<body>
  <jsp:include page="header.jsp">
    <jsp:param name="activePage" value="about" />
  </jsp:include>

  <main>
    <!-- Header Section -->
    <header class="about-header">
        <h1>ABOUT US</h1>
        <div class="breadcrumb">
            <a href="${pageContext.request.contextPath}/Pages/home.jsp">Home</a> > About Us
        </div>
    </header>
    
    <!-- Main Content -->
    <div class="container">
        <!-- Our Story Section -->
        <section class="about-section story-section">
            <div class="section-content">
                <h2>Our Story</h2>
                <p>The Football Vault was born out of pure passion for the beautiful game. We started as a group of five football enthusiasts who supported different teams across various leagues. What united us was our love for the sport and the pride we felt wearing our team's colors.</p>
                <p>In 2018, we noticed a gap in the Nepalese market for authentic, high-quality football jerseys. Finding genuine jerseys locally was challenging, and international shipping was expensive. We decided to combine our passion with purpose and create a one-stop destination for football fans in Nepal.</p>
                <p>What began as a small operation run from Suman's garage has now grown into Nepal's premier football jersey retailer, serving thousands of passionate fans across the country.</p>
            </div>
            <div class="section-image">
                <img src="${pageContext.request.contextPath}/Images/our-story.jpg" alt="The Football Vault founders" class="about-img">
            </div>
        </section>
        
        <!-- Our Mission Section -->
        <section class="about-section mission-section">
            <div class="section-image">
                <img src="${pageContext.request.contextPath}/Images/jersey.png" alt="Football jerseys display" class="about-img">
            </div>
            <div class="section-content">
                <h2>Our Mission</h2>
                <p>At The Football Vault, our mission is to connect Nepalese football fans with the teams they love through authentic, high-quality jerseys and merchandise. We believe that wearing your team's colors is more than just fashion - it's an expression of identity and belonging to a global community of fans.</p>
                <p>We strive to make authentic football merchandise accessible to everyone in Nepal, regardless of which team or league they support. From the Premier League to La Liga, Serie A to international teams, we're committed to offering the widest selection of genuine products at fair prices.</p>
            </div>
        </section>
        
        <!-- Why Choose Us Section -->
        <section class="about-section choose-section">
            <div class="section-content">
                <h2>Why Choose Us</h2>
                <ul class="features-list">
                    <li>
                        <h3>100% Authentic Products</h3>
                        <p>We source directly from official suppliers to ensure every jersey is genuine.</p>
                    </li>
                    <li>
                        <h3>Nationwide Delivery</h3>
                        <p>We deliver to all 77 districts across Nepal with free shipping on orders over Rs.2000.</p>
                    </li>
                    <li>
                        <h3>Personalization</h3>
                        <p>Add your favorite player's name or your own to make your jersey unique.</p>
                    </li>
                    <li>
                        <h3>Exceptional Customer Service</h3>
                        <p>Our team of football enthusiasts is always ready to assist with your queries.</p>
                    </li>
                </ul>
            </div>
        </section>
        
        <!-- Meet Our Team Section -->
        <section class="about-section team-section">
            <h2>Meet Our Team</h2>
            <p class="team-intro">The Football Vault is powered by a team of passionate football fans who bring diverse expertise and support different clubs.</p>
            
            <div class="team-members">
                <div class="team-member">
                    <div class="member-photo">
                        <img src="${pageContext.request.contextPath}/Images/team-suman.jpg" alt="Suman" class="member-img">
                    </div>
                    <h3>Suman Giri</h3>
                    <p class="member-role">Founder & CEO</p>
                    <p class="member-desc">A lifelong Barcelona supporter, Suman handles business strategy and partnerships. His vision drives our company forward.</p>
                </div>
                
                <div class="team-member">
                    <div class="member-photo">
                        <img src="${pageContext.request.contextPath}/Images/team-januk.jpeg" alt="Januk" class="member-img">
                    </div>
                    <h3>Januk Maharjan</h3>
                    <p class="member-role">Operations Manager</p>
                    <p class="member-desc">United fan and logistics expert, Januk ensures smooth operations and timely deliveries across Nepal.</p>
                </div>
                
                <div class="team-member">
                    <div class="member-photo">
                        <img src="${pageContext.request.contextPath}/Images/team-manjil.jpg" alt="Manjil" class="member-img">
                    </div>
                    <h3>Manjil Limbu</h3>
                    <p class="member-role">Product Specialist</p>
                    <p class="member-desc">Real Madrid supporter with an eye for detail, Manjil curates our product selection and ensures quality control.</p>
                </div>
                
                <div class="team-member">
                    <div class="member-photo">
                        <img src="${pageContext.request.contextPath}/Images/team-maanshubh.jpeg" alt="Maanshubh" class="member-img">
                    </div>
                    <h3>Maanshubh Gautam</h3>
                    <p class="member-role">Marketing Director</p>
                    <p class="member-desc">Juventus enthusiast who leads our marketing efforts and community engagement initiatives.</p>
                </div>
                
                <div class="team-member">
                    <div class="member-photo">
                        <img src="${pageContext.request.contextPath}/Images/team-john.jpg" alt="John" class="member-img">
                    </div>
                    <h3>John Karki</h3>
                    <p class="member-role">Customer Experience</p>
                    <p class="member-desc">Liverpool fan who ensures every customer receives exceptional service and support.</p>
                </div>
            </div>
        </section>
        
        <!-- Our Values Section -->
        <section class="about-section values-section">
            <h2>Our Values</h2>
            <div class="values-container">
                <div class="value-item">
                    <h3>Authenticity</h3>
                    <p>We never compromise on the authenticity of our products. Every jersey we sell is genuine.</p>
                </div>
                
                <div class="value-item">
                    <h3>Community</h3>
                    <p>We're building a community of football fans across Nepal, united by their passion for the game.</p>
                </div>
                
                <div class="value-item">
                    <h3>Excellence</h3>
                    <p>From product quality to customer service, we strive for excellence in everything we do.</p>
                </div>
                
                <div class="value-item">
                    <h3>Integrity</h3>
                    <p>We operate with honesty and transparency in all our business practices.</p>
                </div>
            </div>
        </section>
        
        <!-- Testimonials Section -->
        <section class="about-section testimonials-section">
            <h2>What Our Customers Say?</h2>
            <div class="testimonials-container">
                <div class="testimonial">
                    <p class="testimonial-text">"The quality of jerseys from The Football Vault is exceptional. Fast delivery and great customer service too!"</p>
                    <p class="testimonial-author">- Rajesh K., Kathmandu</p>
                </div>
                
                <div class="testimonial">
                    <p class="testimonial-text">"I've been buying from them for years. Always authentic products and they even deliver to my remote village in Jumla."</p>
                    <p class="testimonial-author">- Prem S., Jumla</p>
                </div>
                
                <div class="testimonial">
                    <p class="testimonial-text">"The personalization service is perfect. Got my son's name on his favorite team's jersey for his birthday!"</p>
                    <p class="testimonial-author">- Anita T., Pokhara</p>
                </div>
            </div>
        </section>
        
        <!-- Call to Action -->
        <section class="about-section cta-section">
            <h2>Join Our Football Community</h2>
            <p>Explore our collection of authentic football jerseys from around the world and show your support for your favorite team.</p>
            <a href="${pageContext.request.contextPath}/Pages/home.jsp" class="cta-button">Shop Now</a>
        </section>
    </div>
  </main>

  <%@ include file="footer.jsp" %>
</body>
</html>