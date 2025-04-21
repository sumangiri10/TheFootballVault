<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Settings - The Football Vault Admin</title>
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
                    <a href="${pageContext.request.contextPath}/Pages/admin/products.jsp">
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
                <li class="active">
                    <a href="${pageContext.request.contextPath}/Pages/admin/setting.jsp">
                        <i class="fas fa-cog"></i>
                        <span>Settings</span>
                    </a>
                </li>
            </ul>
            
            <div class="sidebar-footer">
                <a href="${pageContext.request.contextPath}/Pages/acount.jsp" class="logout-btn">
                    <i class="fas fa-sign-out-alt"></i>
                    <span>Logout</span>
                </a>
            </div>
        </div>
        
        <!-- Main Content -->
        <div class="main-content">
            <div class="top-bar">
                <div class="page-title">
                    <h1>Settings</h1>
                    <p>Configure store settings and preferences</p>
                </div>
            </div>
            
            <!-- Store Information -->
            <div class="form-container">
                <div class="settings-section">
                    <h3>Store Information</h3>
                    <form>
                        <div class="form-row">
                            <div class="form-group">
                                <label for="store-name">Store Name</label>
                                <input type="text" id="store-name" class="form-control" value="The Football Vault">
                            </div>
                            <div class="form-group">
                                <label for="store-email">Contact Email</label>
                                <input type="email" id="store-email" class="form-control" value="contact@footballvault.com">
                            </div>
                        </div>
                        
                        <div class="form-row">
                            <div class="form-group">
                                <label for="store-phone">Contact Phone</label>
                                <input type="text" id="store-phone" class="form-control" value="+91 9876543210">
                            </div>
                            <div class="form-group">
                                <label for="store-currency">Default Currency</label>
                                <select id="store-currency" class="form-select">
                                    <option value="INR" selected>Indian Rupee (₹)</option>
                                    <option value="USD">US Dollar ($)</option>
                                    <option value="EUR">Euro (€)</option>
                                    <option value="GBP">British Pound (£)</option>
                                </select>
                            </div>
                        </div>
                        
                        <div class="form-group">
                            <label for="store-address">Store Address</label>
                            <textarea id="store-address" class="form-control" rows="3">123 Main Street, Mumbai, Maharashtra 400001, India</textarea>
                        </div>
                        
                        <div class="form-actions">
                            <button type="submit" class="btn btn-primary">Save Changes</button>
                        </div>
                    </form>
                </div>
                
                <!-- Payment Settings -->
                <div class="settings-section">
                    <h3>Payment Settings</h3>
                    <form>
                        <div class="form-group">
                            <label for="payment-gateway">Default Payment Gateway</label>
                            <select id="payment-gateway" class="form-select">
                                <option value="razorpay" selected>Razorpay</option>
                                <option value="paytm">Paytm</option>
                                <option value="paypal">PayPal</option>
                                <option value="stripe">Stripe</option>
                            </select>
                        </div>
                        
                        <div class="form-row">
                            <div class="form-group">
                                <label for="api-key">API Key</label>
                                <input type="text" id="api-key" class="form-control" value="rzp_test_1234567890abcdef">
                            </div>
                            <div class="form-group">
                                <label for="api-secret">API Secret</label>
                                <input type="password" id="api-secret" class="form-control" value="••••••••••••••••">
                            </div>
                        </div>
                        
                        <div class="form-group">
                            <label>Payment Mode</label>
                            <div style="display: flex; gap: 15px; margin-top: 10px;">
                                <div style="display: flex; align-items: center;">
                                    <input type="radio" id="test-mode" name="payment-mode" style="margin-right: 5px;" checked>
                                    <label for="test-mode">Test Mode</label>
                                </div>
                                <div style="display: flex; align-items: center;">
                                    <input type="radio" id="live-mode" name="payment-mode" style="margin-right: 5px;">
                                    <label for="live-mode">Live Mode</label>
                                </div>
                            </div>
                        </div>
                        
                        <div class="form-actions">
                            <button type="submit" class="btn btn-primary">Save Changes</button>
                        </div>
                    </form>
                </div>
                
                <!-- Shipping Settings -->
                <div class="settings-section">
                    <h3>Shipping Settings</h3>
                    <form>
                        <div class="form-group">
                            <label for="shipping-method">Default Shipping Method</label>
                            <select id="shipping-method" class="form-select">
                                <option value="flat-rate" selected>Flat Rate</option>
                                <option value="free-shipping">Free Shipping</option>
                                <option value="weight-based">Weight Based</option>
                            </select>
                        </div>
                        
                        <div class="form-row">
                            <div class="form-group">
                                <label for="shipping-cost">Flat Rate Cost (₹)</label>
                                <input type="text" id="shipping-cost" class="form-control" value="100">
                            </div>
                            <div class="form-group">
                                <label for="free-shipping-threshold">Free Shipping Threshold (₹)</label>
                                <input type="text" id="free-shipping-threshold" class="form-control" value="2000">
                            </div>
                        </div>
                        
                        <div class="form-group">
                            <label>Shipping Regions</label>
                            <div style="display: flex; gap: 15px; margin-top: 10px;">
                                <div style="display: flex; align-items: center;">
                                    <input type="checkbox" id="region-north" style="margin-right: 5px;" checked>
                                    <label for="region-north">North India</label>
                                </div>
                                <div style="display: flex; align-items: center;">
                                    <input type="checkbox" id="region-south" style="margin-right: 5px;" checked>
                                    <label for="region-south">South India</label>
                                </div>
                                <div style="display: flex; align-items: center;">
                                    <input type="checkbox" id="region-east" style="margin-right: 5px;" checked>
                                    <label for="region-east">East India</label>
                                </div>
                                <div style="display: flex; align-items: center;">
                                    <input type="checkbox" id="region-west" style="margin-right: 5px;" checked>
                                    <label for="region-west">West India</label>
                                </div>
                            </div>
                        </div>
                        
                        <div class="form-actions">
                            <button type="submit" class="btn btn-primary">Save Changes</button>
                        </div>
                    </form>
                </div>
                
                <!-- Email Settings -->
                <div class="settings-section">
                    <h3>Email Settings</h3>
                    <form>
                        <div class="form-row">
                            <div class="form-group">
                                <label for="smtp-host">SMTP Host</label>
                                <input type="text" id="smtp-host" class="form-control" value="smtp.gmail.com">
                            </div>
                            <div class="form-group">
                                <label for="smtp-port">SMTP Port</label>
                                <input type="text" id="smtp-port" class="form-control" value="587">
                            </div>
                        </div>
                        
                        <div class="form-row">
                            <div class="form-group">
                                <label for="smtp-username">SMTP Username</label>
                                <input type="text" id="smtp-username" class="form-control" value="notifications@footballvault.com">
                            </div>
                            <div class="form-group">
                                <label for="smtp-password">SMTP Password</label>
                                <input type="password" id="smtp-password" class="form-control" value="••••••••••••••••">
                            </div>
                        </div>
                        
                        <div class="form-group">
                            <label>Email Notifications</label>
                            <div style="display: flex; gap: 15px; margin-top: 10px; flex-wrap: wrap;">
                                <div style="display: flex; align-items: center; width: 45%;">
                                    <input type="checkbox" id="notify-new-order" style="margin-right: 5px;" checked>
                                    <label for="notify-new-order">New Order</label>
                                </div>
                                <div style="display: flex; align-items: center; width: 45%;">
                                    <input type="checkbox" id="notify-order-status" style="margin-right: 5px;" checked>
                                    <label for="notify-order-status">Order Status Change</label>
                                </div>
                                <div style="display: flex; align-items: center; width: 45%;">
                                    <input type="checkbox" id="notify-new-user" style="margin-right: 5px;" checked>
                                    <label for="notify-new-user">New User Registration</label>
                                </div>
                                <div style="display: flex; align-items: center; width: 45%;">
                                    <input type="checkbox" id="notify-low-stock" style="margin-right: 5px;" checked>
                                    <label for="notify-low-stock">Low Stock Alert</label>
                                </div>
                            </div>
                        </div>
                        
                        <div class="form-actions">
                            <button type="submit" class="btn btn-primary">Save Changes</button>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
</body>
</html>