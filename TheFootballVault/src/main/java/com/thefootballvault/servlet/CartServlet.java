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
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@WebServlet("/addToCart")
public class CartServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) 
            throws ServletException, IOException {
        HttpSession session = request.getSession(false);
        if (session == null || session.getAttribute("customer") == null) {
            response.sendRedirect(request.getContextPath() + "/Pages/account.jsp");
            return;
        }

        Customer customer = (Customer) session.getAttribute("customer");
        int customerId = customer.getCustomerId();

        List<Map<String, Object>> cartItemList = new ArrayList<>();
        try (Connection conn = DBConnection.getDbConnection()) {
            String sql = "SELECT c.cart_id, c.product_id, c.quantity, c.size, p.product_name " +
                         "FROM cart c " +
                         "LEFT JOIN product p ON c.product_id = p.product_id " +
                         "WHERE c.Customer_ID = ?";
            PreparedStatement stmt = conn.prepareStatement(sql);
            stmt.setInt(1, customerId);
            ResultSet rs = stmt.executeQuery();

            while (rs.next()) {
                Map<String, Object> item = new HashMap<>();
                item.put("productId", rs.getInt("product_id"));
                item.put("productName", rs.getString("product_name") != null ? rs.getString("product_name") : "Unknown");
                item.put("size", rs.getString("size"));
                item.put("quantity", rs.getInt("quantity"));
                cartItemList.add(item);
            }
        } catch (SQLException | ClassNotFoundException e) {
            e.printStackTrace();
            throw new ServletException("Database error while retrieving cart items", e);
        }

        request.setAttribute("cartItemList", cartItemList);
        request.getRequestDispatcher("/Pages/cart.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) 
            throws ServletException, IOException {
        HttpSession session = request.getSession(false);
        if (session == null || session.getAttribute("customer") == null) {
            response.sendRedirect(request.getContextPath() + "/Pages/account.jsp");
            return;
        }

        Customer customer = (Customer) session.getAttribute("customer");
        int customerId = customer.getCustomerId();

        String productIdStr = request.getParameter("productId");
        String size = request.getParameter("size");
        String quantityStr = request.getParameter("quantity");

        if (productIdStr == null || productIdStr.trim().isEmpty() || 
            size == null || size.trim().isEmpty() || 
            quantityStr == null || quantityStr.trim().isEmpty()) {
            throw new ServletException("Missing or invalid form parameters");
        }

        int productId = Integer.parseInt(productIdStr);
        int quantity = Integer.parseInt(quantityStr);

        try (Connection conn = DBConnection.getDbConnection()) {
            conn.setAutoCommit(true);

            String checkSql = "SELECT cart_id, quantity FROM cart WHERE Customer_ID = ? AND product_id = ? AND size = ?";
            PreparedStatement checkStmt = conn.prepareStatement(checkSql);
            checkStmt.setInt(1, customerId);
            checkStmt.setInt(2, productId);
            checkStmt.setString(3, size);
            ResultSet rs = checkStmt.executeQuery();

            if (rs.next()) {
                int newQuantity = rs.getInt("quantity") + quantity;
                String updateSql = "UPDATE cart SET quantity = ? WHERE cart_id = ?";
                PreparedStatement updateStmt = conn.prepareStatement(updateSql);
                updateStmt.setInt(1, newQuantity);
                updateStmt.setInt(2, rs.getInt("cart_id"));
                updateStmt.executeUpdate();
            } else {
                String insertSql = "INSERT INTO cart (Customer_ID, product_id, size, quantity) VALUES (?, ?, ?, ?)";
                PreparedStatement insertStmt = conn.prepareStatement(insertSql);
                insertStmt.setInt(1, customerId);
                insertStmt.setInt(2, productId);
                insertStmt.setString(3, size);
                insertStmt.setInt(4, quantity);
                insertStmt.executeUpdate();
            }
        } catch (SQLException | ClassNotFoundException e) {
            e.printStackTrace();
            throw new ServletException("Database error while adding to cart", e);
        }

        response.sendRedirect(request.getContextPath() + "/addToCart");
    }
}