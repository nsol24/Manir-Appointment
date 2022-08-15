package db.connection;

import java.sql.*;

public class ConnectionManager {
    static Connection con;
    //private static final String DB_DRIVER = "com.mysql.jdbc.Driver";
    //private static final String DB_CONNECTION = "jdbc:mysql://localhost/manir_appsystem";
    //private static final String DB_USER = "root";
    //public static final String DB_PASSWORD = "";
    private static final String DB_DRIVER = "com.mysql.cj.jdbc.Driver";
	private static final String DB_CONNECTION = "jdbc:mysql://us-cdbr-east-06.cleardb.net:3306/heroku_7bb9908b8572b7e";
	private static final String DB_USER = "b54a7607667a7f";
	public static final String DB_PASSWORD = "213f94a3";
    public static Connection getConnection() {
        try {
            Class.forName(DB_DRIVER); //1.load the driver
            try {
                con = DriverManager.getConnection(DB_CONNECTION,DB_USER,DB_PASSWORD); //2.establish connection
                System.out.println("Connected");
            }
            catch (SQLException ex) {
                ex.printStackTrace();
            }

        }
        catch  (ClassNotFoundException e) {
            System.out.println(e);
        }
        return con;
    }
}