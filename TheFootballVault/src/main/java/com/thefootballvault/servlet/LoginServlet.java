package com.thefootballvault.servlet;

import com.thefootballvault.model.Customer;
import com.thefootballvault.utils.DBConnection;
import com.thefootballvault.model.AESEncryption;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import jakarta.servlet.http.Cookie;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

@WebServlet("/login")
public class LoginServlet extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) 
            throws ServletException, IOException {
        String usernameOrEmail = req.getParameter("usernameOrEmail");
        String password = req.getParameter("password");
        String encryptedPassword;

        try {
            encryptedPassword = AESEncryption.encrypt(password);
        } catch (Exception e) {
            throw new ServletException("Error encrypting password", e);
        }

        try (Connection conn = DBConnection.getDbConnection();
             PreparedStatement ps = conn.prepareStatement(
                 "SELECT Customer_ID, Full_Name, Email, Contact_Number, Address, Role FROM Customer " +
                 "WHERE (Email = ? OR Full_Name = ?) AND Customer_Pass = ?")) {
            ps.setString(1, usernameOrEmail);
            ps.setString(2, usernameOrEmail);
            ps.setString(3, encryptedPassword);
            ResultSet rs = ps.executeQuery();

            if (rs.next()) {
                // Successful login
                Customer customer = new Customer(
                    rs.getInt("Customer_ID"),
                    rs.getString("Full_Name"),
                    rs.getString("Email"),
                    rs.getString("Contact_Number"),
                    rs.getString("Address"),
                    rs.getString("Role")
                );

                // Start a session and store customer data
                HttpSession session = req.getSession(true); 
                session.setAttribute("customer", customer);
                session.setMaxInactiveInterval(30 * 60); 

                // Log customer details for debugging
                System.out.println("LoginServlet: Customer set in session - ID: " + customer.getCustomerId() + ", Role: " + customer.getRole());

                // Create a custom cookie using email for uniqueness
                String userIdentifier = customer.getEmail();
                Cookie userCookie = new Cookie("fvUser", userIdentifier);
                userCookie.setHttpOnly(true);          
                userCookie.setSecure(false);            
                resp.addCookie(userCookie);             

                // Redirect based on role
                String role = customer.getRole();
                if ("admin".equalsIgnoreCase(role)) {
                    resp.sendRedirect(req.getContextPath() + "/Pages/admin/admin.jsp");
                } else {
                    resp.sendRedirect(req.getContextPath() + "/Pages/user-dashboard.jsp");
                }
            } else {
                // Failed login
                req.setAttribute("errorMessage", "Invalid username/email or password");
                req.getRequestDispatcher("Pages/account.jsp").forward(req, resp);
            }
        } catch (SQLException | ClassNotFoundException e) {
            throw new ServletException("Database error during login", e);
        }
    }
}