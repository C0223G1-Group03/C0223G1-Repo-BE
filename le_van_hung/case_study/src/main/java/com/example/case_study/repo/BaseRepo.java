package com.example.case_study.repo;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class BaseRepo {
    private static final String URL = "jdbc:mysql://localhost:3307/case_study_2";
    private static final String user = "root";
    private static final String password ="mylinh0311" ;

    public static Connection createConnection(){
        Connection connection = null;
        try {
            Class.forName("com.mysql.jdbc.Driver");
            connection = DriverManager.getConnection(URL,user,password);
        } catch (ClassNotFoundException | SQLException e) {
            e.printStackTrace();
        }
        return connection;
    }
}
