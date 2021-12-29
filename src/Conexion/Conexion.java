package Conexion;

import java.sql.Connection;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;

public class Conexion {
    
    public static Connection con;
    
    @SuppressWarnings("empty-statement")
    public Connection conectar(){ 
        try {
            String bd = "db_game"; //Name BD
            String direccion="jdbc:mysql://localhost:3306/"; //URL DB
            String user="root"; //Username DB
            String password=""; //Password DB
            Class.forName("com.mysql.jdbc.Driver");
            String databaseURL = direccion + bd;
            con = java.sql.DriverManager.getConnection(databaseURL, user,password);
        } catch (SQLException | ClassNotFoundException ex) {
            Logger.getLogger(Conexion.class.getName()).log(Level.SEVERE, null, ex);
        }        
        return con;
    }
    
    public void cerrar() throws SQLException{
        if (con != null) {
            if (!con.isClosed()) {
                con.close();
            }
        }
    }    
}  

