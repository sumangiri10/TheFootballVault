<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Reports - The Football Vault Admin</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/CSS/admin.css" />
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css" />
</head>
<body>
    <div class="admin-container">
        <!-- Sidebar -->
        <div class="sidebar">
            <div class="sidebar-header">
                <div class="admin-profile">
                    <img src="${pageContext.request.contextPath}/Images/admin.png" alt="Admin Profile" class="admin-avatar">
                    <div class="admin-info">
                        <h3>Admin User</h3>
                        <span class="status">
                            <span class="status-dot online"></span>
                            Online
                        </span>
                    </div>
                </div>
            </div>
            
            <div class="sidebar-menu-label">Main Menu</div>
            
            <ul class="sidebar-menu">
                <li>
                    <a href="${pageContext.request.contextPath}/Pages/admin/admin.jsp">
                        <i class="fas fa-tachometer-alt"></i>
                        <span>Dashboard</span>
                    </a>
                </li>
                <li>
                    <a href="${pageContext.request.contextPath}/Pages/admin/product.jsp">
                        <i class="fas fa-tshirt"></i>
                        <span>Products</span>
                    </a>
                </li>
                <li>
                    <a href="${pageContext.request.contextPath}/Pages/admin/orders.jsp">
                        <i class="fas fa-shopping-cart"></i>
                        <span>Orders</span>
                    </a>
                </li>
                </li>
                <li class="active">
                    <a href="${pageContext.request.contextPath}/Pages/admin/reports.jsp">
                        <i class="fas fa-chart-bar"></i>
                        <span>Reports</span>
                    </a>
                </li>
                <li>
                    <a href="${pageContext.request.contextPath}/Pages/admin/setting.jsp">
                        <i class="fas fa-cog"></i>
                        <span>Settings</span>
                    </a>
                </li>
            </ul>
            
            <div class="sidebar-footer">
                <a href="${pageContext.request.contextPath}/Pages/account.jsp" class="logout-btn">
                    <i class="fas fa-sign-out-alt"></i>
                    <span>Logout</span>
                </a>
            </div>
        </div>
        
        <!-- Main Content -->
        <div class="main-content">
            <div class="top-bar">
                <div class="page-title">
                    <h1>Reports & Analytics</h1>
                    <p>View sales and performance reports</p>
                </div>
            </div>

            <!-- Sales Overview -->
            <div class="dashboard-row">
                <div class="dashboard-card full-width">
                    <div class="card-header">
                        <h2>Sales Overview - Last 30 Days</h2>
                    </div>
                    <div class="card-content">
                        <div class="bar-chart">
                            <div class="bar" style="height: 60%;">
                                <span class="bar-value">₹9k</span>
                                <span class="bar-label">Week 1</span>
                            </div>
                            <div class="bar" style="height: 80%;">
                                <span class="bar-value">₹12k</span>
                                <span class="bar-label">Week 2</span>
                            </div>
                            <div class="bar" style="height: 50%;">
                                <span class="bar-value">₹7.5k</span>
                                <span class="bar-label">Week 3</span>
                            </div>
                            <div class="bar" style="height: 90%;">
                                <span class="bar-value">₹13.5k</span>
                                <span class="bar-label">Week 4</span>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            
            <!-- Sales by Category -->
            <div class="dashboard-row">
                <div class="dashboard-card full-width">
                    <div class="card-header">
                        <h2>Sales by Category</h2>
                    </div>
                    <div class="card-content">
                        <div class="category-stats">
                            <div class="category-item">
                                <div class="category-color" style="background-color: #4e73df;"></div>
                                <div class="category-info">
                                    <h4>Football Jerseys</h4>
                                    <div class="progress-bar">
                                        <div class="progress" style="width: 45%; background-color: #4e73df;"></div>
                                    </div>
                                    <p>45% (₹84,375)</p>
                                </div>
                            </div>
                            <div class="category-item">
                                <div class="category-color" style="background-color: #1cc88a;"></div>
                                <div class="category-info">
                                    <h4>Retro Jersey</h4>
                                    <div class="progress-bar">
                                        <div class="progress" style="width: 30%; background-color: #1cc88a;"></div>
                                    </div>
                                    <p>30% (₹56,250)</p>
                                </div>
                            </div>
                            <div class="category-item">
                                <div class="category-color" style="background-color: #36b9cc;"></div>
                                <div class="category-info">
                                    <h4>Kids Jersey</h4>
                                    <div class="progress-bar">
                                        <div class="progress" style="width: 15%; background-color: #36b9cc;"></div>
                                    </div>
                                    <p>15% (₹28,125)</p>
                                </div>
                            </div>
                            <div class="category-item">
                                <div class="category-color" style="background-color: #f6c23e;"></div>
                                <div class="category-info">
                                    <h4>Football Boots</h4>
                                    <div class="progress-bar">
                                        <div class="progress" style="width: 10%; background-color: #f6c23e;"></div>
                                    </div>
                                    <p>10% (₹18,750)</p>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            
            <!-- Top Selling Products -->
            <div class="dashboard-row">
                <div class="dashboard-card full-width">
                    <div class="card-header">
                        <h2>Top Selling Products</h2>
                    </div>
                    <div class="card-content">
                        <table class="data-table">
                            <thead>
                                <tr>
                                    <th>Product</th>
                                    <th>Category</th>
                                    <th>Units Sold</th>
                                    <th>Revenue</th>
                                    <th>% of Total</th>
                                </tr>
                            </thead>
                            <tbody>
                                <tr>
                                    <td>
                                        <div style="display: flex; align-items: center;">
                                            <img src="${pageContext.request.contextPath}/Images/laliga/barca-home.jpg" alt="Product" class="product-thumbnail">
                                            <span style="margin-left: 10px;">Barcelona Home Jersey 2024/25</span>
                                        </div>
                                    </td>
                                    <td>La Liga</td>
                                    <td>42</td>
                                    <td>₹63,000</td>
                                    <td>33.6%</td>
                                </tr>
                                <tr>
                                    <td>
                                        <div style="display: flex; align-items: center;">
                                            <img src="${pageContext.request.contextPath}/Images/pl/united-home.jpg" alt="Product" class="product-thumbnail">
                                            <span style="margin-left: 10px;">Manchester United Home Jersey 2024/25</span>
                                        </div>
                                    </td>
                                    <td>Premier League</td>
                                    <td>35</td>
                                    <td>₹52,500</td>
                                    <td>28.0%</td>
                                </tr>
                                <tr>
                                    <td>
                                        <div style="display: flex; align-items: center;">
                                            <img src="${pageContext.request.contextPath}/Images/boots/product-1.jpg" alt="Product" class="product-thumbnail">
                                            <span style="margin-left: 10px;">Nivia Airstrike Football Shoes</span>
                                        </div>
                                    </td>
                                    <td>Football Boots</td>
                                    <td>18</td>
                                    <td>₹45,000</td>
                                    <td>24.0%</td>
                                </tr>
                                <tr>
                                    <td>
                                        <div style="display: flex; align-items: center;">
                                            <img src="${pageContext.request.contextPath}/Images/laliga/realmadrid-away.jpg" alt="Product" class="product-thumbnail">
                                            <span style="margin-left: 10px;">Real Madrid Jersey 2024/25</span>
                                        </div>
                                    </td>
                                    <td>La Liga</td>
                                    <td>15</td>
                                    <td>₹22,500</td>
                                    <td>12.0%</td>
                                </tr>
                                <tr>
                                    <td>
                                        <div style="display: flex; align-items: center;">
                                            <img src="${pageContext.request.contextPath}/Images/seriea/acmilan-home.jpg" alt="Product" class="product-thumbnail">
                                            <span style="margin-left: 10px;">AC Milan Home Jersey 2024/25</span>
                                        </div>
                                    </td>
                                    <td>Serie A</td>
                                    <td>10</td>
                                    <td>₹15,000</td>
                                    <td>8.0%</td>
                                </tr>
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
            
            <!-- Customer Acquisition -->
            <div class="dashboard-row">
                <div class="dashboard-card full-width">
                    <div class="card-header">
                        <h2>Customer Acquisition</h2>
                    </div>
                    <div class="card-content">
                        <div class="bar-chart">
                            <div class="bar" style="height: 40%;">
                                <span class="bar-value">12</span>
                                <span class="bar-label">Week 1</span>
                            </div>
                            <div class="bar" style="height: 60%;">
                                <span class="bar-value">18</span>
                                <span class="bar-label">Week 2</span>
                            </div>
                            <div class="bar" style="height: 50%;">
                                <span class="bar-value">15</span>
                                <span class="bar-label">Week 3</span>
                            </div>
                            <div class="bar" style="height: 70%;">
                                <span class="bar-value">21</span>
                                <span class="bar-label">Week 4</span>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</body>
</html>