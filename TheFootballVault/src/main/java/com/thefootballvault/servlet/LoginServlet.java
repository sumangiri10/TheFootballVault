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

                HttpSession session = req.getSession();
                session.setAttribute("customer", customer);
                session.setMaxInactiveInterval(5 * 60); 

                // Redirect based on role
                if ("admin".equals(customer.getRole())) {
                    resp.sendRedirect("Pages/admin/admin.jsp");
                } else {
                    resp.sendRedirect("Pages/user-dashboard.jsp");
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