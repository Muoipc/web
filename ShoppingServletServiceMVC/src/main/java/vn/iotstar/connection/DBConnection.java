package vn.iotstar.connection;

import java.sql.Connection;
import java.sql.DriverManager;

public class DBConnection {
    // Cấu hình MySQL (mặc định cho máy local)
    private static final String DRIVER_MYSQL = "com.mysql.cj.jdbc.Driver";
    private static final String DB_URL_MYSQL = "jdbc:mysql://localhost:3306/ServletCRUDMVC?useSSL=false&allowPublicKeyRetrieval=true&serverTimezone=Asia/Ho_Chi_Minh";
    private static final String DB_URL_MYSQL_ALT = "jdbc:mysql://localhost:3306/WebDB?useSSL=false&allowPublicKeyRetrieval=true&serverTimezone=Asia/Ho_Chi_Minh";
    private static final String USER_MYSQL = "root";
    private static final String PASS_MYSQL = "123456";

    // Cấu hình SQL Server (dự phòng)
    private static final String DRIVER_SQLSERVER = "com.microsoft.sqlserver.jdbc.SQLServerDriver";
    private static final String DB_URL_SQLSERVER = "jdbc:sqlserver://localhost:1433;databaseName=ServletCRUDMVC;encrypt=true;trustServerCertificate=true;";
    private static final String USER_SQLSERVER = "sa";
    private static final String PASS_SQLSERVER = "123456";

    public Connection getConnection() {
        Connection conn = null;
        try {
            Class.forName(DRIVER_MYSQL);
            conn = DriverManager.getConnection(DB_URL_MYSQL, USER_MYSQL, PASS_MYSQL);
        } catch (Exception e) {
            try {
                Class.forName(DRIVER_MYSQL);
                conn = DriverManager.getConnection(DB_URL_MYSQL_ALT, USER_MYSQL, PASS_MYSQL);
            } catch (Exception ex1) {
                try {
                    Class.forName(DRIVER_SQLSERVER);
                    conn = DriverManager.getConnection(DB_URL_SQLSERVER, USER_SQLSERVER, PASS_SQLSERVER);
                } catch (Exception ex2) {
                    System.err.println("Lỗi kết nối CSDL: " + ex2.getMessage());
                }
            }
        }
        return conn;
    }

    public static void main(String[] args) {
        Connection conn = new DBConnection().getConnection();
        if (conn != null) {
            System.out.println("Kết nối CSDL thành công!");
        } else {
            System.out.println("Kết nối CSDL thất bại!");
        }
    }
}
