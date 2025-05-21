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
import java.sql.ResultSet;
import java.sql.SQLException;
import java.time.LocalDate;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@WebServlet("/dashboard")
public class DashboardServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) 
            throws ServletException, IOException {
        // Check if user is logged in
        HttpSession session = req.getSession(false);
        if (session == null || session.getAttribute("customer") == null) {
            resp.sendRedirect(req.getContextPath() + "/Pages/account.jsp");
            return;
        }

        // Get customer from session
        Customer customer = (Customer) session.getAttribute("customer");
        int customerId = customer.getCustomerId();

        try (Connection conn = DBConnection.getDbConnection()) {
            // Fetch recent orders (limited to 5)
            List<Map<String, Object>> recentOrders = fetchRecentOrders(conn, customerId);
            req.setAttribute("recentOrders", recentOrders);

            // Fetch total order count
            int orderCount = fetchOrderCount(conn, customerId);
            req.setAttribute("orderCount", orderCount);

            // Fetch new order count this month 
            int newOrderCount = fetchNewOrderCount(conn, customerId);
            req.setAttribute("newOrderCount", newOrderCount);

            // Fetch cart item count and total 
            int cartItemCount = fetchCartItemCount(conn, customerId);
            double cartTotal = fetchCartTotal(conn, customerId);
            req.setAttribute("cartItemCount", cartItemCount);
            req.setAttribute("cartTotal", cartTotal);

            // Set user attribute for profile summary
            req.setAttribute("user", customer);

            // Forward to dashboard JSP
            req.getRequestDispatcher("/Pages/user-dashboard.jsp").forward(req, resp);
        } catch (SQLException | ClassNotFoundException e) {
            throw new ServletException("Database error in DashboardServlet", e);
        }
    }

    private List<Map<String, Object>> fetchRecentOrders(Connection conn, int customerId) 
            throws SQLException {
        List<Map<String, Object>> orders = new ArrayList<>();
        String sql = "SELECT Order_ID, Order_Date, Total_Amount " +
                     "FROM `Order` " +
                     "WHERE Customer_ID = ? " +
                     "ORDER BY Order_Date DESC " +
                     "LIMIT 5";
        try (PreparedStatement stmt = conn.prepareStatement(sql)) {
            stmt.setInt(1, customerId);
            try (ResultSet rs = stmt.executeQuery()) {
                while (rs.next()) {
                    Map<String, Object> order = new HashMap<>();
                    order.put("orderId", rs.getInt("Order_ID"));
                    order.put("orderDate", rs.getDate("Order_Date") != null ? rs.getDate("Order_Date").toString() : "N/A");
                    order.put("total", rs.getDouble("Total_Amount"));
                    orders.add(order);
                    System.out.println("Fetched order: " + order); 
                }
                if (orders.isEmpty()) {
                    System.out.println("No orders found for customer ID: " + customerId);
                }
            }
        }
        return orders;
    }

    private int fetchOrderCount(Connection conn, int customerId) throws SQLException {
        String sql = "SELECT COUNT(*) AS count FROM `Order` WHERE Customer_ID = ?";
        try (PreparedStatement stmt = conn.prepareStatement(sql)) {
            stmt.setInt(1, customerId);
            try (ResultSet rs = stmt.executeQuery()) {
                if (rs.next()) {
                    return rs.getInt("count");
                }
            }
        }
        return 0;
    }

    private int fetchNewOrderCount(Connection conn, int customerId) throws SQLException {
        LocalDate now = LocalDate.now(); // 2025-05-21
        String sql = "SELECT COUNT(*) AS count FROM `Order` WHERE Customer_ID = ? AND YEAR(Order_Date) = ? AND MONTH(Order_Date) = ?";
        try (PreparedStatement stmt = conn.prepareStatement(sql)) {
            stmt.setInt(1, customerId);
            stmt.setInt(2, now.getYear());
            stmt.setInt(3, now.getMonthValue());
            try (ResultSet rs = stmt.executeQuery()) {
                if (rs.next()) {
                    return rs.getInt("count");
                }
            }
        }
        return 0;
    }

    private int fetchCartItemCount(Connection conn, int customerId) throws SQLException {
        // Product_ID linking to product table
        String sql = "SELECT COUNT(*) AS count FROM cart c JOIN product p ON c.Product_ID = p.product_id WHERE c.Customer_ID = ?";
        try (PreparedStatement stmt = conn.prepareStatement(sql)) {
            stmt.setInt(1, customerId);
            try (ResultSet rs = stmt.executeQuery()) {
                if (rs.next()) {
                    return rs.getInt("count");
                }
            }
        }
        return 0;
    }

    private double fetchCartTotal(Connection conn, int customerId) throws SQLException {
        // Cart table links to product table for price
        String sql = "SELECT SUM(c.Quantity * p.price) AS total FROM cart c JOIN product p ON c.Product_ID = p.product_id WHERE c.Customer_ID = ?";
        try (PreparedStatement stmt = conn.prepareStatement(sql)) {
            stmt.setInt(1, customerId);
            try (ResultSet rs = stmt.executeQuery()) {
                if (rs.next()) {
                    return rs.getDouble("total");
                }
            }
        }
        return 0.0;
    }
}