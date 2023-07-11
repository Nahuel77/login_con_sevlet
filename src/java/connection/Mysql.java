package connection;

import java.sql.*;

/*
 * @author Carlos Nahuel Clacara
 */

public class Mysql {
    
    private Connection connection = null;
    private final String url = "jdbc:mysql://localhost:3306/codoacodo";
    private final String user = "test";
    private final String password = "1234";
    
    public Mysql() {
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
        } catch (ClassNotFoundException err){
            err.printStackTrace();
        }
        
        try {
            connection = DriverManager.getConnection(url, user, password);
        } catch (SQLException err) {
            err.printStackTrace();
        }
        
    }
    
    public Connection getConnection() {
        return connection;
    }
    
}
