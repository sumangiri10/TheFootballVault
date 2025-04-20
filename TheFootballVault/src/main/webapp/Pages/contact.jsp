<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
  <title>The Football Vault - Contact Us</title>
  <link rel="stylesheet" href="${pageContext.request.contextPath}/CSS/header.css" />
  <link rel="stylesheet" href="${pageContext.request.contextPath}/CSS/footer.css" />
  <link rel="stylesheet" href="${pageContext.request.contextPath}/CSS/contact-us.css" />
</head>
<body>
  <jsp:include page="header.jsp">
    <jsp:param name="activePage" value="contact" />
  </jsp:include>

  <main>
    <!-- Header Section -->
    <header class="contact-header">
        <h1>CONTACT US</h1>
        <div class="breadcrumb">
            <a href="${pageContext.request.contextPath}/Pages/home.jsp">Home</a> > Contact Us
        </div>
    </header>
    
    <!-- Main Content -->
    <div class="container">
        <div class="intro-text">
            <h2>Get in Touch</h2>
            <p>We'd love to hear from you! Whether you have a question about our services, need help with your account, or just want to say hello, we're here to assist you.</p>
        </div>
        
        <div class="contact-wrapper">
            <!-- Contact Form Section -->
            <div class="contact-form">
                <h3>Send Us a Message</h3>
                <form>
                    <div class="form-group">
                        <label for="name">Your Name <span class="required">*</span></label>
                        <input type="text" id="name" name="name" required>
                    </div>
                    
                    <div class="form-group">
                        <label for="email">Your Email <span class="required">*</span></label>
                        <input type="email" id="email" name="email" required>
                    </div>
                    
                    <div class="form-group">
                        <label for="message">Your Message <span class="required">*</span></label>
                        <textarea id="message" name="message" rows="6" required></textarea>
                    </div>
                    
                    <button type="submit" class="btn">SUBMIT</button>
                </form>
            </div>
            
            <!-- Contact Info Section -->
            <div class="contact-info">
                <h3>Our Contact Information</h3>
                <p>Feel free to reach out to us using any of the following contact methods:</p>
                
                <div class="info-item">
                    <span class="info-label">Email:</span>
                    <span class="info-value">thefootballvault@gmail.com</span>
                </div>
                
                <div class="info-item">
                    <span class="info-label">Phone:</span>
                    <span class="info-value">+977 9827361204</span>
                    <span class="info-value">+977 9864244422</span>
                </div>
                
                <div class="info-item">
                    <span class="info-label">Address:</span>
                    <span class="info-value">Ranjana Galli, New Road, Kathmandu 44600, Nepal</span>
                </div>
                
                <div class="business-hours">
                    <h4>Business Hours</h4>
                    <p>Sunday - Friday: 10:00 AM - 6:00 PM</p>
                    <p>Saturday: Closed</p>
                </div>
                
                <div class="response-time">
                    <h4>Response Time</h4>
                    <p>We typically respond to all inquiries within 24-48 hours during business days.</p>
                </div>
            </div>
        </div>
        
        <div class="additional-info">
            <h3>Why Contact Us?</h3>
            <ul>
                <li>Ask about jersey & boot availability, sizing & fit.</li>
                <li>Get styling tips for your favorite teams.</li>
                <li>Request custom prints & bulk/team orders.</li>
                <li>Report technical issues with our website.</li>
                <li>Provide feedback on our services.</li>
            </ul>
            <p style="margin-top: 10px; margin-left: 30px;">
    <a href="${pageContext.request.contextPath}/Pages/faqs.jsp" style="color: #957b47; text-decoration: underline;">Frequently Ask Questions →</a>
</p>
            
        </div>
    </div>
  </main>

  <%@ include file="footer.jsp" %>
</body>
</html>