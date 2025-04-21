<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Users - The Football Vault Admin</title>
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
                <li>
                    <a href="${pageContext.request.contextPath}/Pages/admin/orders.jsp">
                        <i class="fas fa-shopping-cart"></i>
                        <span>Orders</span>
                    </a>
                </li>
                <li class="active">
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
                    <h1>User Management</h1>
                    <p>Manage user accounts and permissions</p>
                </div>
            </div>
            
            <!-- Filter Section -->
            <div class="filter-container">
                <div class="filter-group">
                    <span class="filter-label">Role:</span>
                    <select class="filter-select">
                        <option value="">All Roles</option>
                        <option value="admin">Admin</option>
                        <option value="customer">Customer</option>
                    </select>
                </div>
                <div class="filter-group">
                    <span class="filter-label">Status:</span>
                    <select class="filter-select">
                        <option value="">All Statuses</option>
                        <option value="active">Active</option>
                        <option value="inactive">Inactive</option>
                        <option value="locked">Locked</option>
                    </select>
                </div>
                <div class="filter-group">
                    <span class="filter-label">Search:</span>
                    <input type="text" class="filter-input" placeholder="Name or Email">
                </div>
                <button class="filter-btn">Apply Filters</button>
                <button class="filter-btn reset">Reset</button>
            </div>
            
            <!-- Users List -->
            <div class="dashboard-card full-width">
                <div class="card-header">
                    <h2>Users List</h2>
                    <a href="#" class="add-btn"><i class="fas fa-plus"></i> Add New User</a>
                </div>
                <div class="card-content">
                    <table class="data-table">
                        <thead>
                            <tr>
                                <th>ID</th>
                                <th>Name</th>
                                <th>Email</th>
                                <th>Role</th>
                                <th>Status</th>
                                <th>Registered Date</th>
                                <th>Actions</th>
                            </tr>
                        </thead>
                        <tbody>
                            <tr>
                                <td>#USR-001</td>
                                <td>Admin User</td>
                                <td>admin@footballvault.com</td>
                                <td>
                                    <select class="form-select" style="width: auto; padding: 5px;">
                                        <option value="admin" selected>Admin</option>
                                        <option value="customer">Customer</option>
                                    </select>
                                </td>
                                <td><span class="status-badge" style="background-color: #1cc88a;">Active</span></td>
                                <td>01 Jan, 2025</td>
                                <td>
                                    <a href="#" class="action-btn view-btn"><i class="fas fa-eye"></i></a>
                                    <a href="#" class="action-btn edit-btn"><i class="fas fa-edit"></i></a>
                                </td>
                            </tr>
                            <tr>
                                <td>#USR-002</td>
                                <td>Rahul Sharma</td>
                                <td>rahul@example.com</td>
                                <td>
                                    <select class="form-select" style="width: auto; padding: 5px;">
                                        <option value="admin">Admin</option>
                                        <option value="customer" selected>Customer</option>
                                    </select>
                                </td>
                                <td><span class="status-badge" style="background-color: #1cc88a;">Active</span></td>
                                <td>15 Apr, 2025</td>
                                <td>
                                    <a href="#" class="action-btn view-btn"><i class="fas fa-eye"></i></a>
                                    <a href="#" class="action-btn edit-btn"><i class="fas fa-edit"></i></a>
                                    <a href="#" class="action-btn delete-btn"><i class="fas fa-trash"></i></a>
                                </td>
                            </tr>
                            <tr>
                                <td>#USR-003</td>
                                <td>Priya Patel</td>
                                <td>priya@example.com</td>
                                <td>
                                    <select class="form-select" style="width: auto; padding: 5px;">
                                        <option value="admin">Admin</option>
                                        <option value="customer" selected>Customer</option>
                                    </select>
                                </td>
                                <td><span class="status-badge" style="background-color: #1cc88a;">Active</span></td>
                                <td>16 Apr, 2025</td>
                                <td>
                                    <a href="#" class="action-btn view-btn"><i class="fas fa-eye"></i></a>
                                    <a href="#" class="action-btn edit-btn"><i class="fas fa-edit"></i></a>
                                    <a href="#" class="action-btn delete-btn"><i class="fas fa-trash"></i></a>
                                </td>
                            </tr>
                            <tr>
                                <td>#USR-004</td>
                                <td>Amit Kumar</td>
                                <td>amit@example.com</td>
                                <td>
                                    <select class="form-select" style="width: auto; padding: 5px;">
                                        <option value="admin">Admin</option>
                                        <option value="customer" selected>Customer</option>
                                    </select>
                                </td>
                                <td><span class="status-badge" style="background-color: #1cc88a;">Active</span></td>
                                <td>18 Apr, 2025</td>
                                <td>
                                    <a href="#" class="action-btn view-btn"><i class="fas fa-eye"></i></a>
                                    <a href="#" class="action-btn edit-btn"><i class="fas fa-edit"></i></a>
                                    <a href="#" class="action-btn delete-btn"><i class="fas fa-trash"></i></a>
                                </td>
                            </tr>
                            <tr>
                                <td>#USR-005</td>
                                <td>Neha Singh</td>
                                <td>neha@example.com</td>
                                <td>
                                    <select class="form-select" style="width: auto; padding: 5px;">
                                        <option value="admin">Admin</option>
                                        <option value="customer" selected>Customer</option>
                                    </select>
                                </td>
                                <td><span class="status-badge" style="background-color: #1cc88a;">Active</span></td>
                                <td>19 Apr, 2025</td>
                                <td>
                                    <a href="#" class="action-btn view-btn"><i class="fas fa-eye"></i></a>
                                    <a href="#" class="action-btn edit-btn"><i class="fas fa-edit"></i></a>
                                    <a href="#" class="action-btn delete-btn"><i class="fas fa-trash"></i></a>
                                </td>
                            </tr>
                            <tr>
                                <td>#USR-006</td>
                                <td>Vikram Joshi</td>
                                <td>vikram@example.com</td>
                                <td>
                                    <select class="form-select" style="width: auto; padding: 5px;">
                                        <option value="admin">Admin</option>
                                        <option value="customer" selected>Customer</option>
                                    </select>
                                </td>
                                <td><span class="status-badge" style="background-color: #e74a3b;">Locked</span></td>
                                <td>10 Apr, 2025</td>
                                <td>
                                    <a href="#" class="action-btn view-btn"><i class="fas fa-eye"></i></a>
                                    <a href="#" class="action-btn edit-btn"><i class="fas fa-edit"></i></a>
                                    <a href="#" class="action-btn delete-btn"><i class="fas fa-trash"></i></a>
                                </td>
                            </tr>
                            <tr>
                                <td>#USR-007</td>
                                <td>Ananya Desai</td>
                                <td>ananya@example.com</td>
                                <td>
                                    <select class="form-select" style="width: auto; padding: 5px;">
                                        <option value="admin">Admin</option>
                                        <option value="customer" selected>Customer</option>
                                    </select>
                                </td>
                                <td><span class="status-badge" style="background-color: #1cc88a;">Active</span></td>
                                <td>21 Apr, 2025</td>
                                <td>
                                    <a href="#" class="action-btn view-btn"><i class="fas fa-eye"></i></a>
                                    <a href="#" class="action-btn edit-btn"><i class="fas fa-edit"></i></a>
                                    <a href="#" class="action-btn delete-btn"><i class="fas fa-trash"></i></a>
                                </td>
                            </tr>
                        </tbody>
                    </table>
                </div>
            </div>
            
            <!-- Add/Edit User Form -->
            <div class="form-container">
                <h2 style="margin-bottom: 20px; color: #5a5c69;">Add New User</h2>
                <form>
                    <div class="form-row">
                        <div class="form-group">
                            <label for="user-name">Full Name</label>
                            <input type="text" id="user-name" class="form-control" placeholder="Enter full name">
                        </div>
                        <div class="form-group">
                            <label for="user-email">Email Address</label>
                            <input type="email" id="user-email" class="form-control" placeholder="Enter email address">
                        </div>
                    </div>
                    
                    <div class="form-row">
                        <div class="form-group">
                            <label for="user-password">Password</label>
                            <input type="password" id="user-password" class="form-control" placeholder="Enter password">
                        </div>
                        <div class="form-group">
                            <label for="user-confirm-password">Confirm Password</label>
                            <input type="password" id="user-confirm-password" class="form-control" placeholder="Confirm password">
                        </div>
                    </div>
                    
                    <div class="form-row">
                        <div class="form-group">
                            <label for="user-role">Role</label>
                            <select id="user-role" class="form-select">
                                <option value="">Select Role</option>
                                <option value="admin">Admin</option>
                                <option value="customer">Customer</option>
                            </select>
                        </div>
                        <div class="form-group">
                            <label for="user-status">Status</label>
                            <select id="user-status" class="form-select">
                                <option value="">Select Status</option>
                                <option value="active">Active</option>
                                <option value="inactive">Inactive</option>
                                <option value="locked">Locked</option>
                            </select>
                        </div>
                    </div>
                    
                    <div class="form-group">
                        <label for="user-phone">Phone Number</label>
                        <input type="text" id="user-phone" class="form-control" placeholder="Enter phone number">
                    </div>
                    
                    <div class="form-group">
                        <label for="user-address">Address</label>
                        <textarea id="user-address" class="form-control" rows="3" placeholder="Enter address"></textarea>
                    </div>
                    
                    <div class="form-actions">
                        <button type="button" class="btn btn-secondary">Cancel</button>
                        <button type="submit" class="btn btn-primary">Save User</button>
                    </div>
                </form>
            </div>
        </div>
    </div>
</body>
</html>