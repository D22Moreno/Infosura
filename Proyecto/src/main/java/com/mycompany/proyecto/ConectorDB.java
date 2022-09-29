 /**
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.mycompany.proyecto;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

/**
 *
 * @author DM
 */
public class ConectorDB {
 
    private final String URL_DB = "jdbc:mysql://localhost:3306/";
    private final String USER_NAME_DB = "root";
    private final String PASSWORD_DB = "mysql2020";
    private final String NAME_DB = "infosura"; 
    protected Connection coon;     
    
    public ConectorDB () throws SQLException, ClassNotFoundException {
        if(coon == null) {
            Class.forName("com.mysql.cj.jdbc.Driver");
            coon = DriverManager.getConnection(URL_DB + NAME_DB, USER_NAME_DB, PASSWORD_DB);
        }
    }
}