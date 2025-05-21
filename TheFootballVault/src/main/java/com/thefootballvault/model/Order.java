package com.thefootballvault.model;

public class Order {
    private int orderId;
    private int customerId;
    private String customerName;
    private String customerEmail;
    private String customerPhone;
    private String shippingAddress;
    private String orderDate;
    private String orderStatus;
    private String paymentMethod;
    private String paymentStatus;
    private double totalAmount;
    private int itemCount;
    private String trackingNumber;
    private String adminNotes;

    // Constructor
    public Order(int orderId, int customerId, String customerName, String customerEmail, String customerPhone,
                 String shippingAddress, String orderDate, String orderStatus, String paymentMethod,
                 String paymentStatus, double totalAmount, int itemCount, String trackingNumber, String adminNotes) {
        this.orderId = orderId;
        this.customerId = customerId;
        this.customerName = customerName;
        this.customerEmail = customerEmail;
        this.customerPhone = customerPhone;
        this.shippingAddress = shippingAddress;
        this.orderDate = orderDate;
        this.orderStatus = orderStatus;
        this.paymentMethod = paymentMethod;
        this.paymentStatus = paymentStatus;
        this.totalAmount = totalAmount;
        this.itemCount = itemCount;
        this.trackingNumber = trackingNumber;
        this.adminNotes = adminNotes;
    }

    // Getters and setters
    public int getOrderId() { return orderId; }
    public int getCustomerId() { return customerId; }
    public String getCustomerName() { return customerName; }
    public String getCustomerEmail() { return customerEmail; }
    public String getCustomerPhone() { return customerPhone; }
    public String getShippingAddress() { return shippingAddress; }
    public String getOrderDate() { return orderDate; }
    public String getOrderStatus() { return orderStatus; }
    public String getPaymentMethod() { return paymentMethod; }
    public String getPaymentStatus() { return paymentStatus; }
    public double getTotalAmount() { return totalAmount; }
    public int getItemCount() { return itemCount; }
    public String getTrackingNumber() { return trackingNumber; }
    public String getAdminNotes() { return adminNotes; }

    public double getSubtotal() { return totalAmount - 50.0 - 80.0; } 
    public double getTax() { return 80.0; } 
}