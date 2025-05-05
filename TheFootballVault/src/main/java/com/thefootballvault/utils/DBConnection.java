package com.thefootballvault.utils;  
import java.sql.*;

public class DBConnection {
    private static final String DB_NAME   = "football_vault";

    private static final String URL       = "jdbc:mysql://localhost:3306/football_vault";
    private static final String USERNAME  = "root";
    private static final String PASSWORD  = "";    

    public static Connection getDbConnection() 
            throws SQLException, ClassNotFoundException {
        Class.forName("com.mysql.cj.jdbc.Driver");
        return DriverManager.getConnection(URL, USERNAME, PASSWORD);
    }
}
