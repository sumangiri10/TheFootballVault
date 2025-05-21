<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ page import="java.util.List" %>
<%@ page import="com.thefootballvault.model.Product" %>
<% 
    // Ensuring the servlet is called to load products
    String action = request.getParameter("action");
    if (request.getAttribute("products") == null && !"edit".equals(action)) {
        request.getRequestDispatcher("/admin/product").forward(request, response);
        return;
    }
%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Products - The Football Vault Admin</title>
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
                <li class="active">
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
                    <h1>Product Management</h1>
                    <p>Manage your product inventory</p>
                </div>
            </div>
            
            <!-- Success Message -->
            <% 
                String success = request.getParameter("success");
                if ("create".equals(success)) {
            %>
                <div style="color: green; margin-bottom: 20px; padding: 10px; background-color: #e6ffe6; border: 1px solid #28a745;">
                    Product created successfully!
                </div>
            <% 
                }
            %>
            
            <!-- Product List -->
            <div class="dashboard-card full-width">
                <div class="card-header">
                    <h2>Product List</h2>
                    <a href="#add-product-form" class="add-btn"><i class="fas fa-plus"></i> Add New Product</a>
                </div>
                <div class="card-content">
                    <table class="data-table">
                        <thead>
                            <tr>
                                <th>ID</th>
                                <th>Image</th>
                                <th>Product Name</th>
                                <th>Category</th>
                                <th>Price</th>
                                <th>Stock</th>
                                <th>Actions</th>
                            </tr>
                        </thead>
                        <tbody>
                            <% 
                                List<Product> products = (List<Product>) request.getAttribute("products");
                                if (products != null && !products.isEmpty()) {
                                    for (Product product : products) {
                            %>
                            <tr>
                                <td><%= product.getProductId() %></td>
                                <td><% if (product.getImagePath() != null) { %><img src="${pageContext.request.contextPath}/<%= product.getImagePath() %>" alt="Product" class="product-thumbnail"><% } %></td>
                                <td><%= product.getProductName() %></td>
                                <td><%= product.getCategory() %></td>
                                <td>₹<%= String.format("%.2f", product.getPrice()) %></td>
                                <td><%= product.getStock() %></td>
                                <td>
                                    <a href="${pageContext.request.contextPath}/admin/product?action=edit&id=<%= product.getProductId() %>#add-product-form" class="action-btn edit-btn"><i class="fas fa-edit"></i></a>
                                    <a href="${pageContext.request.contextPath}/admin/product?action=delete&id=<%= product.getProductId() %>" class="action-btn delete-btn" onclick="return confirm('Are you sure you want to delete this product?');"><i class="fas fa-trash"></i></a>
                                </td>
                            </tr>
                            <% 
                                    }
                                } else {
                            %>
                            <tr>
                                <td colspan="7">No products found.</td>
                            </tr>
                            <% 
                                }
                            %>
                        </tbody>
                    </table>
                </div>
            </div>
            
            <!-- Add/Edit Product Form -->
            <section id="add-product-form">
                <div class="form-container">
                    <h2><%= request.getAttribute("product") != null ? "Edit Product" : "Add New Product" %></h2>
                    <form action="${pageContext.request.contextPath}/admin/product" method="post" enctype="multipart/form-data">
                        <input type="hidden" name="action" value="<%= request.getAttribute("product") != null ? "update" : "create" %>">
                        <input type="hidden" name="product-id" value="<%= request.getAttribute("product") != null ? ((Product) request.getAttribute("product")).getProductId() : "" %>">
                        <div class="form-row">
                            <div class="form-group">
                                <label for="product-name">Product Name</label>
                                <input type="text" id="product-name" name="product-name" class="form-control" value="<%= request.getAttribute("product") != null ? ((Product) request.getAttribute("product")).getProductName() : "" %>" required>
                            </div>
                            <div class="form-group">
                                <label for="product-category">Category</label>
                                <select id="product-category" name="product-category" class="form-select" required>
                                    <option value="">Select Category</option>
                                    <option value="premier-league" <%= request.getAttribute("product") != null && "premier-league".equals(((Product) request.getAttribute("product")).getCategory()) ? "selected" : "" %>>Premier League</option>
                                    <option value="la-liga" <%= request.getAttribute("product") != null && "la-liga".equals(((Product) request.getAttribute("product")).getCategory()) ? "selected" : "" %>>La Liga</option>
                                    <option value="serie-a" <%= request.getAttribute("product") != null && "serie-a".equals(((Product) request.getAttribute("product")).getCategory()) ? "selected" : "" %>>Serie A</option>
                                    <option value="football-boots" <%= request.getAttribute("product") != null && "football-boots".equals(((Product) request.getAttribute("product")).getCategory()) ? "selected" : "" %>>Football Boots</option>
                                    <option value="retro" <%= request.getAttribute("product") != null && "retro".equals(((Product) request.getAttribute("product")).getCategory()) ? "selected" : "" %>>Retro Jerseys</option>
                                </select>
                            </div>
                        </div>
                        
                        <div class="form-row">
                            <div class="form-group">
                                <label for="product-price">Price (₹)</label>
                                <input type="number" step="0.01" id="product-price" name="product-price" class="form-control" value="<%= request.getAttribute("product") != null ? ((Product) request.getAttribute("product")).getPrice() : "" %>" required>
                            </div>
                            <div class="form-group">
                                <label for="product-stock">Stock Quantity</label>
                                <input type="number" id="product-stock" name="product-stock" class="form-control" value="<%= request.getAttribute("product") != null ? ((Product) request.getAttribute("product")).getStock() : "" %>" required>
                            </div>
                        </div>
                        
                        <div class="form-group">
                            <label for="product-description">Description</label>
                            <textarea id="product-description" name="product-description" class="form-control" rows="4" required><%= request.getAttribute("product") != null ? ((Product) request.getAttribute("product")).getProductDescription() : "" %></textarea>
                        </div>
                        
                        <div class="form-group">
                            <label for="product-image">Product Image</label>
                            <input type="file" id="product-image" name="product-image" class="form-control">
                            <% if (request.getAttribute("product") != null && ((Product) request.getAttribute("product")).getImagePath() != null) { %>
                                <img src="${pageContext.request.contextPath}/<%= ((Product) request.getAttribute("product")).getImagePath() %>" alt="Current Image" style="max-width: 100px; margin-top: 10px;">
                            <% } %>
                        </div>
                        
                        <div class="form-group">
                            <label>Available Sizes</label>
                            <div style="display: flex; gap: 15px; margin-top: 10px;">
                                <% String[] sizes = {"S", "M", "L", "XL", "2XL"}; %>
                                <% String selectedSizes = request.getAttribute("product") != null ? ((Product) request.getAttribute("product")).getAvailableSizes() : ""; %>
                                <% for (String size : sizes) { %>
                                    <div style="display: flex; align-items: center;">
                                        <input type="checkbox" id="size-<%= size.toLowerCase() %>" name="size-<%= size.toLowerCase() %>" <%= selectedSizes != null && selectedSizes.contains(size) ? "checked" : "" %>>
                                        <label for="size-<%= size.toLowerCase() %>"><%= size %></label>
                                    </div>
                                <% } %>
                            </div>
                        </div>
                        
                        <div class="form-actions">
                            <button type="button" class="btn btn-secondary" onclick="window.location.href='${pageContext.request.contextPath}/Pages/admin/product.jsp'">Cancel</button>
                            <button type="submit" class="btn btn-primary">Save Product</button>
                        </div>
                    </form>
                </div>
            </section>
        </div>
    </div>
</body>
</html>