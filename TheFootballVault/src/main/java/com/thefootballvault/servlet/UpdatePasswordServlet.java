package com.thefootballvault.servlet;

import com.thefootballvault.model.AESEncryption;
import com.thefootballvault.model.Customer;
import com.thefootballvault.utils.DBConnection;
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

@WebServlet("/updatePassword")
public class UpdatePasswordServlet extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) 
            throws ServletException, IOException {
        HttpSession session = req.getSession(false);
        if (session == null || session.getAttribute("customer") == null) {
            resp.sendRedirect(req.getContextPath() + "/Pages/account.jsp");
            return;
        }

        Customer customer = (Customer) session.getAttribute("customer");
        int customerId = customer.getCustomerId();

        // Get form data
        String currentPassword = req.getParameter("currentPassword");
        String newPassword = req.getParameter("newPassword");
        String confirmPassword = req.getParameter("confirmPassword");

        // Validate input
        if (currentPassword == null || currentPassword.trim().isEmpty() ||
            newPassword == null || newPassword.trim().isEmpty() ||
            confirmPassword == null || confirmPassword.trim().isEmpty()) {
            req.setAttribute("errorMessage", "All password fields are required.");
            req.getRequestDispatcher("/Pages/edit-profile.jsp").forward(req, resp);
            return;
        }

        // Check if new password and confirm password match
        if (!newPassword.equals(confirmPassword)) {
            req.setAttribute("errorMessage", "New password and confirm password do not match.");
            req.getRequestDispatcher("/Pages/edit-profile.jsp").forward(req, resp);
            return;
        }

        try (Connection conn = DBConnection.getDbConnection()) {
            // Fetch the current encrypted password from the database
            String fetchPasswordSQL = "SELECT Customer_Pass FROM customer WHERE Customer_ID = ?";
            String storedPassword = null;
            try (PreparedStatement stmt = conn.prepareStatement(fetchPasswordSQL)) {
                stmt.setInt(1, customerId);
                try (ResultSet rs = stmt.executeQuery()) {
                    if (rs.next()) {
                        storedPassword = rs.getString("Customer_Pass");
                    }
                }
            }

            if (storedPassword == null) {
                req.setAttribute("errorMessage", "Unable to retrieve current password. Please try again.");
                req.getRequestDispatcher("/Pages/edit-profile.jsp").forward(req, resp);
                return;
            }

            // Decrypt the stored password and compare with the current password
            String decryptedPassword = AESEncryption.decrypt(storedPassword);
            if (!decryptedPassword.equals(currentPassword)) {
                req.setAttribute("errorMessage", "Current password is incorrect.");
                req.getRequestDispatcher("/Pages/edit-profile.jsp").forward(req, resp);
                return;
            }

            // Encrypt the new password
            String encryptedNewPassword = AESEncryption.encrypt(newPassword);

            // Update the password in the database
            String updatePasswordSQL = "UPDATE customer SET Customer_Pass = ? WHERE Customer_ID = ?";
            try (PreparedStatement stmt = conn.prepareStatement(updatePasswordSQL)) {
                stmt.setString(1, encryptedNewPassword);
                stmt.setInt(2, customerId);
                int rowsUpdated = stmt.executeUpdate();

                if (rowsUpdated > 0) {
                    // Update the Customer object in session
                    customer.setCustomerPass(encryptedNewPassword);
                    session.setAttribute("customer", customer);

                    // Set success message
                    req.setAttribute("successMessage", "Password updated successfully!");
                } else {
                    req.setAttribute("errorMessage", "Failed to update password. Please try again.");
                }
            }
        } catch (SQLException | ClassNotFoundException e) {
            req.setAttribute("errorMessage", "Database error: " + e.getMessage());
            req.getRequestDispatcher("/Pages/edit-profile.jsp").forward(req, resp);
            return;
        } catch (Exception e) {
            req.setAttribute("errorMessage", "Encryption error: " + e.getMessage());
            req.getRequestDispatcher("/Pages/edit-profile.jsp").forward(req, resp);
            return;
        }

        // Forward to edit-profile.jsp to display the message
        req.getRequestDispatcher("/Pages/edit-profile.jsp").forward(req, resp);
    }
}