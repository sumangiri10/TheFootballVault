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
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

@WebServlet("/checkout")
public class CheckoutServlet extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) 
            throws ServletException, IOException {
        // Check if user is logged in
        HttpSession session = req.getSession(false);
        if (session == null || session.getAttribute("customer") == null) {
            resp.sendRedirect(req.getContextPath() + "/Pages/account.jsp");
            return;
        }

        Customer customer = (Customer) session.getAttribute("customer");
        int customerId = customer.getCustomerId();

        try (Connection conn = DBConnection.getDbConnection()) {
            conn.setAutoCommit(false); // Begin transaction

            // Fetch cart items
            List<CartItem> cartItems = fetchCartItems(conn, customerId);
            if (cartItems.isEmpty()) {
                req.setAttribute("errorMessage", "Your cart is empty!");
                req.getRequestDispatcher("/Pages/cart.jsp").forward(req, resp);
                return;
            }

            // Calculate total amount
            double totalAmount = calculateTotal(conn, cartItems);

            // Insert into "order" table
            String insertOrderSQL = "INSERT INTO `order` (Customer_ID, Order_Date, Order_Status, Total_Amount) VALUES (?, NOW(), 'Pending', ?)";
            int orderId;
            try (PreparedStatement stmt = conn.prepareStatement(insertOrderSQL, Statement.RETURN_GENERATED_KEYS)) {
                stmt.setInt(1, customerId);
                stmt.setString(2, String.format("%.2f", totalAmount)); // Convert double to string
                stmt.executeUpdate();
                try (ResultSet rs = stmt.getGeneratedKeys()) {
                    if (rs.next()) {
                        orderId = rs.getInt(1);
                    } else {
                        throw new SQLException("Failed to retrieve order ID");
                    }
                }
            }

            // Insert into "order_product" table
            String insertOrderProductSQL = "INSERT INTO order_product (Order_ID, Product_ID, Customer_ID, quantity) VALUES (?, ?, ?, ?)";
            try (PreparedStatement itemStmt = conn.prepareStatement(insertOrderProductSQL)) {
                for (CartItem item : cartItems) {
                    itemStmt.setInt(1, orderId);
                    itemStmt.setInt(2, item.getProductId());
                    itemStmt.setInt(3, customerId);
                    itemStmt.setInt(4, item.getQuantity());
                    itemStmt.addBatch();
                }
                itemStmt.executeBatch();
            }

            // Delete cart items
            String deleteCartSQL = "DELETE FROM cart WHERE Customer_ID = ?";
            try (PreparedStatement stmt = conn.prepareStatement(deleteCartSQL)) {
                stmt.setInt(1, customerId);
                stmt.executeUpdate();
            }

            // Commit transaction
            conn.commit();

            // Redirect to confirmation page
            resp.sendRedirect(req.getContextPath() + "/Pages/orderConfirmation.jsp");
        } catch (SQLException | ClassNotFoundException e) {
            // Rollback on error
            try (Connection conn = DBConnection.getDbConnection()) {
                conn.rollback();
            } catch (SQLException | ClassNotFoundException rollbackEx) {
                rollbackEx.printStackTrace();
            }
            throw new ServletException("Error processing checkout: " + e.getMessage(), e);
        }
    }

    // Method to fetch cart items
    private List<CartItem> fetchCartItems(Connection conn, int customerId) throws SQLException {
        List<CartItem> cartItems = new ArrayList<>();
        String sql = "SELECT Cart_ID, product_id, quantity, size FROM cart WHERE Customer_ID = ?";
        try (PreparedStatement stmt = conn.prepareStatement(sql)) {
            stmt.setInt(1, customerId);
            try (ResultSet rs = stmt.executeQuery()) {
                while (rs.next()) {
                    CartItem item = new CartItem(
                        rs.getInt("Cart_ID"),
                        customerId,
                        rs.getInt("product_id"),
                        rs.getInt("quantity"),
                        rs.getString("size")
                    );
                    cartItems.add(item);
                }
            }
        }
        return cartItems;
    }

    // Method to calculate total amount
    private double calculateTotal(Connection conn, List<CartItem> cartItems) throws SQLException {
        double total = 0.0;
        for (CartItem item : cartItems) {
            double price = getProductPrice(conn, item.getProductId());
            total += price * item.getQuantity();
        }
        return total;
    }

    // Method to get product price
    private double getProductPrice(Connection conn, int productId) throws SQLException {
        String sql = "SELECT price FROM product WHERE product_id = ?";
        try (PreparedStatement stmt = conn.prepareStatement(sql)) {
            stmt.setInt(1, productId);
            try (ResultSet rs = stmt.executeQuery()) {
                if (rs.next()) {
                    return rs.getDouble("price");
                } else {
                    throw new SQLException("Product not found: " + productId);
                }
            }
        }
    }

    // Inner class for cart items
    private static class CartItem {
        private int cartId;
        private int customerId;
        private int productId;
        private int quantity;
        private String size;

        public CartItem(int cartId, int customerId, int productId, int quantity, String size) {
            this.cartId = cartId;
            this.customerId = customerId;
            this.productId = productId;
            this.quantity = quantity;
            this.size = size;
        }

        public int getCartId() { return cartId; }
        public int getCustomerId() { return customerId; }
        public int getProductId() { return productId; }
        public int getQuantity() { return quantity; }
        public String getSize() { return size; }
    }
}