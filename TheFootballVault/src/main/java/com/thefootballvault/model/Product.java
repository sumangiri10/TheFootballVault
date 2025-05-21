package com.thefootballvault.model;

public class Product {
    private int productId;
    private String productName;
    private String productDescription;
    private double price;
    private String category;
    private int stock;
    private String availableSizes;
    private String imagePath;

    public Product(int productId, String productName, String productDescription, double price, String category, int stock, String availableSizes, String imagePath) {
        this.productId = productId;
        this.productName = productName;
        this.productDescription = productDescription;
        this.price = price;
        this.category = category;
        this.stock = stock;
        this.availableSizes = availableSizes;
        this.imagePath = imagePath;
    }

    // Getters
    public int getProductId() { return productId; }
    public String getProductName() { return productName; }
    public String getProductDescription() { return productDescription; }
    public double getPrice() { return price; }
    public String getCategory() { return category; }
    public int getStock() { return stock; }
    public String getAvailableSizes() { return availableSizes; }
    public String getImagePath() { return imagePath; }
}