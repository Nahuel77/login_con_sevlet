package models;

import java.util.LinkedHashMap;
import java.util.Map;

/*
 * @author Carlos Nahuel Calcara
 */

public class User {
    private int id;
    private String name;
    private String surname;
    private String email;
    private String password;
    
    public User(int id, String name, String surname, String email, String password) {
        this.id = id;
        this.name = name;
        this.surname = surname;
        this.email = email;
        this.password = password;
    }
    
    public Map<String, Object> getUserData(){
        Map<String, Object> result = new LinkedHashMap<>();
        result.put("id_usuario", id);
        result.put("name", name);
        result.put("surname", surname);
        result.put("email", email);
        return result;
    }

}
