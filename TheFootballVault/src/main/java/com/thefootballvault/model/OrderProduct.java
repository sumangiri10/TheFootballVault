package com.thefootballvault.model;

public class OrderProduct {
    private int orderId;
    private int productId;
    private int quantity;
    private String productName;
    private String imagePath;
    private double price;
    private String size;

    // Constructor
    public OrderProduct(int orderId, int productId, int quantity, String productName, String imagePath, double price, String size) {
        this.orderId = orderId;
        this.productId = productId;
        this.quantity = quantity;
        this.productName = productName;
        this.imagePath = imagePath;
        this.price = price;
        this.size = size;
    }

    // Getters
    public int getOrderId() { return orderId; }
    public int getProductId() { return productId; }
    public int getQuantity() { return quantity; }
    public String getProductName() { return productName; }
    public String getImagePath() { return imagePath; }
    public double getPrice() { return price; }
    public String getSize() { return size; }
    public double getTotal() { return quantity * price; }
}