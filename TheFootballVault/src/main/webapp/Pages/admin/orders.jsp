<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Orders - The Football Vault Admin</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/CSS/admin.css" />
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
                <li class="active">
                    <a href="${pageContext.request.contextPath}/Pages/admin/orders.jsp">
                        <i class="fas fa-shopping-cart"></i>
                        <span>Orders</span>
                    </a>
                </li>
                <li>
                    <a href="${pageContext.request.contextPath}/Pages/admin/users.jsp">
                        <i class="fas fa-users"></i>
                        <span>Users</span>
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
                    <h1>Order Management</h1>
                    <p>Manage customer orders</p>
                </div>
            </div>
            
            <!-- Filter Section -->
            <div class="filter-container">
                <div class="filter-group">
                    <span class="filter-label">Order Status:</span>
                    <select class="filter-select">
                        <option value="">All Statuses</option>
                        <option value="pending">Pending</option>
                        <option value="shipped">Shipped</option>
                        <option value="delivered">Delivered</option>
                        <option value="cancelled">Cancelled</option>
                    </select>
                </div>
                <div class="filter-group">
                    <span class="filter-label">Date Range:</span>
                    <input type="date" class="filter-input">
                    <span>to</span>
                    <input type="date" class="filter-input">
                </div>
                <div class="filter-group">
                    <span class="filter-label">Order ID:</span>
                    <input type="text" class="filter-input" placeholder="Search by ID">
                </div>
                <button class="filter-btn">Apply Filters</button>
                <button class="filter-btn reset">Reset</button>
            </div>
            
            <!-- Orders List -->
            <div class="dashboard-card full-width">
                <div class="card-header">
                    <h2>Orders List</h2>
                </div>
                <div class="card-content">
                    <table class="data-table">
                        <thead>
                            <tr>
                                <th>Order ID</th>
                                <th>Customer</th>
                                <th>Date</th>
                                <th>Status</th>
                                <th>Items</th>
                                <th>Total Amount</th>
                                <th>Actions</th>
                            </tr>
                        </thead>
                        <tbody>
                            <tr>
                                <td>#ORD-5678</td>
                                <td>Rahul Sharma</td>
                                <td>21 Apr, 2025</td>
                                <td>
                                    <select class="form-select" style="width: auto; padding: 5px;">
                                        <option value="pending" selected>Pending</option>
                                        <option value="shipped">Shipped</option>
                                        <option value="delivered">Delivered</option>
                                        <option value="cancelled">Cancelled</option>
                                    </select>
                                </td>
                                <td>1</td>
                                <td>₹1,500</td>
                                <td>
                                    <a href="#" class="action-btn view-btn"><i class="fas fa-eye"></i></a>
                                    <a href="#" class="action-btn edit-btn"><i class="fas fa-edit"></i></a>
                                </td>
                            </tr>
                            <tr>
                                <td>#ORD-5677</td>
                                <td>Priya Patel</td>
                                <td>21 Apr, 2025</td>
                                <td>
                                    <select class="form-select" style="width: auto; padding: 5px;">
                                        <option value="pending">Pending</option>
                                        <option value="shipped" selected>Shipped</option>
                                        <option value="delivered">Delivered</option>
                                        <option value="cancelled">Cancelled</option>
                                    </select>
                                </td>
                                <td>2</td>
                                <td>₹3,000</td>
                                <td>
                                    <a href="#" class="action-btn view-btn"><i class="fas fa-eye"></i></a>
                                    <a href="#" class="action-btn edit-btn"><i class="fas fa-edit"></i></a>
                                </td>
                            </tr>
                            <tr>
                                <td>#ORD-5676</td>
                                <td>Amit Kumar</td>
                                <td>20 Apr, 2025</td>
                                <td>
                                    <select class="form-select" style="width: auto; padding: 5px;">
                                        <option value="pending">Pending</option>
                                        <option value="shipped">Shipped</option>
                                        <option value="delivered" selected>Delivered</option>
                                        <option value="cancelled">Cancelled</option>
                                    </select>
                                </td>
                                <td>1</td>
                                <td>₹1,500</td>
                                <td>
                                    <a href="#" class="action-btn view-btn"><i class="fas fa-eye"></i></a>
                                    <a href="#" class="action-btn edit-btn"><i class="fas fa-edit"></i></a>
                                </td>
                            </tr>
                            <tr>
                                <td>#ORD-5675</td>
                                <td>Neha Singh</td>
                                <td>20 Apr, 2025</td>
                                <td>
                                    <select class="form-select" style="width: auto; padding: 5px;">
                                        <option value="pending">Pending</option>
                                        <option value="shipped" selected>Shipped</option>
                                        <option value="delivered">Delivered</option>
                                        <option value="cancelled">Cancelled</option>
                                    </select>
                                </td>
                                <td>3</td>
                                <td>₹4,500</td>
                                <td>
                                    <a href="#" class="action-btn view-btn"><i class="fas fa-eye"></i></a>
                                    <a href="#" class="action-btn edit-btn"><i class="fas fa-edit"></i></a>
                                </td>
                            </tr>
                            <tr>
                                <td>#ORD-5674</td>
                                <td>Vikram Joshi</td>
                                <td>19 Apr, 2025</td>
                                <td>
                                    <select class="form-select" style="width: auto; padding: 5px;">
                                        <option value="pending">Pending</option>
                                        <option value="shipped">Shipped</option>
                                        <option value="delivered" selected>Delivered</option>
                                        <option value="cancelled">Cancelled</option>
                                    </select>
                                </td>
                                <td>1</td>
                                <td>₹1,500</td>
                                <td>
                                    <a href="#" class="action-btn view-btn"><i class="fas fa-eye"></i></a>
                                    <a href="#" class="action-btn edit-btn"><i class="fas fa-edit"></i></a>
                                </td>
                            </tr>
                            <tr>
                                <td>#ORD-5673</td>
                                <td>Ananya Desai</td>
                                <td>19 Apr, 2025</td>
                                <td>
                                    <select class="form-select" style="width: auto; padding: 5px;">
                                        <option value="pending">Pending</option>
                                        <option value="shipped">Shipped</option>
                                        <option value="delivered" selected>Delivered</option>
                                        <option value="cancelled">Cancelled</option>
                                    </select>
                                </td>
                                <td>2</td>
                                <td>₹3,000</td>
                                <td>
                                    <a href="#" class="action-btn view-btn"><i class="fas fa-eye"></i></a>
                                    <a href="#" class="action-btn edit-btn"><i class="fas fa-edit"></i></a>
                                </td>
                            </tr>
                            <tr>
                                <td>#ORD-5672</td>
                                <td>Ravi Verma</td>
                                <td>18 Apr, 2025</td>
                                <td>
                                    <select class="form-select" style="width: auto; padding: 5px;">
                                        <option value="pending">Pending</option>
                                        <option value="shipped">Shipped</option>
                                        <option value="delivered" selected>Delivered</option>
                                        <option value="cancelled">Cancelled</option>
                                    </select>
                                </td>
                                <td>1</td>
                                <td>₹1,500</td>
                                <td>
                                    <a href="#" class="action-btn view-btn"><i class="fas fa-eye"></i></a>
                                    <a href="#" class="action-btn edit-btn"><i class="fas fa-edit"></i></a>
                                </td>
                            </tr>
                            <tr>
                                <td>#ORD-5671</td>
                                <td>Sanjay Gupta</td>
                                <td>18 Apr, 2025</td>
                                <td>
                                    <select class="form-select" style="width: auto; padding: 5px;">
                                        <option value="pending">Pending</option>
                                        <option value="shipped" selected>Shipped</option>
                                        <option value="delivered">Delivered</option>
                                        <option value="cancelled">Cancelled</option>
                                    </select>
                                </td>
                                <td>2</td>
                                <td>₹3,000</td>
                                <td>
                                    <a href="#" class="action-btn view-btn"><i class="fas fa-eye"></i></a>
                                    <a href="#" class="action-btn edit-btn"><i class="fas fa-edit"></i></a>
                                </td>
                            </tr>
                        </tbody>
                    </table>
                </div>
            </div>
            
            <!-- Order Details -->
            <div class="form-container">
                <h2 style="margin-bottom: 20px; color: #5a5c69;">Order Details - #ORD-5678</h2>
                
                <div class="form-row" style="margin-bottom: 30px;">
                    <div style="flex: 1;">
                        <h3 style="color: #5a5c69; font-size: 16px; margin-bottom: 10px;">Customer Information</h3>
                        <p><strong>Name:</strong> Rahul Sharma</p>
                        <p><strong>Email:</strong> rahul@example.com</p>
                        <p><strong>Phone:</strong> +91 9876543210</p>
                    </div>
                    <div style="flex: 1;">
                        <h3 style="color: #5a5c69; font-size: 16px; margin-bottom: 10px;">Shipping Address</h3>
                        <p>123 Main Street</p>
                        <p>Andheri West</p>
                        <p>Mumbai, Maharashtra 400053</p>
                        <p>India</p>
                    </div>
                    <div style="flex: 1;">
                        <h3 style="color: #5a5c69; font-size: 16px; margin-bottom: 10px;">Order Summary</h3>
                        <p><strong>Order Date:</strong> 21 Apr, 2025</p>
                        <p><strong>Order Status:</strong> Pending</p>
                        <p><strong>Payment Method:</strong> Credit Card</p>
                        <p><strong>Payment Status:</strong> Paid</p>
                    </div>
                </div>
                
                <h3 style="color: #5a5c69; font-size: 16px; margin-bottom: 15px;">Order Items</h3>
                <table class="data-table" style="margin-bottom: 30px;">
                    <thead>
                        <tr>
                            <th>Product</th>
                            <th>Size</th>
                            <th>Price</th>
                            <th>Quantity</th>
                            <th>Total</th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <td>
                                <div style="display: flex; align-items: center;">
                                    <img src="/placeholder.svg?height=40&width=40" alt="Product" style="margin-right: 10px; border-radius: 4px;">
                                    <span>Manchester United Home Jersey 2024/25</span>
                                </div>
                            </td>
                            <td>L</td>
                            <td>₹1,500</td>
                            <td>1</td>
                            <td>₹1,500</td>
                        </tr>
                    </tbody>
                    <tfoot>
                        <tr>
                            <td colspan="4" style="text-align: right;"><strong>Subtotal:</strong></td>
                            <td>₹1,500</td>
                        </tr>
                        <tr>
                            <td colspan="4" style="text-align: right;"><strong>Shipping:</strong></td>
                            <td>₹0</td>
                        </tr>
                        <tr>
                            <td colspan="4" style="text-align: right;"><strong>Total:</strong></td>
                            <td style="font-weight: 700; color: #4e73df;">₹1,500</td>
                        </tr>
                    </tfoot>
                </table>
                
                <div class="form-group">
                    <label for="order-status">Update Order Status</label>
                    <select id="order-status" class="form-select">
                        <option value="pending" selected>Pending</option>
                        <option value="shipped">Shipped</option>
                        <option value="delivered">Delivered</option>
                        <option value="cancelled">Cancelled</option>
                    </select>
                </div>
                
                <div class="form-group">
                    <label for="tracking-number">Tracking Number</label>
                    <input type="text" id="tracking-number" class="form-control" placeholder="Enter tracking number">
                </div>
                
                <div class="form-group">
                    <label for="admin-notes">Admin Notes</label>
                    <textarea id="admin-notes" class="form-control" rows="3" placeholder="Add notes about this order"></textarea>
                </div>
                
                <div class="form-actions">
                    <button type="button" class="btn btn-danger">Cancel Order</button>
                    <button type="button" class="btn btn-secondary">Print Invoice</button>
                    <button type="submit" class="btn btn-primary">Update Order</button>
                </div>
            </div>
        </div>
    </div>
</body>
</html>