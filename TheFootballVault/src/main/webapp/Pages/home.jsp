<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
  <title>The Football Vault - Home</title>
  <link rel="stylesheet" href="${pageContext.request.contextPath}/CSS/header.css" />
  <link rel="stylesheet" href="${pageContext.request.contextPath}/CSS/footer.css" />
  <link rel="stylesheet" href="${pageContext.request.contextPath}/CSS/homes.css" />
</head>
<body>
  <jsp:include page="header.jsp">
    <jsp:param name="activePage" value="home" />
  </jsp:include>

  <main>
    <!-- Hero Banner Section -->
    <section class="hero-banner">
    </section>
    
    <!-- Service Features Section -->
    <section class="service-features">
      <div class="container">
        <div class="feature">
          <div class="feature-icon">
            <img src="${pageContext.request.contextPath}/Images/icon-shipping.png" alt="Free Shipping">
          </div>
          <div class="feature-content">
            <h3>Free Shipping</h3>
            <p>On all orders over Rs.2000</p>
          </div>
        </div>
        
        <div class="feature">
          <div class="feature-icon">
            <img src="${pageContext.request.contextPath}/Images/icon-support.png" alt="Customer Support">
          </div>
          <div class="feature-content">
            <h3>Support 24/7</h3>
            <p>Contact us 24 hours a day</p>
          </div>
        </div>
        
        <div class="feature">
          <div class="feature-icon">
            <img src="${pageContext.request.contextPath}/Images/icon-payment.png" alt="Secure Payment">
          </div>
          <div class="feature-content">
            <h3>100% Payment Secure</h3>
            <p>Your payment are safe with us</p>
          </div>
        </div>
      </div>
    </section>
    
    <!-- Featured Categories Section -->
    <section class="featured-categories">
      <div class="container">
        <h2 class="section-title">SHOP BY LEAGUE</h2>
        
        <div class="categories-grid">
          <a href="${pageContext.request.contextPath}/Pages/pl.jsp" class="category-card">
            <div class="category-image">
              <img src="${pageContext.request.contextPath}/Images/premier-league.jpg" alt="Premier League">
            </div>
            <h3>Premier League</h3>
          </a>
          
          <a href="${pageContext.request.contextPath}/Pages/laliga.jsp" class="category-card">
            <div class="category-image">
              <img src="${pageContext.request.contextPath}/Images/la-liga.jpg" alt="La Liga">
            </div>
            <h3>La Liga</h3>
          </a>
          
          <a href="${pageContext.request.contextPath}/Pages/seria.jsp" class="category-card">
            <div class="category-image">
              <img src="${pageContext.request.contextPath}/Images/serie-a.jpg" alt="Serie A">
            </div>
            <h3>Serie A</h3>
          </a>
        </div>
      </div>
    </section>
    
    <!-- New Arrivals Section -->
    <section class="new-arrivals">
      <div class="container">
        <h2 class="section-title">NEW ARRIVALS</h2>
        
        <div class="products-grid">
          <div class="product-card">
            <a href="${pageContext.request.contextPath}/Pages/pl.jsp">
              <div class="product-image">
                <img src="${pageContext.request.contextPath}/Images/jersey-liverpool.jpg" alt="Liverpool Home Jersey 2024/25">
                <div class="product-tag">New</div>
              </div>
              <div class="product-info">
                <h3 class="product-name">Liverpool Home Jersey 2024/25</h3>
                <p class="product-team">Liverpool FC</p>
                <p class="product-price">Rs. 4,500</p>
              </div>
            </a>
          </div>
          
          <div class="product-card">
            <a href="${pageContext.request.contextPath}/Pages/laliga.jsp">
              <div class="product-image">
                <img src="${pageContext.request.contextPath}/Images/jersey-barcelona.jpg" alt="Barcelona Away Jersey 2024/25">
                <div class="product-tag">New</div>
              </div>
              <div class="product-info">
                <h3 class="product-name">Barcelona Away Jersey 2024/25</h3>
                <p class="product-team">FC Barcelona</p>
                <p class="product-price">Rs. 4,500</p>
              </div>
            </a>
          </div>
          
          <div class="product-card">
            <a href="${pageContext.request.contextPath}/Pages/laliga.jsp">
              <div class="product-image">
                <img src="${pageContext.request.contextPath}/Images/jersey-real-madrid.jpg" alt="Real Madrid Home Jersey 2024/25">
                <div class="product-tag">New</div>
              </div>
              <div class="product-info">
                <h3 class="product-name">Real Madrid Home Jersey 2024/25</h3>
                <p class="product-team">Real Madrid CF</p>
                <p class="product-price">Rs. 4,500</p>
              </div>
            </a>
          </div>
          
          <div class="product-card">
            <a href="${pageContext.request.contextPath}/Pages/seria.jsp">
              <div class="product-image">
                <img src="${pageContext.request.contextPath}/Images/jersey-juventus.jpg" alt="Juventus Home Jersey 2024/25">
                <div class="product-tag">New</div>
              </div>
              <div class="product-info">
                <h3 class="product-name">Juventus Home Jersey 2024/25</h3>
                <p class="product-team">Juventus FC</p>
                <p class="product-price">Rs. 4,500</p>
              </div>
            </a>
          </div>
        </div>
        
        <div class="view-all-container">
          <a href="${pageContext.request.contextPath}/Pages/football.jsp" class="view-all-btn">View All Jerseys</a>
        </div>
      </div>
    </section>
    
    <!-- Special Categories Section -->
    <section class="special-categories">
      <div class="container">
        <div class="special-grid">
          <a href="${pageContext.request.contextPath}/Pages/kids.jsp" class="special-card">
            <div class="special-image">
              <img src="${pageContext.request.contextPath}/Images/kids.jpg" alt="Kids Jerseys">
            </div>
            <div class="special-content">
              <h3>Kids Jerseys</h3>
              <p>Perfect jerseys for young fans</p>
            </div>
          </a>
          
          <a href="${pageContext.request.contextPath}/Pages/boots.jsp" class="special-card">
            <div class="special-image">
              <img src="${pageContext.request.contextPath}/Images/football-boots.jpg" alt="Football Boots">
            </div>
            <div class="special-content">
              <h3>Football Boots</h3>
              <p>Professional boots for every player</p>
            </div>
          </a>
        </div>
      </div>
    </section>
    
    <!-- Retro Collections Section -->
    <section class="retro-collections">
      <div class="container">
        <h2 class="section-title">RETRO COLLECTIONS</h2>
        
        <div class="retro-grid">
          <a href="${pageContext.request.contextPath}/Pages/1990s.jsp" class="retro-card">
            <div class="retro-image">
              <img src="${pageContext.request.contextPath}/Images/1990s.jpg" alt="1990s Jerseys">
            </div>
            <h3>1990s</h3>
          </a>
          
          <a href="${pageContext.request.contextPath}/Pages/2000s.jsp" class="retro-card">
            <div class="retro-image">
              <img src="${pageContext.request.contextPath}/Images/2000s.jpg" alt="2000s Jerseys">
            </div>
            <h3>2000s</h3>
          </a>
        </div>
      </div>
    </section>
    
    <!-- International Section -->
    <section class="international-section">
      <div class="container">
        <h2 class="section-title">INTERNATIONAL JERSEYS</h2>
        
        <div class="international-grid">
          <a href="${pageContext.request.contextPath}/Pages/europe.jsp" class="international-card">
            <div class="international-image">
              <img src="${pageContext.request.contextPath}/Images/europe.jpg" alt="Europe">
            </div>
            <h3>Europe</h3>
          </a>
          
          <a href="${pageContext.request.contextPath}/Pages/southamerica.jsp" class="international-card">
            <div class="international-image">
              <img src="${pageContext.request.contextPath}/Images/southamerica.jpg" alt="South America">
            </div>
            <h3>South America</h3>
          </a>
          
          <a href="${pageContext.request.contextPath}/Pages/asias.jsp" class="international-card">
            <div class="international-image">
              <img src="${pageContext.request.contextPath}/Images/asia.jpg" alt="Asia">
            </div>
            <h3>Asia</h3>
          </a>
        </div>
      </div>
    </section>
    
    <!-- Newsletter Section -->
    <section class="newsletter-section">
      <div class="container">
        <div class="newsletter-content">
          <h2>JOIN OUR NEWSLETTER</h2>
          <p>Subscribe to get special offers, free giveaways, and once-in-a-lifetime deals.</p>
          <form class="newsletter-form">
            <input type="email" placeholder="Your email address" required>
            <button type="submit">Subscribe</button>
          </form>
        </div>
      </div>
    </section>
  </main>

  <%@ include file="footer.jsp" %>
</body>
</html>