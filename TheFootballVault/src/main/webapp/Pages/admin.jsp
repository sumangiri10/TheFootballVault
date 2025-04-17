<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
  <title>The Football Vault - Admin Login</title>
  <link rel="stylesheet" href="${pageContext.request.contextPath}/CSS/header.css" />
  <link rel="stylesheet" href="${pageContext.request.contextPath}/CSS/footer.css" />
  <link rel="stylesheet" href="${pageContext.request.contextPath}/CSS/admin-login.css" />
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
            <h2>Admin Login</h2>
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
                
                <a href="${pageContext.request.contextPath}/Pages/account.jsp" class="user-login">Login as user</a>
            </form>
        </div>
    </div>
  </main>

  <%@ include file="footer.jsp" %>
</body>
</html>