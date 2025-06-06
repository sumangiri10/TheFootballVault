package com.thefootballvault.servlet;

import com.thefootballvault.model.Customer;
import com.thefootballvault.utils.DBConnection;
import com.thefootballvault.model.AESEncryption;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

@WebServlet("/register")
public class RegisterServlet extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) 
            throws ServletException, IOException {
        String fullName = req.getParameter("username"); 
        String email = req.getParameter("email");
        String password = req.getParameter("password");
        String phone = req.getParameter("phone");
        String address = req.getParameter("address");

        // Check if email already exists
        try (Connection conn = DBConnection.getDbConnection();
             PreparedStatement ps = conn.prepareStatement(
                 "SELECT COUNT(*) FROM Customer WHERE Email = ?")) {
            ps.setString(1, email);
            ResultSet rs = ps.executeQuery();
            if (rs.next() && rs.getInt(1) > 0) {
                req.setAttribute("registerError", "Email '" + email + "' is already registered");
                req.getRequestDispatcher("Pages/account.jsp").forward(req, resp);
                return;
            }
        } catch (SQLException | ClassNotFoundException e) {
            throw new ServletException("Database error checking email", e);
        }

        // Encrypt password and register the user
        String encryptedPassword;
        try {
            encryptedPassword = AESEncryption.encrypt(password);
        } catch (Exception e) {
            throw new ServletException("Error encrypting password", e);
        }
        Customer customer = new Customer(fullName, email, encryptedPassword, phone, address);

        try (Connection conn = DBConnection.getDbConnection();
             PreparedStatement ps = conn.prepareStatement(
                 "INSERT INTO Customer (Full_Name, Contact_Number, Email, Address, Postal_Code, Customer_Pass, Role) " +
                 "VALUES (?, ?, ?, ?, '00000', ?, 'user')")) {
            ps.setString(1, customer.getFullName());
            ps.setString(2, customer.getPhone());
            ps.setString(3, customer.getEmail());
            ps.setString(4, customer.getAddress());
            ps.setString(5, customer.getCustomerPass());
            int rows = ps.executeUpdate();

            if (rows > 0) {
                resp.sendRedirect(req.getContextPath() + "/Pages/account.jsp");
            } else {
                req.setAttribute("registerError", "Registration failed");
                req.getRequestDispatcher("Pages/account.jsp").forward(req, resp);
            }
        } catch (SQLException | ClassNotFoundException e) {
            throw new ServletException("Database error during registration", e);
        }
    }
}