package com.thefootballvault.servlet;

import com.thefootballvault.model.Order;
import com.thefootballvault.model.OrderProduct;
import com.thefootballvault.utils.DBConnection;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;
import java.sql.*;
import java.util.ArrayList;
import java.util.List;

@WebServlet("/admin/order")
public class AdminOrderServlet extends HttpServlet {
    private static final String JSP_PATH = "/Pages/admin/orders.jsp";

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String action = req.getParameter("action");
        List<Order> orders = getAllOrders();
        req.setAttribute("orders", orders);

        if ("edit".equals(action)) {
            int orderId = Integer.parseInt(req.getParameter("id"));
            System.out.println("Fetching order details for Order ID: " + orderId);
            Order order = getOrderById(orderId);
            List<OrderProduct> orderItems = getOrderItems(orderId);
            if (order != null) {
                System.out.println("Order found: " + order.getOrderId() + ", Status: " + order.getOrderStatus());
                req.setAttribute("selectedOrder", order);
            } else {
                System.out.println("Order not found for ID: " + orderId);
            }
            if (orderItems != null) {
                System.out.println("Found " + orderItems.size() + " items for Order ID: " + orderId);
            } else {
                System.out.println("No items found for Order ID: " + orderId);
            }
            req.setAttribute("orderItems", orderItems);
        }
        req.getRequestDispatcher(JSP_PATH).forward(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String action = req.getParameter("action");
        if ("update".equals(action)) {
            int orderId = Integer.parseInt(req.getParameter("order-id"));
            String status = req.getParameter("order-status");
            String trackingNumber = req.getParameter("tracking-number"); 
            String adminNotes = req.getParameter("admin-notes"); 

            updateOrder(orderId, status, trackingNumber, adminNotes);
            resp.sendRedirect(req.getContextPath() + JSP_PATH + "?success=update#order-" + orderId);
        }
    }

    private List<Order> getAllOrders() throws ServletException {
        List<Order> orders = new ArrayList<>();
        String sql = "SELECT o.Order_ID, o.Customer_ID, o.Order_Date, o.Order_Timestamp, o.Order_Status, o.Payment_Method, o.Total_Amount, " +
                     "c.Full_Name AS customer_name, c.Email AS customer_email, c.Contact_Number AS customer_phone, c.Address AS shipping_address " +
                     "FROM `order` o " +
                     "LEFT JOIN customer c ON o.Customer_ID = c.Customer_ID";
        try (Connection conn = DBConnection.getDbConnection();
             PreparedStatement ps = conn.prepareStatement(sql);
             ResultSet rs = ps.executeQuery()) {
            while (rs.next()) {
                Order order = new Order(
                    rs.getInt("Order_ID"),
                    rs.getInt("Customer_ID"),
                    rs.getString("customer_name"),
                    rs.getString("customer_email"),
                    rs.getString("customer_phone"),
                    rs.getString("shipping_address"),
                    rs.getDate("Order_Date").toString(),
                    rs.getString("Order_Status"),
                    rs.getString("Payment_Method"),
                    "Pending", // Placeholder for Payment_Status
                    rs.getDouble("Total_Amount"),
                    getItemCount(rs.getInt("Order_ID")),
                    null,
                    null  
                );
                orders.add(order);
            }
        } catch (SQLException | ClassNotFoundException e) {
            throw new ServletException("Error fetching orders", e);
        }
        return orders;
    }

