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
  <%@ include file="header.jsp" %>

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
            <form>
                <div class="form-group">
                    <label>Username or email address <span class="required">*</span></label>
                    <input type="text" required>
                </div>
                
                <div class="form-group">
                    <label>Password <span class="required">*</span></label>
                    <input type="password" required>
                </div>
                
                <button type="submit" class="btn">LOG IN</button>
                
                <a href="${pageContext.request.contextPath}/Pages/admin.jsp" class="admin-login">Login as admin</a>
            </form>
        </div>
        
        <!-- Register Section -->
        <div class="register-section">
            <h2>Register</h2>
            <form>
                <div class="form-group">
                    <label>Username <span class="required">*</span></label>
                    <input type="text" required>
                </div>
                
                <div class="form-group">
                    <label>Email address <span class="required">*</span></label>
                    <input type="email" required>
                </div>
                
                <div class="form-group">
                    <label>Password <span class="required">*</span></label>
                    <input type="password" required>
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