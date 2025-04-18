<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<% 
   request.setAttribute("currentPage", "terms"); 
%>
<!DOCTYPE html>
<html>
<head>
  <title>The Football Vault - Terms of Use</title>
  <link rel="stylesheet" href="${pageContext.request.contextPath}/CSS/header.css" />
  <link rel="stylesheet" href="${pageContext.request.contextPath}/CSS/footer.css" />
  <link rel="stylesheet" href="${pageContext.request.contextPath}/CSS/policy.css" />
</head>
<body>
  <%@ include file="header.jsp" %>

  <main>
    <!-- Header Section -->
    <header class="policy-header">
        <h1>TERMS OF USE</h1>
        <div class="breadcrumb">
            <a href="${pageContext.request.contextPath}/Pages/home.jsp">Home</a> > Terms of Use
        </div>
    </header>
    
    <!-- Main Content -->
    <div class="container">
        <div class="policy-content">
            <div class="last-updated">
                <p>Last Updated: April 18, 2025</p>
            </div>
            
            <section class="policy-section">
                <h2>1. Acceptance of Terms</h2>
                <p>Welcome to The Football Vault. By accessing or using our website, you agree to be bound by these Terms of Use. If you do not agree to these terms, please do not use our website.</p>
                <p>We reserve the right to modify these terms at any time. Your continued use of the website following the posting of changes constitutes your acceptance of such changes.</p>
            </section>
            
            <section class="policy-section">
                <h2>2. User Accounts</h2>
                <p>When you create an account with us, you must provide accurate and complete information. You are responsible for maintaining the confidentiality of your account and password and for restricting access to your computer.</p>
                <p>You agree to accept responsibility for all activities that occur under your account. If you believe someone has used your account without your authorization, please contact us immediately.</p>
            </section>
            
            <section class="policy-section">
                <h2>3. Product Information</h2>
                <p>We strive to provide accurate product descriptions, pricing, and availability information. However, we do not warrant that product descriptions or other content on the site is accurate, complete, reliable, current, or error-free.</p>
                <p>Colors of products may vary slightly from their appearance on the website due to monitor settings and technology limitations.</p>
                <p>All jerseys are officially licensed products unless explicitly stated as replicas or fan versions.</p>
            </section>
            
            <section class="policy-section">
                <h2>4. Ordering and Payment</h2>
                <p>By placing an order, you are making an offer to purchase the products you have selected. We reserve the right to accept or decline your order for any reason.</p>
                <p>We accept the following payment methods:</p>
                <ul>
                    <li>Cash on Delivery (COD)</li>
                    <li>Bank transfers</li>
                    <li>Mobile payment services</li>
                </ul>
                <p>All prices are in Nepalese Rupees (NPR) and include applicable taxes unless otherwise stated.</p>
            </section>
            
            <section class="policy-section">
                <h2>5. Shipping and Delivery</h2>
                <p>We ship to all locations within Nepal. Standard delivery typically takes 3-5 business days, depending on your location.</p>
                <p>Free shipping is available for orders over Rs.2000. For orders below this amount, shipping charges will be calculated at checkout.</p>
                <p>We are not responsible for delays caused by customs, natural disasters, or other circumstances beyond our control.</p>
            </section>
            
            <section class="policy-section">
                <h2>6. Returns and Refunds</h2>
                <p>You may return unworn, unwashed items with original tags attached within 7 days of delivery. To initiate a return, please contact our customer service.</p>
                <p>Personalized jerseys (with custom names/numbers) cannot be returned unless they are defective.</p>
                <p>Refunds will be processed within 7-10 business days after we receive the returned item.</p>
            </section>
            
            <section class="policy-section">
                <h2>7. Intellectual Property</h2>
                <p>All content on this website, including text, graphics, logos, images, and software, is the property of The Football Vault or its content suppliers and is protected by copyright laws.</p>
                <p>You may not reproduce, distribute, modify, or create derivative works from any content without our express written consent.</p>
                <p>All product names, team names, and logos are trademarks of their respective owners.</p>
            </section>
            
            <section class="policy-section">
                <h2>8. Prohibited Activities</h2>
                <p>You agree not to:</p>
                <ul>
                    <li>Use the website for any illegal purpose</li>
                    <li>Submit false or misleading information</li>
                    <li>Interfere with the proper functioning of the website</li>
                    <li>Attempt to gain unauthorized access to our systems</li>
                    <li>Resell products purchased from our website without authorization</li>
                </ul>
            </section>
            
            <section class="policy-section">
                <h2>9. Limitation of Liability</h2>
                <p>To the fullest extent permitted by law, The Football Vault shall not be liable for any indirect, incidental, special, consequential, or punitive damages arising out of or relating to your use of the website or products purchased.</p>
                <p>Our liability for any claim arising out of these terms shall not exceed the amount you paid for the product that is the subject of the claim.</p>
            </section>
            
            <section class="policy-section">
                <h2>10. Governing Law</h2>
                <p>These Terms of Use shall be governed by and construed in accordance with the laws of Nepal, without regard to its conflict of law provisions.</p>
                <p>Any dispute arising under these terms shall be resolved exclusively in the courts of Kathmandu, Nepal.</p>
            </section>
            
            <section class="policy-section">
                <h2>11. Contact Us</h2>
                <p>If you have any questions about these Terms of Use, please visit our <a href="${pageContext.request.contextPath}/Pages/contact.jsp">Contact Us</a> page for all our contact details and a message form.</p>
            </section>
        </div>
    </div>
  </main>

  <%@ include file="footer.jsp" %>
</body>
</html>