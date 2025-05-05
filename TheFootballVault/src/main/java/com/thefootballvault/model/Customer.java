package com.thefootballvault.model;

public class Customer {
    private int customerId;
    private String username; 
    private String email;
    private String customerPass;
    private String role;

    // Default constructor
    public Customer() {}

    // Constructor for registration
    public Customer(String username, String email, String customerPass) {
        this.username = username;
        this.email = email;
        this.customerPass = customerPass;
        this.role = "user";
    }

    // Getters and Setters
    public int getCustomerId() { return customerId; }
    public void setCustomerId(int customerId) { this.customerId = customerId; }
    public String getUsername() { return username; }
    public void setUsername(String username) { this.username = username; }
    public String getEmail() { return email; }
    public void setEmail(String email) { this.email = email; }
    public String getCustomerPass() { return customerPass; }
    public void setCustomerPass(String customerPass) { this.customerPass = customerPass; }
    public String getRole() { return role; }
    public void setRole(String role) { this.role = role; }
}