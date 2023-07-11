package connection;

import enums.Tables;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import models.User;

public class TableUsers {
    
    private Connection mysql;
    private final Tables table = Tables.USUARIOS;
    
    private final String cID = "id";
    private final String cName = "name";
    private final String cSurname = "surname";
    private final String cEmail = "email";
    private final String cPassword = "password";
    
    private final String login = "SELECT * FROM " + table +" where " + cEmail + " =? and "+ cPassword +" =?";

    public TableUsers() {
        mysql = new Mysql().getConnection();
    }
    
    public User getUserLogin(String email, String password) throws SQLException{
        PreparedStatement query = mysql.prepareStatement(login);
        query.setString(1, email);
        query.setString(2, password);
        
        User usuario = null;
        
        ResultSet data = query.executeQuery();
        
        
        while(data.next()){
            usuario = new User(data.getInt(cID), data.getString(cName), data.getString(cSurname), data.getString(cEmail), data.getString(cPassword));
        }
        return usuario; 
    }
}