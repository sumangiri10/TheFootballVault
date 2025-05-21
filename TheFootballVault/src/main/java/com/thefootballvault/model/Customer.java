package com.thefootballvault.model;

public class Customer {
    private int customerId;
    private String fullName; 
    private String email;
    private String customerPass;
    private String phone;
    private String address;
    private String role;

    // Default constructor
    public Customer() {}

    // Constructor for registration
    public Customer(String fullName, String email, String customerPass, String phone, String address) {
        this.fullName = fullName;
        this.email = email;
        this.customerPass = customerPass;
        this.phone = phone;
        this.address = address;
        this.role = "user";
    }

    // Constructor for login (with customerId)
    public Customer(int customerId, String fullName, String email, String phone, String address, String role) {
        this.customerId = customerId;
        this.fullName = fullName;
        this.email = email;
        this.phone = phone;
        this.address = address;
        this.role = role;
    }

    // Getters and Setters
    public int getCustomerId() { return customerId; }
    public void setCustomerId(int customerId) { this.customerId = customerId; }
    public String getFullName() { return fullName; } 
    public void setFullName(String fullName) { this.fullName = fullName; } 
    public String getEmail() { return email; }
    public void setEmail(String email) { this.email = email; }
    public String getCustomerPass() { return customerPass; }
    public void setCustomerPass(String customerPass) { this.customerPass = customerPass; }
    public String getPhone() { return phone; }
    public void setPhone(String phone) { this.phone = phone; }
    public String getAddress() { return address; }
    public void setAddress(String address) { this.address = address; }
    public String getRole() { return role; }
    public void setRole(String role) { this.role = role; }
}