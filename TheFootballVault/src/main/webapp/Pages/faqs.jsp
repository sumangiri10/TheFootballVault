<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
  <title>The Football Vault - FAQs</title>
  <link rel="stylesheet" href="${pageContext.request.contextPath}/CSS/header.css" />
  <link rel="stylesheet" href="${pageContext.request.contextPath}/CSS/footer.css" />
  <link rel="stylesheet" href="${pageContext.request.contextPath}/CSS/faq.css" />
</head>
<body>
  <%@ include file="header.jsp" %>

  <main>
    <!-- Header Section -->
    <header class="faq-header">
        <h1>FREQUENTLY ASKED QUESTIONS</h1>
        <div class="breadcrumb">
            <a href="${pageContext.request.contextPath}/Pages/home.jsp">Home</a> > FAQ
        </div>
    </header>
    
    <!-- Main Content -->
    <div class="container">
        <div class="intro-text">
            <h2>Common Questions</h2>
            <p>Find answers to the most frequently asked questions about our products, ordering process, and more. If you can't find what you're looking for, please <a href="${pageContext.request.contextPath}/Pages/contact.jsp">contact us</a>.</p>
        </div>
        
        <div class="faq-list">
            <!-- FAQ Item 1 -->
            <div class="faq-item">
                <div class="faq-question">
                    <h3>How long does it take for my order to arrive?</h3>
                </div>
                <div class="faq-answer">
                    <p>Orders are usually delivered within 3–5 working days across Nepal. Delivery time may vary slightly based on your location.</p>
                </div>
            </div>
            
            <!-- FAQ Item 2 -->
            <div class="faq-item">
                <div class="faq-question">
                    <h3>Can I provide a different delivery address?</h3>
                </div>
                <div class="faq-answer">
                    <p>Yes, during checkout you can enter a separate shipping address from your billing address.</p>
                </div>
            </div>
            
            <!-- FAQ Item 3 -->
            <div class="faq-item">
                <div class="faq-question">
                    <h3>How can I make a payment?</h3>
                </div>
                <div class="faq-answer">
                    <p>We offer Cash on Delivery (COD) nationwide. Online payment options will be added soon.</p>
                </div>
            </div>
            
            <!-- FAQ Item 4 -->
            <div class="faq-item">
                <div class="faq-question">
                    <h3>What's the difference between replica and player-issue jerseys?</h3>
                </div>
                <div class="faq-answer">
                    <p>Replica jerseys are designed for fans comfortable and budget-friendly. Player-issue shirts are premium versions, identical to what players wear, with performance materials and slim fits.</p>
                </div>
            </div>
            
            <!-- FAQ Item 5 -->
            <div class="faq-item">
                <div class="faq-question">
                    <h3>How should I wash my football shirts?</h3>
                </div>
                <div class="faq-answer">
                    <p>Wash inside out in cold water, on a gentle cycle. Avoid bleach and never tumble dry to keep prints and colors lasting longer.</p>
                </div>
            </div>
            
            <!-- FAQ Item 6 -->
            <div class="faq-item">
                <div class="faq-question">
                    <h3>Do you offer jerseys for kids?</h3>
                </div>
                <div class="faq-answer">
                    <p>Yes! We have a dedicated Kids Jerseys section for young fans of all sizes.</p>
                </div>
            </div>
            
            <!-- FAQ Item 7 -->
            <div class="faq-item">
                <div class="faq-question">
                    <h3>Do you sell retro football jerseys?</h3>
                </div>
                <div class="faq-answer">
                    <p>Yes! We offer a curated selection of classic and iconic retro jerseys from top clubs and national teams. Check out our Retro Jerseys section.</p>
                </div>
            </div>
            
            <!-- FAQ Item 8 -->
            <div class="faq-item">
                <div class="faq-question">
                    <h3>Is international shipping available?</h3>
                </div>
                <div class="faq-answer">
                    <p>Currently, we only ship within Nepal. Stay tuned for updates on global shipping options.</p>
                </div>
            </div>
        </div>
        
        <div class="additional-help">
            <h3>Need More Help?</h3>
            <p>If you couldn't find the answer to your question, please don't hesitate to <a href="${pageContext.request.contextPath}/Pages/contact.jsp">contact our team</a>. We're here to help!</p>
        </div>
    </div>
  </main>

  <%@ include file="footer.jsp" %>
</body>
</html>