<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.util.List" %>
<%@ page import="java.util.Map" %>
<%@ page import="java.sql.SQLException" %>
<%@ page import="java.sql.Connection" %>
<%@ page import="java.sql.PreparedStatement" %>
<%@ page import="java.sql.ResultSet" %>
<%@ page import="com.thefootballvault.utils.DBConnection" %>
<% 
    request.setAttribute("currentPage", "cart"); 
%>
<!DOCTYPE html>
<html>
<head>
    <title>The Football Vault - Cart</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/CSS/header.css" />
    <link rel="stylesheet" href="${pageContext.request.contextPath}/CSS/footer.css" />
    <link rel="stylesheet" href="${pageContext.request.contextPath}/CSS/cart.css" />
</head>
<body>
    <%@ include file="header.jsp" %>

    <main class="cart-page">
        <div class="cart-container">
            <div class="cart-main">
                <div class="member-section">
                    <a href="${pageContext.request.contextPath}/Pages/account.jsp" class="member-link">ALREADY A MEMBER? SIGN IN</a>
                </div>
                
                <div class="cart-content">
                    <h1 class="cart-title">YOUR CART</h1>
                    <%
                        List<Map<String, Object>> cartItemList = (List<Map<String, Object>>) request.getAttribute("cartItemList");
                        if (cartItemList == null || cartItemList.isEmpty()) {
                    %>
                    <p class="cart-message">Your cart is empty. <a href="${pageContext.request.contextPath}/Pages/football.jsp" class="continue-link">Continue shopping</a>.</p>
                    <%
                        } else {
                    %>
                    <ul>
                    <%
                        for (Map<String, Object> item : cartItemList) {
                            String productName = (String) item.get("productName");
                            String size = (String) item.get("size");
                            int quantity = (int) item.get("quantity");
                    %>
                        <li><%= productName != null ? productName : "Unknown" %> - Size: <%= size != null ? size : "N/A" %> - Quantity: <%= quantity %></li>
                    <%
                        }
                    %>
                    </ul>
                    <%
                        }
                    %>
                </div>
            </div>
            
            <div class="order-summary">
                <div class="summary-content">
                    <h2 class="summary-title">YOUR ORDER</h2>
                    <%
                        int itemCount = 0;
                        double subtotal = 0.0;
                        double shipping = 50.0;
                        double taxRate = 0.05;
                        if (cartItemList != null && !cartItemList.isEmpty()) {
                            for (Map<String, Object> item : cartItemList) {
                                int productId = (int) item.get("productId");
                                int quantity = (int) item.get("quantity");
                                itemCount += quantity;

                                try (Connection conn = DBConnection.getDbConnection()) {
                                    String sql = "SELECT price FROM product WHERE product_id = ?";
                                    PreparedStatement stmt = conn.prepareStatement(sql);
                                    stmt.setInt(1, productId);
                                    ResultSet rs = stmt.executeQuery();
                                    if (rs.next()) {
                                        double price = rs.getDouble("price");
                                        subtotal += price * quantity;
                                    }
                                } catch (SQLException | ClassNotFoundException e) {
                                    e.printStackTrace();
                                }
                            }
                        }
                        double tax = subtotal * taxRate;
                        double total = subtotal + shipping + tax;
                    %>
                    <p class="item-count"><%= itemCount %> item(s) <a href="#" class="view-cart">VIEW CART</a></p>
                    
                    <div class="summary-line">
                        <span class="summary-label">ORDER SUBTOTAL</span>
                        <span class="summary-value">Rs. <%= String.format("%.2f", subtotal) %></span>
                    </div>
                    
                    <div class="summary-line">
                        <span class="summary-label">SHIPPING</span>
                        <span class="summary-value">Rs. <%= String.format("%.2f", shipping) %></span>
                    </div>
                    
                    <div class="summary-line">
                        <span class="summary-label">TAX</span>
                        <span class="summary-value">Rs. <%= String.format("%.2f", tax) %></span>
                    </div>
                    
                    <div class="summary-line total">
                        <span class="summary-label">TOTAL</span>
                        <span class="summary-value">Rs. <%= String.format("%.2f", total) %></span>
                    </div>

                    <form action="${pageContext.request.contextPath}/checkout" method="post">
                        <button type="submit" class="checkout-btn">Checkout</button>
                    </form>
                </div>
            </div>
        </div>
    </main>

    <%@ include file="footer.jsp" %>
</body>
</html>