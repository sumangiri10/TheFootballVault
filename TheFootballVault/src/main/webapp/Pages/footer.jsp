<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Footer</title>
 <link rel="stylesheet" href="${pageContext.request.contextPath}/CSS/footer.css" />
</head>
<body>
<footer class="site-footer">
    <div class="footer-container">
        <div class="footer-column">
            <h3>SHOP JERSEYS</h3>
            <ul class="footer-links">
                <li><a href="${pageContext.request.contextPath}/Pages/football.jsp">Football Jerseys</a></li>
                <li><a href="${pageContext.request.contextPath}/Pages/kids.jsp">Kids Jerseys</a></li>
                <li><a href="${pageContext.request.contextPath}/Pages/retrojersey.jsp">Retro Jerseys</a></li>
                <li><a href="${pageContext.request.contextPath}/Pages/international.jsp">International Jerseys</a></li>
                <li><a href="${pageContext.request.contextPath}/Pages/boots.jsp">Boots</a></li>
            </ul>
        </div>

        <div class="footer-column">
            <h3>YOUR ACCOUNT</h3>
            <ul class="footer-links">
                <li><a href="${pageContext.request.contextPath}/Pages/account.jsp">Register</a></li>
                <li><a href="${pageContext.request.contextPath}/Pages/account.jsp">Login</a></li>
                <li><a href="${pageContext.request.contextPath}/Pages/cart.jsp">Cart</a></li>
                <li><a href="${pageContext.request.contextPath}/Pages/shipping.jsp">Shipping</a></li>
            </ul>
        </div>

        <div class="footer-column">
            <h3>CUSTOMER CARE</h3>
            <ul class="footer-links">
                <li><a href="${pageContext.request.contextPath}/Pages/contact.jsp">Contact Us</a></li>
                <li><a href="${pageContext.request.contextPath}/Pages/faqs.jsp">FAQs</a></li>
            </ul>
        </div>

        <div class="footer-column">
            <h3>ABOUT US</h3>
            <ul class="footer-links">
                <li><a href="${pageContext.request.contextPath}/Pages/about.jsp">About</a></li>
            </ul>
        </div>

        <div class="footer-column">
            <h3>POLICIES</h3>
            <ul class="footer-links">
                <li><a href="${pageContext.request.contextPath}/Pages/privacy.jsp">Privacy Policy</a></li>
                <li><a href="${pageContext.request.contextPath}/Pages/terms.jsp">Terms of Use</a></li>
                <li><a href="${pageContext.request.contextPath}/Pages/cookies.jsp">Cookies Policy</a></li>
            </ul>
        </div>

        <div class="footer-column">
            <h3>SOCIAL</h3>
            <ul class="footer-links social-links">
                <li><a href="https://instagram.com/TheFootballVault" class="social-link">Instagram</a></li>
                <li><a href="https://facebook.com/TheFootballVault" class="social-link">Facebook</a></li>
                <li><a href="https://youtube.com/TheFootballVault" class="social-link">YouTube</a></li>
            </ul>
        </div>
    </div>
    
    <!-- Copyright and Logo Section -->
    <div class="footer-bottom">
        <div class="footer-bottom-content">
            <div class="footer-logo">
                <a href="${pageContext.request.contextPath}/Pages/home.jsp">
                    <img src="${pageContext.request.contextPath}/Images/logo1.png" alt="Football Vault Logo">
                </a>
            </div>
            <div class="footer-copyright">
                <p>COPYRIGHT © 2025 THE FOOTBALL VAULT. ALL RIGHTS RESERVED</p>
            </div>
            <div class="empty-space"></div>
        </div>
    </div>
</footer>
</body>
</html>