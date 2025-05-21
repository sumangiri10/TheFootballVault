<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Dashboard - The Football Vault Admin</title>
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
                <li class="active">
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
                <li>
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
                <a href="${pageContext.request.contextPath}/logout" class="logout-btn">
                    <i class="fas fa-sign-out-alt"></i>
                    <span>Logout</span>
                </a>
            </div>
        </div>
        
        <!-- Main Content -->
        <div class="main-content">
            <div class="top-bar">
                <div class="page-title">
                    <h1>Dashboard</h1>
                    <p>Welcome to The Football Vault Admin Panel</p>
                </div>
            </div>
            
            <!-- Dashboard Summary Widgets -->
            <div class="widget-container">
                <div class="widget">
                    <div class="widget-icon orders">
                        <i class="fas fa-shopping-bag"></i>
                    </div>
                    <div class="widget-content">
                        <h3>Total Orders</h3>
                        <p class="widget-value">125</p>
                        <p class="widget-subtitle">12 new today</p>
                    </div>
                </div>
                
                <div class="widget">
                    <div class="widget-icon revenue">
                        <i class="fas fa-rupee-sign"></i>
                    </div>
                    <div class="widget-content">
                        <h3>Total Revenue</h3>
                        <p class="widget-value">₹187,500</p>
                        <p class="widget-subtitle">₹18,000 today</p>
                    </div>
                </div>
                
                <div class="widget">
                    <div class="widget-icon products">
                        <i class="fas fa-box"></i>
                    </div>
                    <div class="widget-content">
                        <h3>Products</h3>
                        <p class="widget-value">80</p>
                        <p class="widget-subtitle">15 low in stock</p>
                    </div>
                </div>
                
                <div class="widget">
                    <div class="widget-icon users">
                        <i class="fas fa-user"></i>
                    </div>
                    <div class="widget-content">
                        <h3>Users</h3>
                        <p class="widget-value">320</p>
                        <p class="widget-subtitle">8 new today</p>
                    </div>
                </div>
            </div>
            
            <!-- Recent Orders & Activity -->
            <div class="dashboard-row">
                <div class="dashboard-card recent-orders">
                    <div class="card-header">
                        <h2>Recent Orders</h2>
                        <a href="orders.jsp" class="view-all">View All</a>
                    </div>
                    <div class="card-content">
                        <table class="data-table">
                            <thead>
                                <tr>
                                    <th>Order ID</th>
                                    <th>Customer</th>
                                    <th>Date</th>
                                    <th>Status</th>
                                    <th>Amount</th>
                                </tr>
                            </thead>
                            <tbody>
                                <tr>
                                    <td>#ORD-5678</td>
                                    <td>Rahul Giri</td>
                                    <td>21 May, 2025</td>
                                    <td><span class="status-badge pending">Pending</span></td>
                                    <td>₹1,500</td>
                                </tr>
                                <tr>
                                    <td>#ORD-5677</td>
                                    <td>Priya Karki</td>
                                    <td>21 May, 2025</td>
                                    <td><span class="status-badge shipped">Shipped</span></td>
                                    <td>₹3,000</td>
                                </tr>
                                <tr>
                                    <td>#ORD-5676</td>
                                    <td>Amit Prasad</td>
                                    <td>20 May, 2025</td>
                                    <td><span class="status-badge delivered">Delivered</span></td>
                                    <td>₹1,500</td>
                                </tr>
                                <tr>
                                    <td>#ORD-5675</td>
                                    <td>Neha Maharjan</td>
                                    <td>20 May, 2025</td>
                                    <td><span class="status-badge shipped">Shipped</span></td>
                                    <td>₹4,500</td>
                                </tr>
                                <tr>
                                    <td>#ORD-5674</td>
                                    <td>Vikram Joshi</td>
                                    <td>19 May, 2025</td>
                                    <td><span class="status-badge delivered">Delivered</span></td>
                                    <td>₹1,500</td>
                                </tr>
                            </tbody>
                        </table>
                    </div>
                </div>
                
                <div class="dashboard-card low-stock">
                    <div class="card-header">
                        <h2>Low Stock Products</h2>
                        <a href="product.jsp" class="view-all">View All</a>
                    </div>
                    <div class="card-content">
                        <ul class="low-stock-list">
                            <li>
                                <div class="product-info">
                                    <img src="${pageContext.request.contextPath}/Images/pl/united-away.jpg" alt="Manchester United Home Jersey">
                                    <div>
                                        <h4>Manchester United Away Jersey 2024/25</h4>
                                        <p>Size: L - Only 2 left</p>
                                    </div>
                                </div>
                                <a href="product.jsp" class="restock-btn">Restock</a>
                            </li>
                            <li>
                                <div class="product-info">
                                    <img src="${pageContext.request.contextPath}/Images/pl/arsenal-home.jpg" alt="Arsenal Away Jersey">
                                    <div>
                                        <h4>Arsenal Home Jersey 2024/25</h4>
                                        <p>Size: XL - Only 3 left</p>
                                    </div>
                                </div>
                                <a href="product.jsp" class="restock-btn">Restock</a>
                            </li>
                            <li>
                                <div class="product-info">
                                    <img src="${pageContext.request.contextPath}/Images/laliga/barca-home.jpg" alt="Barcelona Home Jersey">
                                    <div>
                                        <h4>Barcelona Home Jersey 2024/25</h4>
                                        <p>Size: M - Only 1 left</p>
                                    </div>
                                </div>
                                <a href="product.jsp" class="restock-btn">Restock</a>
                            </li>
                        </ul>
                    </div>
                </div>
            </div>
            
            <!-- Recent Activity -->
            <div class="dashboard-row">
                <div class="dashboard-card full-width">
                    <div class="card-header">
                        <h2>Recent Activity</h2>
                    </div>
                    <div class="card-content">
                        <ul class="activity-list">
                            <li>
                                <div class="activity-icon product-added">
                                    <i class="fas fa-plus"></i>
                                </div>
                                <div class="activity-details">
                                    <h4>New product added</h4>
                                    <p>Liverpool Away Jersey 2024/25</p>
                                    <span class="activity-time">2 hours ago</span>
                                </div>
                            </li>
                            <li>
                                <div class="activity-icon order-placed">
                                    <i class="fas fa-shopping-cart"></i>
                                </div>
                                <div class="activity-details">
                                    <h4>New order placed</h4>
                                    <p>Order #ORD-5678 by Rahul Sharma</p>
                                    <span class="activity-time">3 hours ago</span>
                                </div>
                            </li>
                            <li>
                                <div class="activity-icon user-registered">
                                    <i class="fas fa-user-plus"></i>
                                </div>
                                <div class="activity-details">
                                    <h4>New user registered</h4>
                                    <p>Ananya Desai (ananya@example.com)</p>
                                    <span class="activity-time">5 hours ago</span>
                                </div>
                            </li>
                            <li>
                                <div class="activity-icon order-delivered">
                                    <i class="fas fa-truck"></i>
                                </div>
                                <div class="activity-details">
                                    <h4>Order delivered</h4>
                                    <p>Order #ORD-5670 to Ravi Verma</p>
                                    <span class="activity-time">Yesterday</span>
                                </div>
                            </li>
                            <li>
                                <div class="activity-icon product-updated">
                                    <i class="fas fa-edit"></i>
                                </div>
                                <div class="activity-details">
                                    <h4>Product updated</h4>
                                    <p>Stock updated for Manchester City Home Jersey</p>
                                    <span class="activity-time">Yesterday</span>
                                </div>
                            </li>
                        </ul>
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
        </div>
    </div>
</body>
</html>