    private Order getOrderById(int orderId) throws ServletException {
        String sql = "SELECT o.Order_ID, o.Customer_ID, o.Order_Date, o.Order_Timestamp, o.Order_Status, o.Payment_Method, o.Total_Amount, " +
                     "c.Full_Name AS customer_name, c.Email AS customer_email, c.Contact_Number AS customer_phone, c.Address AS shipping_address " +
                     "FROM `order` o " +
                     "LEFT JOIN customer c ON o.Customer_ID = c.Customer_ID " +
                     "WHERE o.Order_ID = ?";
        try (Connection conn = DBConnection.getDbConnection();
             PreparedStatement ps = conn.prepareStatement(sql)) {
            ps.setInt(1, orderId);
            try (ResultSet rs = ps.executeQuery()) {
                if (rs.next()) {
                    return new Order(
                        rs.getInt("Order_ID"),
                        rs.getInt("Customer_ID"),
                        rs.getString("customer_name"),
                        rs.getString("customer_email"),
                        rs.getString("customer_phone"),
                        rs.getString("shipping_address"),
                        rs.getDate("Order_Date").toString(),
                        rs.getString("Order_Status"),
                        rs.getString("Payment_Method"),
                        "Pending", // Placeholder for Payment_Status
                        rs.getDouble("Total_Amount"),
                        getItemCount(orderId),
                        null, 
                        null 
                    );
                }
            }
        } catch (SQLException | ClassNotFoundException e) {
            throw new ServletException("Error fetching order", e);
        }
        return null;
    }

    private List<OrderProduct> getOrderItems(int orderId) throws ServletException {
        List<OrderProduct> items = new ArrayList<>();
        String sql = "SELECT op.Order_ID, op.Product_ID, op.quantity, p.product_name, p.image_path, p.price " +
                     "FROM order_product op " +
                     "JOIN product p ON op.Product_ID = p.product_id " +
                     "WHERE op.Order_ID = ?";
        try (Connection conn = DBConnection.getDbConnection();
             PreparedStatement ps = conn.prepareStatement(sql)) {
            ps.setInt(1, orderId);
            try (ResultSet rs = ps.executeQuery()) {
                while (rs.next()) {
                    OrderProduct item = new OrderProduct(
                        rs.getInt("Order_ID"),
                        rs.getInt("Product_ID"),
                        rs.getInt("quantity"),
                        rs.getString("product_name"),
                        rs.getString("image_path"),
                        rs.getDouble("price"),
                        null // Size 
                    );
                    items.add(item);
                }
            }
        } catch (SQLException | ClassNotFoundException e) {
            throw new ServletException("Error fetching order items", e);
        }
        return items;
    }

    private int getItemCount(int orderId) throws ServletException {
        String sql = "SELECT COUNT(*) AS item_count FROM order_product WHERE Order_ID = ?";
        try (Connection conn = DBConnection.getDbConnection();
             PreparedStatement ps = conn.prepareStatement(sql)) {
            ps.setInt(1, orderId);
            try (ResultSet rs = ps.executeQuery()) {
                if (rs.next()) {
                    return rs.getInt("item_count");
                }
            }
        } catch (SQLException | ClassNotFoundException e) {
            throw new ServletException("Error fetching item count", e);
        }
        return 0;
    }

    private double getSubtotal(int orderId) throws ServletException {
        String sql = "SELECT SUM(op.quantity * p.price) AS subtotal " +
                     "FROM order_product op " +
                     "JOIN product p ON op.Product_ID = p.product_id " +
                     "WHERE op.Order_ID = ?";
        try (Connection conn = DBConnection.getDbConnection();
             PreparedStatement ps = conn.prepareStatement(sql)) {
            ps.setInt(1, orderId);
            try (ResultSet rs = ps.executeQuery()) {
                if (rs.next()) {
                    return rs.getDouble("subtotal");
                }
            }
        } catch (SQLException | ClassNotFoundException e) {
            throw new ServletException("Error calculating subtotal", e);
        }
        return 0.0;
    }

    private void updateOrder(int orderId, String status, String trackingNumber, String adminNotes) throws ServletException {
        String sql = "UPDATE `order` SET Order_Status = ? WHERE Order_ID = ?";
        try (Connection conn = DBConnection.getDbConnection();
             PreparedStatement ps = conn.prepareStatement(sql)) {
            ps.setString(1, status);
            ps.setInt(2, orderId);
            ps.executeUpdate();
        } catch (SQLException | ClassNotFoundException e) {
            throw new ServletException("Error updating order", e);
        }
    }
}