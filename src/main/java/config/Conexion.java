/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package config;
import java.sql.*;

/**
 *
 * @author servilinea
 */
public class Conexion {
    public Connection getConnection(){
        try{
            Connection conexion = DriverManager.getConnection("jdbc:mysql://localhost:3306/codoacodo",
                    "gime","1234");
            return conexion;
        }catch(SQLException e){
            System.out.println(e.toString());
            return null;
        }
    }
    
}
