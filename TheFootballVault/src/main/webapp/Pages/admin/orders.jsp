<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ page import="java.util.List" %>
<%@ page import="com.thefootballvault.model.Order" %>
<%@ page import="com.thefootballvault.model.OrderProduct" %>
<% 
    if (request.getAttribute("orders") == null) {
        request.getRequestDispatcher("/admin/order").forward(request, response);
        return;
    }
    String selectedOrderId = request.getParameter("id");
    String success = request.getParameter("success");
%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Orders - The Football Vault Admin</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/CSS/admin.css" />
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css" />
    <style>
        html {
            scroll-behavior: smooth;
        }
        .success-message {
            background-color: #d4edda;
            color: #155724;
            padding: 15px;
            margin-bottom: 20px;
            border: 1px solid #c3e6cb;
            border-radius: 4px;
            display: flex;
            align-items: center;
            gap: 10px;
            font-size: 16px;
        }
        .success-message i {
            color: #28a745;
        }
        .status-badge {
            padding: 5px 10px;
            border-radius: 12px;
            font-size: 14px;
            font-weight: 500;
            text-transform: capitalize;
            display: inline-block;
        }
        .status-pending {
            background-color: #fff3cd;
            color: #856404;
        }
        .status-shipped {
            background-color: #cce5ff;
            color: #004085;
        }
        .status-delivered {
            background-color: #d4edda;
            color: #155724;
        }
    </style>
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
            
            <!-- Success Message -->
            <% if ("update".equals(success)) { %>
            <div class="success-message">
                <i class="fas fa-check-circle"></i>
                Order status updated successfully!
            </div>
            <% } %>
            
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
                            <% 
                                List<Order> orders = (List<Order>) request.getAttribute("orders");
                                if (orders != null && !orders.isEmpty()) {
                                    for (Order order : orders) {
                                        String orderId = String.valueOf(order.getOrderId());
                                        String status = order.getOrderStatus() != null ? order.getOrderStatus().toLowerCase() : "unknown";
                                        String statusClass = "status-" + status;
                            %>
                            <tr>
                                <td>#<%= orderId %></td>
                                <td><%= order.getCustomerName() != null ? order.getCustomerName() : "Unknown" %></td>
                                <td><%= order.getOrderDate() %></td>
                                <td><span class="status-badge <%= statusClass %>"><%= status %></span></td>
                                <td><%= order.getItemCount() %></td>
                                <td>₹<%= String.format("%.2f", order.getTotalAmount()) %></td>
                                <td>
                                    <a href="${pageContext.request.contextPath}/admin/order?action=edit&id=<%= orderId %>#order-<%= orderId %>" class="action-btn edit-btn"><i class="fas fa-edit"></i></a>
                                </td>
                            </tr>
                            <% 
                                    }
                                } else {
                            %>
                            <tr>
                                <td colspan="7">No orders found.</td>
                            </tr>
                            <% 
                                }
                            %>
                        </tbody>
                    </table>
                </div>
            </div>
            
            <!-- Order Details and Update Form -->
            <% 
                Order selectedOrder = (Order) request.getAttribute("selectedOrder");
                List<OrderProduct> orderItems = (List<OrderProduct>) request.getAttribute("orderItems");
                if (selectedOrder != null && orderItems != null) {
            %>
            <div class="form-container" id="order-<%= selectedOrder.getOrderId() %>" style="margin-top: 20px;">
                <h2 style="margin-bottom: 20px; color: #5a5c69;">Order Details - #<%= selectedOrder.getOrderId() %></h2>
                
                <div class="form-row" style="margin-bottom: 30px;">
                    <div style="flex: 1;">
                        <h3 style="color: #5a5c69; font-size: 16px; margin-bottom: 10px;">Customer Information</h3>
                        <p><strong>Name:</strong> <%= selectedOrder.getCustomerName() != null ? selectedOrder.getCustomerName() : "Unknown" %></p>
                        <p><strong>Email:</strong> <%= selectedOrder.getCustomerEmail() != null ? selectedOrder.getCustomerEmail() : "N/A" %></p>
                        <p><strong>Phone:</strong> <%= selectedOrder.getCustomerPhone() != null ? selectedOrder.getCustomerPhone() : "N/A" %></p>
                    </div>
                    <div style="flex: 1;">
                        <h3 style="color: #5a5c69; font-size: 16px; margin-bottom: 10px;">Shipping Address</h3>
                        <p><%= selectedOrder.getShippingAddress() != null ? selectedOrder.getShippingAddress() : "N/A" %></p>
                    </div>
                    <div style="flex: 1;">
                        <h3 style="color: #5a5c69; font-size: 16px; margin-bottom: 10px;">Order Summary</h3>
                        <p><strong>Order Date:</strong> <%= selectedOrder.getOrderDate() %></p>
                        <p><strong>Order Status:</strong> <%= selectedOrder.getOrderStatus() != null ? selectedOrder.getOrderStatus() : "Unknown" %></p>
                        <p><strong>Payment Method:</strong> <%= selectedOrder.getPaymentMethod() != null ? selectedOrder.getPaymentMethod() : "N/A" %></p>
                        <p><strong>Payment Status:</strong> <%= selectedOrder.getPaymentStatus() != null ? selectedOrder.getPaymentStatus() : "N/A" %></p>
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
                        <% 
                            if (orderItems != null && !orderItems.isEmpty()) {
                                for (OrderProduct item : orderItems) {
                        %>
                        <tr>
                            <td>
                                <div style="display: flex; align-items: center;">
                                    <img src="${pageContext.request.contextPath}/<%= item.getImagePath() != null ? item.getImagePath() : "Images/default.jpg" %>" alt="Product" style="margin-right: 10px; border-radius: 4px;">
                                    <span><%= item.getProductName() != null ? item.getProductName() : "Unknown" %></span>
                                </div>
                            </td>
                            <td><%= item.getSize() != null ? item.getSize() : "N/A" %></td>
                            <td>₹<%= String.format("%.2f", item.getPrice()) %></td>
                            <td><%= item.getQuantity() %></td>
                            <td>₹<%= String.format("%.2f", item.getTotal()) %></td>
                        </tr>
                        <% 
                                }
                            } else {
                        %>
                        <tr>
                            <td colspan="5">No items found for this order.</td>
                        </tr>
                        <% 
                            }
                        %>
                    </tbody>
                    <tfoot>
                        <tr>
                            <td colspan="4" style="text-align: right;"><strong>Subtotal:</strong></td>
                            <td>₹<%= String.format("%.2f", selectedOrder.getSubtotal()) %></td>
                        </tr>
                        <tr>
                            <td colspan="4" style="text-align: right;"><strong>Shipping:</strong></td>
                            <td>₹50.00</td>
                        </tr>
                        <tr>
                            <td colspan="4" style="text-align: right;"><strong>Tax:</strong></td>
                            <td>₹<%= String.format("%.2f", selectedOrder.getTax()) %></td>
                        </tr>
                        <tr>
                            <td colspan="4" style="text-align: right;"><strong>Total:</strong></td>
                            <td style="font-weight: 700; color: #4e73df;">₹<%= String.format("%.2f", selectedOrder.getTotalAmount()) %></td>
                        </tr>
                    </tfoot>
                </table>
                
                <form action="${pageContext.request.contextPath}/admin/order" method="post">
                    <input type="hidden" name="action" value="update">
                    <input type="hidden" name="order-id" value="<%= selectedOrder.getOrderId() %>">
                    <div class="form-group">
                        <label for="order-status">Update Order Status</label>
                        <select id="order-status" name="order-status" class="form-select" required>
                            <option value="pending" <%= "pending".equals(selectedOrder.getOrderStatus()) ? "selected" : "" %>>Pending</option>
                            <option value="shipped" <%= "shipped".equals(selectedOrder.getOrderStatus()) ? "selected" : "" %>>Shipped</option>
                            <option value="delivered" <%= "delivered".equals(selectedOrder.getOrderStatus()) ? "selected" : "" %>>Delivered</option>
                        </select>
                    </div>
                    
                    <div class="form-group">
                        <label for="tracking-number">Tracking Number</label>
                        <input type="text" id="tracking-number" name="tracking-number" class="form-control" value="" placeholder="Enter tracking number" disabled>
                    </div>
                    
                    <div class="form-group">
                        <label for="admin-notes">Admin Notes</label>
                        <textarea id="admin-notes" name="admin-notes" class="form-control" rows="3" placeholder="Add notes about this order" disabled></textarea>
                    </div>
                    
                    <div class="form-actions">
                        <button type="button" class="btn btn-secondary" onclick="window.location.href='${pageContext.request.contextPath}/Pages/admin/orders.jsp'">Cancel</button>
                        <button type="submit" class="btn btn-primary">Update Order</button>
                    </div>
                </form>
            </div>
            <% 
                } else if (selectedOrderId != null && selectedOrder == null) {
            %>
            <div class="form-container" id="order-<%= selectedOrderId %>" style="margin-top: 20px;">
                <p style="color: #dc3545;">Order #<%= selectedOrderId %> not found.</p>
            </div>
            <% 
                }
            %>
        </div>
    </div>
</body>
</html>