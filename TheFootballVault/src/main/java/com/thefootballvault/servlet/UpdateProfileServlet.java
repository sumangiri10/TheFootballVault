package com.thefootballvault.servlet;

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
import java.sql.SQLException;

@WebServlet("/updateProfile")
public class UpdateProfileServlet extends HttpServlet {
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
        String fullName = req.getParameter("fullName");
        String email = req.getParameter("email");
        String phone = req.getParameter("phone");
        String address = req.getParameter("address");

        // Validate input (basic validation)
        if (fullName == null || fullName.trim().isEmpty() ||
            email == null || email.trim().isEmpty() ||
            phone == null || phone.trim().isEmpty() ||
            address == null || address.trim().isEmpty()) {
            req.setAttribute("errorMessage", "All fields are required.");
            req.getRequestDispatcher("/Pages/edit-profile.jsp").forward(req, resp);
            return;
        }

        try (Connection conn = DBConnection.getDbConnection()) {
            // Update customer in the database with correct column names
            String updateSQL = "UPDATE customer SET Full_Name = ?, Email = ?, Contact_Number = ?, Address = ? WHERE Customer_ID = ?";
            try (PreparedStatement stmt = conn.prepareStatement(updateSQL)) {
                stmt.setString(1, fullName);
                stmt.setString(2, email);
                stmt.setString(3, phone);
                stmt.setString(4, address);
                stmt.setInt(5, customerId);
                int rowsUpdated = stmt.executeUpdate();

                if (rowsUpdated > 0) {
                    // Update the Customer object in session
                    customer.setFullName(fullName);
                    customer.setEmail(email);
                    customer.setPhone(phone);
                    customer.setAddress(address);
                    session.setAttribute("customer", customer);

                    // Set success message
                    req.setAttribute("successMessage", "Profile changed!");
                } else {
                    req.setAttribute("errorMessage", "Failed to update profile. Please try again.");
                }
            }
        } catch (SQLException | ClassNotFoundException e) {
            req.setAttribute("errorMessage", "Database error: " + e.getMessage());
            req.getRequestDispatcher("/Pages/edit-profile.jsp").forward(req, resp);
            return;
        }

        // Forward back to edit-profile.jsp to display the message
        req.getRequestDispatcher("/Pages/edit-profile.jsp").forward(req, resp);
    }
}