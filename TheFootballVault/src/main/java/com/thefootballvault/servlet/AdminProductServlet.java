package com.thefootballvault.servlet;

import com.thefootballvault.model.Product;
import com.thefootballvault.utils.DBConnection;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.MultipartConfig;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.Part;

import java.io.File;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

@WebServlet("/admin/product")
@MultipartConfig(maxFileSize = 1024 * 1024 * 5) // 5MB max file size
public class AdminProductServlet extends HttpServlet {
    private static final String UPLOAD_DIR = "Images/products/";
    private static final String JSP_PATH = "/Pages/admin/product.jsp";

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        System.out.println("doGet called for AdminProductServlet");
        String action = req.getParameter("action");
        if ("edit".equals(action)) {
            System.out.println("Action: edit, Product ID: " + req.getParameter("id"));
            int productId = Integer.parseInt(req.getParameter("id"));
            Product product = getProductById(productId);
            req.setAttribute("product", product);
            // Fetch products to avoid null issue in JSP
            List<Product> products = getAllProducts();
            req.setAttribute("products", products);
            req.getRequestDispatcher(JSP_PATH).forward(req, resp);
        } else if ("delete".equals(action)) {
            System.out.println("Action: delete, Product ID: " + req.getParameter("id"));
            int productId = Integer.parseInt(req.getParameter("id"));
            deleteProduct(productId);
            resp.sendRedirect(req.getContextPath() + JSP_PATH);
        } else {
            System.out.println("Action: list products");
            List<Product> products = getAllProducts();
            System.out.println("Number of products retrieved: " + (products != null ? products.size() : 0));
            if (products == null) {
                System.out.println("Products list is null.");
            } else if (products.isEmpty()) {
                System.out.println("Products list is empty.");
            }
            req.setAttribute("products", products);
            req.getRequestDispatcher(JSP_PATH).forward(req, resp);
        }
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        System.out.println("doPost called for AdminProductServlet");
        String action = req.getParameter("action");
        if ("create".equals(action)) {
            System.out.println("Action: create product");
            createProduct(req);
        } else if ("update".equals(action)) {
            System.out.println("Action: update product");
            updateProduct(req);
        }
        resp.sendRedirect(req.getContextPath() + JSP_PATH + "?success=create");
    }

    private void createProduct(HttpServletRequest req) throws ServletException, IOException {
        String productName = req.getParameter("product-name");
        String description = req.getParameter("product-description");
        double price = Double.parseDouble(req.getParameter("product-price"));
        String category = req.getParameter("product-category");
        int stock = Integer.parseInt(req.getParameter("product-stock"));
        String sizes = getSelectedSizes(req);
        String imagePath = handleImageUpload(req);

        String sql = "INSERT INTO product (product_name, product_description, price, category, stock, available_sizes, image_path) VALUES (?, ?, ?, ?, ?, ?, ?)";
        try (Connection conn = DBConnection.getDbConnection();
             PreparedStatement ps = conn.prepareStatement(sql)) {
            ps.setString(1, productName);
            ps.setString(2, description);
            ps.setDouble(3, price);
            ps.setString(4, category);
            ps.setInt(5, stock);
            ps.setString(6, sizes);
            ps.setString(7, imagePath);
            ps.executeUpdate();
        } catch (SQLException | ClassNotFoundException e) {
            System.out.println("Error creating product: " + e.getMessage());
            throw new ServletException("Error creating product", e);
        }
    }

    private void updateProduct(HttpServletRequest req) throws ServletException, IOException {
        int productId = Integer.parseInt(req.getParameter("product-id"));
        String productName = req.getParameter("product-name");
        String description = req.getParameter("product-description");
        double price = Double.parseDouble(req.getParameter("product-price"));
        String category = req.getParameter("product-category");
        int stock = Integer.parseInt(req.getParameter("product-stock"));
        String sizes = getSelectedSizes(req);
        String imagePath = handleImageUpload(req);

        String sql = "UPDATE product SET product_name = ?, product_description = ?, price = ?, category = ?, stock = ?, available_sizes = ?, image_path = ? WHERE product_id = ?";
        try (Connection conn = DBConnection.getDbConnection();
             PreparedStatement ps = conn.prepareStatement(sql)) {
            ps.setString(1, productName);
            ps.setString(2, description);
            ps.setDouble(3, price);
            ps.setString(4, category);
            ps.setInt(5, stock);
            ps.setString(6, sizes);
            ps.setString(7, imagePath);
            ps.setInt(8, productId);
            ps.executeUpdate();
        } catch (SQLException | ClassNotFoundException e) {
            System.out.println("Error updating product: " + e.getMessage());
            throw new ServletException("Error updating product", e);
        }
    }

    private void deleteProduct(int productId) throws ServletException {
        String sql = "DELETE FROM product WHERE product_id = ?";
        try (Connection conn = DBConnection.getDbConnection();
             PreparedStatement ps = conn.prepareStatement(sql)) {
            ps.setInt(1, productId);
            ps.executeUpdate();
        } catch (SQLException | ClassNotFoundException e) {
            System.out.println("Error deleting product: " + e.getMessage());
            throw new ServletException("Error deleting product", e);
        }
    }

    private List<Product> getAllProducts() throws ServletException {
        List<Product> products = new ArrayList<>();
        String sql = "SELECT product_id, product_name, product_description, price, category, stock, available_sizes, image_path FROM product";
        try (Connection conn = DBConnection.getDbConnection();
             PreparedStatement ps = conn.prepareStatement(sql);
             ResultSet rs = ps.executeQuery()) {
            System.out.println("Executing query: " + sql);
            while (rs.next()) {
                Product product = new Product(
                    rs.getInt("product_id"),
                    rs.getString("product_name"),
                    rs.getString("product_description"),
                    rs.getDouble("price"),
                    rs.getString("category"),
                    rs.getInt("stock"),
                    rs.getString("available_sizes"),
                    rs.getString("image_path")
                );
                products.add(product);
                System.out.println("Retrieved product: " + product.getProductName() + " (ID: " + product.getProductId() + ")");
            }
        } catch (SQLException | ClassNotFoundException e) {
            System.out.println("Error fetching products: " + e.getMessage());
            throw new ServletException("Error fetching products", e);
        }
        return products;
    }

    private Product getProductById(int productId) throws ServletException {
        String sql = "SELECT product_id, product_name, product_description, price, category, stock, available_sizes, image_path FROM product WHERE product_id = ?";
        try (Connection conn = DBConnection.getDbConnection();
             PreparedStatement ps = conn.prepareStatement(sql)) {
            ps.setInt(1, productId);
            try (ResultSet rs = ps.executeQuery()) {
                if (rs.next()) {
                    return new Product(
                        rs.getInt("product_id"),
                        rs.getString("product_name"),
                        rs.getString("product_description"),
                        rs.getDouble("price"),
                        rs.getString("category"),
                        rs.getInt("stock"),
                        rs.getString("available_sizes"),
                        rs.getString("image_path")
                    );
                }
            }
        } catch (SQLException | ClassNotFoundException e) {
            System.out.println("Error fetching product: " + e.getMessage());
            throw new ServletException("Error fetching product", e);
        }
        return null;
    }

    private String getSelectedSizes(HttpServletRequest req) {
        String[] sizes = {"S", "M", "L", "XL", "2XL"};
        List<String> selectedSizes = new ArrayList<>();
        for (String size : sizes) {
            String param = req.getParameter("size-" + size.toLowerCase());
            if (param != null && !param.isEmpty()) {
                selectedSizes.add(size);
            }
        }
        return String.join(",", selectedSizes);
    }

    private String handleImageUpload(HttpServletRequest req) throws IOException, ServletException {
        Part filePart = req.getPart("product-image");
        if (filePart != null && filePart.getSize() > 0) {
            String fileName = System.currentTimeMillis() + "_" + filePart.getSubmittedFileName();
            String uploadPath = getServletContext().getRealPath("") + File.separator + UPLOAD_DIR;
            File uploadDir = new File(uploadPath);
            if (!uploadDir.exists()) uploadDir.mkdirs();
            filePart.write(uploadPath + File.separator + fileName);
            return UPLOAD_DIR + fileName;
        }
        return null;
    }
}