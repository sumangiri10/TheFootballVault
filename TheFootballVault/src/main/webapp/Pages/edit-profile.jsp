<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Edit Profile - The Football Vault</title>
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
                    <li>
                        <a href="${pageContext.request.contextPath}/dashboard">
                            <span class="menu-icon home-icon"></span>
                            <span>Dashboard</span>
                        </a>
                    </li>
                    <li class="active">
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
                <h1>Edit Profile</h1>
                <p>Update your personal information</p>
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
            
            <div class="content-card">
                <div class="card-header">
                    <h2>Personal Information</h2>
                </div>
                <div class="card-content">
                    <form action="${pageContext.request.contextPath}/updateProfile" method="post" class="profile-form">
                        <div class="form-row">
                            <div class="form-group">
                                <label for="fullName">Full Name</label>
                                <input type="text" id="fullName" name="fullName" value="${user.fullName}" required>
                            </div>
                            <div class="form-group">
                                <label for="email">Email Address</label>
                                <input type="email" id="email" name="email" value="${user.email}" required>
                            </div>
                        </div>
                        
                        <div class="form-row">
                            <div class="form-group">
                                <label for="phone">Phone Number</label>
                                <input type="tel" id="phone" name="phone" value="${user.phone}" required>
                            </div>
                        </div>
                        
                        <div class="form-group full-width">
                            <label for="address">Address</label>
                            <textarea id="address" name="address" rows="3" required>${user.address}</textarea>
                        </div> 
                        <div class="form-actions">
                            <button type="submit" class="btn primary-btn">Save Changes</button>
                            <a href="${pageContext.request.contextPath}/dashboard" class="btn secondary-btn">Cancel</a>
                        </div>
                    </form>
                </div>
            </div>
            
            <div class="content-card">
                <div class="card-header">
                    <h2>Change Password</h2>
                </div>
                <div class="card-content">
                    <form action="${pageContext.request.contextPath}/updatePassword" method="post" class="profile-form">
                        <div class="form-row">
                            <div class="form-group">
                                <label for="currentPassword">Current Password</label>
                                <input type="password" id="currentPassword" name="currentPassword" required>
                            </div>
                            <div class="form-group">
                                <label for="newPassword">New Password</label>
                                <input type="password" id="newPassword" name="newPassword" required>
                            </div>
                        </div>
                        
                        <div class="form-row">
                            <div class="form-group">
                                <label for="confirmPassword">Confirm New Password</label>
                                <input type="password" id="confirmPassword" name="confirmPassword" required>
                            </div>
                            <div class="form-group">
                            </div>
                        </div>
                        
                        <div class="form-actions">
                            <button type="submit" class="btn primary-btn">Update Password</button>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
</body>
</html>