<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <title>The Football Vault - Account</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/CSS/header.css" />
    <link rel="stylesheet" href="${pageContext.request.contextPath}/CSS/footer.css" />
    <link rel="stylesheet" href="${pageContext.request.contextPath}/CSS/account.css" />
</head>
<body>
    <jsp:include page="header.jsp"> 
        <jsp:param name="activePage" value="sign" />
    </jsp:include>

    <main>
        <!-- Header Section -->
        <header class="account-header">
            <h1>MY ACCOUNT</h1>
            <div class="breadcrumb">
                <a href="${pageContext.request.contextPath}/Pages/home.jsp">Home</a> > My Account
            </div>
        </header>
        
        <!-- Main Content -->
        <div class="container">
            <!-- Login Section -->
            <div class="login-section">
                <h2>Login</h2>
                <% if (request.getAttribute("errorMessage") != null) { %>
                    <p style="color:red;"><%= request.getAttribute("errorMessage") %></p>
                <% } %>
                <form action="${pageContext.request.contextPath}/login" method="post">
                    <div class="form-group">
                        <label>Username or email address <span class="required">*</span></label>
                        <input type="text" name="usernameOrEmail" required>
                    </div>
                    
                    <div class="form-group">
                        <label>Password <span class="required">*</span></label>
                        <input type="password" name="password" required>
                    </div>
                    
                    <button type="submit" class="btn">LOG IN</button>
                </form>
            </div>
            
            <!-- Register Section -->
            <div class="register-section">
                <h2>Register</h2>
                <% if (request.getAttribute("registerError") != null) { %>
                    <p style="color:red;"><%= request.getAttribute("registerError") %></p>
                <% } %>
                <form action="${pageContext.request.contextPath}/register" method="post">
                    <div class="form-group">
                        <label>Username <span class="required">*</span></label>
                        <input type="text" name="username" required>
                    </div>
                    
                    <div class="form-group">
                        <label>Email address <span class="required">*</span></label>
                        <input type="email" name="email" required>
                    </div>
                    
                    <div class="form-group">
                        <label>Password <span class="required">*</span></label>
                        <input type="password" name="password" required>
                    </div>
                    
                    <div class="form-group">
                        <label>Phone <span class="required">*</span></label>
                        <input type="text" name="phone" required>
                    </div>
                    
                    <div class="form-group">
                        <label>Address <span class="required">*</span></label>
                        <input type="text" name="address" required>
                    </div>
                    
                    <div class="privacy-text">
                        Your personal data will be used to support your experience throughout this website, to manage access to your account, and for other purposes described in our <a href="${pageContext.request.contextPath}/Pages/privacy.jsp" class="privacy-link">privacy policy</a>.
                    </div>
                    
                    <button type="submit" class="btn">REGISTER</button>
                </form>
            </div>
        </div>
    </main>

    <%@ include file="footer.jsp" %>
</body>
</html>