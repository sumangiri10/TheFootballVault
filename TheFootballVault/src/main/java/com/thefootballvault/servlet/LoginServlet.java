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
                 "SELECT Customer_ID, Full_Name, Email, Role FROM Customer " +
                 "WHERE (Email = ? OR Full_Name = ?) AND Customer_Pass = ?")) {
            ps.setString(1, usernameOrEmail);
            ps.setString(2, usernameOrEmail);
            ps.setString(3, encryptedPassword);
            ResultSet rs = ps.executeQuery();

            if (rs.next()) {
                // Successful login
                Customer customer = new Customer();
                customer.setCustomerId(rs.getInt("Customer_ID"));
                customer.setUsername(rs.getString("Full_Name"));
                customer.setEmail(rs.getString("Email"));
                customer.setRole(rs.getString("Role"));

                // Start a session and store customer data
                HttpSession session = req.getSession(true); 
                session.setAttribute("customer", customer);
                session.setMaxInactiveInterval(30 * 60); 

                // Log customer details for debugging
                System.out.println("LoginServlet: Customer set in session - ID: " + customer.getCustomerId() + ", Role: " + customer.getRole());

                // Create a custom cookie for username display 
                String username = customer.getUsername();
                Cookie userCookie = new Cookie("fvUser", username);
                userCookie.setHttpOnly(true);          
                userCookie.setSecure(false);            
                resp.addCookie(userCookie);             

                // Always redirect to cookie consent page on login
                System.out.println("LoginServlet: Redirecting to cookie-consent.jsp for consent");
                resp.sendRedirect(req.getContextPath() + "/Pages/cookie-consent.jsp");
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