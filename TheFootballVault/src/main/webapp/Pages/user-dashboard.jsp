<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<% 
    // Redirect if accessed directly without servlet processing
    if (request.getAttribute("recentOrders") == null || request.getAttribute("user") == null) {
        response.sendRedirect(request.getContextPath() + "/dashboard");
        return;
    }
%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>User Dashboard - The Football Vault</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/CSS/user-dashboard.css" />
    <style>
        .message {
            margin-bottom: 20px;
            padding: 10px;
            border-radius: 5px;
            text-align: center;
        }
        .message.success {
            background-color: #d4edda;
            color: #155724;
        }
        .message.error {
            background-color: #f8d7da;
            color: #721c24;
        }
    </style>
</head>
<body>
    <div class="dashboard-container">
        <!-- Sidebar -->
        <div class="sidebar">
            <div class="user-info">
                <div class="user-avatar">
                    <img src="${pageContext.request.contextPath}/Images/user.png" alt="User Avatar">
                </div>
                <h3>${user.fullName}</h3>
                <span class="status-indicator">Online</span>
            </div>
            
            <div class="sidebar-menu">
                <h4>MAIN MENU</h4>
                <ul>
                    <li class="active">
                        <a href="${pageContext.request.contextPath}/dashboard">
                            <span class="menu-icon home-icon"></span>
                            <span>Dashboard</span>
                        </a>
                    </li>
                    <li>
                        <a href="${pageContext.request.contextPath}/Pages/edit-profile.jsp">
                            <span class="menu-icon profile-icon"></span>
                            <span>Edit Profile</span>
                        </a>
                    </li>
                </ul>
            </div>
            
            <div class="sidebar-footer">
                <a href="${pageContext.request.contextPath}/logout" class="logout-btn">
                    <span class="menu-icon logout-icon"></span>
                    <span>Logout</span>
                </a>
            </div>
        </div>
        
        <!-- Main Content -->
        <div class="main-content">
            <div class="page-header">
                <h1>Dashboard</h1>
                <p>Welcome to The Football Vault User Panel</p>
            </div>
            
            <!-- Display Success or Error Messages -->
            <% 
                String successMessage = (String) request.getAttribute("successMessage");
                String errorMessage = (String) request.getAttribute("errorMessage");
                if (successMessage != null) {
            %>
                <div class="message success"><%= successMessage %></div>
            <% 
                } else if (errorMessage != null) {
            %>
                <div class="message error"><%= errorMessage %></div>
            <% 
                }
            %>
            
            <!-- Stats Cards -->
            <div class="stats-cards">
                <div class="stat-card orders">
                    <div class="stat-icon"></div>
                    <div class="stat-details">
                        <h3>MY ORDERS</h3>
                        <div class="stat-number">${orderCount != null ? orderCount : 0}</div>
                        <div class="stat-info">${newOrderCount != null ? newOrderCount : 0} new this month</div>
                    </div>
                </div>
                
                <div class="stat-card cart">
                    <div class="stat-icon"></div>
                    <div class="stat-details">
                        <h3>CART ITEMS</h3>
                        <div class="stat-number">${cartItemCount != null ? cartItemCount : 0}</div>
                        <div class="stat-info">Rs. ${cartTotal != null ? String.format("%.2f", cartTotal) : "0.00"} total</div>
                    </div>
                </div>
            </div>
            
            <!-- Action Buttons -->
            <div class="action-buttons">
                <a href="${pageContext.request.contextPath}/Pages/football.jsp" class="action-btn browse-btn">
                    <span class="action-icon browse-icon"></span>
                    <span>Browse Products</span>
                </a>
                <a href="${pageContext.request.contextPath}/addToCart" class="action-btn cart-btn">
                    <span class="action-icon cart-icon"></span>
                    <span>View Cart</span>
                </a>
            </div>
            
            <!-- Recent Orders -->
            <div class="content-card">
                <div class="card-header">
                    <h2>Recent Orders</h2>
                </div>
                <div class="card-content">
                    <table class="data-table">
                        <thead>
                            <tr>
                                <th>Order ID</th>
                                <th>Date</th>
                                <th>Amount</th>
                            </tr>
                        </thead>
                        <tbody>
                            <% 
                                if (request.getAttribute("recentOrders") != null) {
                                    java.util.List<java.util.Map<String, Object>> recentOrders = 
                                        (java.util.List<java.util.Map<String, Object>>)request.getAttribute("recentOrders");
                                    for (java.util.Map<String, Object> order : recentOrders) {
                            %>
                            <tr>
                                <td>#ORD-<%= order.get("orderId") %></td>
                                <td><%= order.get("orderDate") != null ? order.get("orderDate") : "N/A" %></td>
                                <td>Rs. <%= String.format("%.2f", order.get("total")) %></td>
                            </tr>
                            <% 
                                    }
                                } else {
                                    out.println("<tr><td colspan='3'>No orders found.</td></tr>");
                                }
                            %>
                        </tbody>
                    </table>
                </div>
            </div>
            
            <!-- Profile Summary -->
            <div class="content-card">
                <div class="card-header">
                    <h2>Profile Summary</h2>
                    <a href="${pageContext.request.contextPath}/Pages/edit-profile.jsp" class="edit-link">Edit</a>
                </div>
                <div class="card-content">
                    <div class="profile-summary">
                        <div class="profile-field">
                            <span class="field-label">Full Name:</span>
                            <span class="field-value">${user.fullName}</span>
                        </div>
                        <div class="profile-field">
                            <span class="field-label">Email:</span>
                            <span class="field-value">${user.email}</span>
                        </div>
                        <div class="profile-field">
                            <span class="field-label">Phone:</span>
                            <span class="field-value">${user.phone}</span>
                        </div>
                        <div class="profile-field">
                            <span class="field-label">Address:</span>
                            <span class="field-value">${user.address}</span>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</body>
</html>