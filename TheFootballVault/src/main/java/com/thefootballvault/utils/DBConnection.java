package com.thefootballvault.utils;

import java.sql.*;

public class DBConnection {
    private static final String DB_NAME   = "football_vault"; 
    private static final String URL       = "jdbc:mysql://localhost:3306/" + DB_NAME;
    private static final String USERNAME  = "root"; 
    private static final String PASSWORD  = "";       

    public static Connection getDbConnection() 
            throws SQLException, ClassNotFoundException {
        Class.forName("com.mysql.cj.jdbc.Driver");
        return DriverManager.getConnection(URL, USERNAME, PASSWORD);
    }

    public static void testConnection() {
        try (Connection conn = getDbConnection()) {
            System.out.println("Connection successful: " + conn);
            if (!conn.isClosed()) {
                System.out.println("Database connection is active.");
            }
        } catch (Exception e) {
            e.printStackTrace();
            System.out.println("Connection failed: " + e.getMessage());
        }
    }

    public static void main(String[] args) {
        testConnection(); 
    }
}