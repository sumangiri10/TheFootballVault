<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Products - The Football Vault Admin</title>
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
                <li class="active">
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
            
            <!-- Filter Section -->
            <div class="filter-container">
                <div class="filter-group">
                    <span class="filter-label">Category:</span>
                    <select class="filter-select">
                        <option value="">All Categories</option>
                        <option value="premier-league">Premier League</option>
                        <option value="la-liga">La Liga</option>
                        <option value="serie-a">Serie A</option>
                        <option value="football-boots">Football Boots</option>
                        <option value="retro">Retro Jerseys</option>
                    </select>
                </div>
                <div class="filter-group">
                    <span class="filter-label">Stock Status:</span>
                    <select class="filter-select">
                        <option value="">All</option>
                        <option value="in-stock">In Stock</option>
                        <option value="low-stock">Low Stock</option>
                        <option value="out-of-stock">Out of Stock</option>
                    </select>
                </div>
                <div class="filter-group">
                    <span class="filter-label">Price Range:</span>
                    <input type="text" class="filter-input" placeholder="Min">
                    <span>-</span>
                    <input type="text" class="filter-input" placeholder="Max">
                </div>
                <button class="filter-btn">Apply Filters</button>
                <button class="filter-btn reset">Reset</button>
            </div>
            
            <!-- Product List -->
            <div class="dashboard-card full-width">
                <div class="card-header">
                    <h2>Product List</h2>
                    <a href="#" class="add-btn"><i class="fas fa-plus"></i> Add New Product</a>
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
                            <tr>
                                <td>#PRD-001</td>
                                <td><img src="/placeholder.svg?height=30&width=30" alt="Product" class="product-thumbnail"></td>
                                <td>Manchester United Home Jersey 2024/25</td>
                                <td>Premier League</td>
                                <td>₹1,500</td>
                                <td>25</td>
                                <td>
                                    <a href="#" class="action-btn view-btn"><i class="fas fa-eye"></i></a>
                                    <a href="#" class="action-btn edit-btn"><i class="fas fa-edit"></i></a>
                                    <a href="#" class="action-btn delete-btn"><i class="fas fa-trash"></i></a>
                                </td>
                            </tr>
                            <tr>
                                <td>#PRD-002</td>
                                <td><img src="/placeholder.svg?height=30&width=30" alt="Product" class="product-thumbnail"></td>
                                <td>Arsenal Away Jersey 2024/25</td>
                                <td>Premier League</td>
                                <td>₹1,500</td>
                                <td>18</td>
                                <td>
                                    <a href="#" class="action-btn view-btn"><i class="fas fa-eye"></i></a>
                                    <a href="#" class="action-btn edit-btn"><i class="fas fa-edit"></i></a>
                                    <a href="#" class="action-btn delete-btn"><i class="fas fa-trash"></i></a>
                                </td>
                            </tr>
                            <tr>
                                <td>#PRD-003</td>
                                <td><img src="/placeholder.svg?height=30&width=30" alt="Product" class="product-thumbnail"></td>
                                <td>Barcelona Home Jersey 2024/25</td>
                                <td>La Liga</td>
                                <td>₹1,500</td>
                                <td><span style="color: #e74a3b; font-weight: 600;">2</span></td>
                                <td>
                                    <a href="#" class="action-btn view-btn"><i class="fas fa-eye"></i></a>
                                    <a href="#" class="action-btn edit-btn"><i class="fas fa-edit"></i></a>
                                    <a href="#" class="action-btn delete-btn"><i class="fas fa-trash"></i></a>
                                </td>
                            </tr>
                            <tr>
                                <td>#PRD-004</td>
                                <td><img src="/placeholder.svg?height=30&width=30" alt="Product" class="product-thumbnail"></td>
                                <td>Real Madrid Home Jersey 2024/25</td>
                                <td>La Liga</td>
                                <td>₹1,500</td>
                                <td>20</td>
                                <td>
                                    <a href="#" class="action-btn view-btn"><i class="fas fa-eye"></i></a>
                                    <a href="#" class="action-btn edit-btn"><i class="fas fa-edit"></i></a>
                                    <a href="#" class="action-btn delete-btn"><i class="fas fa-trash"></i></a>
                                </td>
                            </tr>
                            <tr>
                                <td>#PRD-005</td>
                                <td><img src="/placeholder.svg?height=30&width=30" alt="Product" class="product-thumbnail"></td>
                                <td>Nike Mercurial Vapor 15</td>
                                <td>Football Boots</td>
                                <td>₹2,500</td>
                                <td>15</td>
                                <td>
                                    <a href="#" class="action-btn view-btn"><i class="fas fa-eye"></i></a>
                                    <a href="#" class="action-btn edit-btn"><i class="fas fa-edit"></i></a>
                                    <a href="#" class="action-btn delete-btn"><i class="fas fa-trash"></i></a>
                                </td>
                            </tr>
                            <tr>
                                <td>#PRD-006</td>
                                <td><img src="/placeholder.svg?height=30&width=30" alt="Product" class="product-thumbnail"></td>
                                <td>Liverpool Home Jersey 2024/25</td>
                                <td>Premier League</td>
                                <td>₹1,500</td>
                                <td>22</td>
                                <td>
                                    <a href="#" class="action-btn view-btn"><i class="fas fa-eye"></i></a>
                                    <a href="#" class="action-btn edit-btn"><i class="fas fa-edit"></i></a>
                                    <a href="#" class="action-btn delete-btn"><i class="fas fa-trash"></i></a>
                                </td>
                            </tr>
                            <tr>
                                <td>#PRD-007</td>
                                <td><img src="/placeholder.svg?height=30&width=30" alt="Product" class="product-thumbnail"></td>
                                <td>Adidas Predator Edge</td>
                                <td>Football Boots</td>
                                <td>₹2,800</td>
                                <td><span style="color: #e74a3b; font-weight: 600;">3</span></td>
                                <td>
                                    <a href="#" class="action-btn view-btn"><i class="fas fa-eye"></i></a>
                                    <a href="#" class="action-btn edit-btn"><i class="fas fa-edit"></i></a>
                                    <a href="#" class="action-btn delete-btn"><i class="fas fa-trash"></i></a>
                                </td>
                            </tr>
                            <tr>
                                <td>#PRD-008</td>
                                <td><img src="/placeholder.svg?height=30&width=30" alt="Product" class="product-thumbnail"></td>
                                <td>AC Milan Home Jersey 2024/25</td>
                                <td>Serie A</td>
                                <td>₹1,500</td>
                                <td>18</td>
                                <td>
                                    <a href="#" class="action-btn view-btn"><i class="fas fa-eye"></i></a>
                                    <a href="#" class="action-btn edit-btn"><i class="fas fa-edit"></i></a>
                                    <a href="#" class="action-btn delete-btn"><i class="fas fa-trash"></i></a>
                                </td>
                            </tr>
                            <tr>
                                <td>#PRD-009</td>
                                <td><img src="/placeholder.svg?height=30&width=30" alt="Product" class="product-thumbnail"></td>
                                <td>Manchester United 1999 Retro Jersey</td>
                                <td>Retro Jerseys</td>
                                <td>₹1,800</td>
                                <td>10</td>
                                <td>
                                    <a href="#" class="action-btn view-btn"><i class="fas fa-eye"></i></a>
                                    <a href="#" class="action-btn edit-btn"><i class="fas fa-edit"></i></a>
                                    <a href="#" class="action-btn delete-btn"><i class="fas fa-trash"></i></a>
                                </td>
                            </tr>
                            <tr>
                                <td>#PRD-010</td>
                                <td><img src="/placeholder.svg?height=30&width=30" alt="Product" class="product-thumbnail"></td>
                                <td>Puma Future Z</td>
                                <td>Football Boots</td>
                                <td>₹2,200</td>
                                <td>12</td>
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
            
            <!-- Add/Edit Product Form -->
            <div class="form-container">
                <h2 style="margin-bottom: 20px; color: #5a5c69;">Add New Product</h2>
                <form>
                    <div class="form-row">
                        <div class="form-group">
                            <label for="product-name">Product Name</label>
                            <input type="text" id="product-name" class="form-control" placeholder="Enter product name">
                        </div>
                        <div class="form-group">
                            <label for="product-category">Category</label>
                            <select id="product-category" class="form-select">
                                <option value="">Select Category</option>
                                <option value="premier-league">Premier League</option>
                                <option value="la-liga">La Liga</option>
                                <option value="serie-a">Serie A</option>
                                <option value="football-boots">Football Boots</option>
                                <option value="retro">Retro Jerseys</option>
                            </select>
                        </div>
                    </div>
                    
                    <div class="form-row">
                        <div class="form-group">
                            <label for="product-price">Price (₹)</label>
                            <input type="text" id="product-price" class="form-control" placeholder="Enter price">
                        </div>
                        <div class="form-group">
                            <label for="product-stock">Stock Quantity</label>
                            <input type="number" id="product-stock" class="form-control" placeholder="Enter stock quantity">
                        </div>
                    </div>
                    
                    <div class="form-group">
                        <label for="product-description">Description</label>
                        <textarea id="product-description" class="form-control" rows="4" placeholder="Enter product description"></textarea>
                    </div>
                    
                    <div class="form-group">
                        <label for="product-image">Product Image</label>
                        <input type="file" id="product-image" class="form-control">
                    </div>
                    
                    <div class="form-group">
                        <label>Available Sizes</label>
                        <div style="display: flex; gap: 15px; margin-top: 10px;">
                            <div style="display: flex; align-items: center;">
                                <input type="checkbox" id="size-s" style="margin-right: 5px;">
                                <label for="size-s">S</label>
                            </div>
                            <div style="display: flex; align-items: center;">
                                <input type="checkbox" id="size-m" style="margin-right: 5px;">
                                <label for="size-m">M</label>
                            </div>
                            <div style="display: flex; align-items: center;">
                                <input type="checkbox" id="size-l" style="margin-right: 5px;">
                                <label for="size-l">L</label>
                            </div>
                            <div style="display: flex; align-items: center;">
                                <input type="checkbox" id="size-xl" style="margin-right: 5px;">
                                <label for="size-xl">XL</label>
                            </div>
                            <div style="display: flex; align-items: center;">
                                <input type="checkbox" id="size-xxl" style="margin-right: 5px;">
                                <label for="size-xxl">2XL</label>
                            </div>
                        </div>
                    </div>
                    
                    <div class="form-actions">
                        <button type="button" class="btn btn-secondary">Cancel</button>
                        <button type="submit" class="btn btn-primary">Save Product</button>
                    </div>
                </form>
            </div>
        </div>
    </div>
</body>
</html>