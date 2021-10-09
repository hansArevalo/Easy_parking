/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package persistencia;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import java.sql.Statement;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author EMPRESAS TROPICAL
 */
public class ConexionBD {

    //variables de  configuracion
    private String DB_driver = "";
    private String url = "";
    private String db = "";
    private String host = "";
    private String username = "";
    private String password = "";
    private Connection con = null;
    private Statement stmt = null;
    private PreparedStatement pstmt = null;
    private ResultSet rs = null;

    public ConexionBD() {
        DB_driver = "com.mysql.jdbc.Driver";
        host = "localhost:3306";
        db = "grupo1";
        url = "jdbc:mysql//" + host + "/" + db;
        username = "root";
        password = "";
        try {
            Class.forName(DB_driver);
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(ConexionBD.class.getName()).log(Level.SEVERE, null, ex);
        }

        try {
            // realizar la conexion
            con = DriverManager.getConnection(url, username, password);
            con.setTransactionIsolation(8);
            System.out.println("conectado");
        } catch (SQLException ex) {
            Logger.getLogger(ConexionBD.class.getName()).log(Level.SEVERE, null, ex);
        }

    }

    public Connection getConection() {
        return con;
    }

    //metodo  para cerrar la conexion
    public void closeConnection(Connection con) {
        if (con != null) {
            try {
                con.close();
            } catch (SQLException ex) {
                Logger.getLogger(ConexionBD.class.getName()).log(Level.SEVERE, null, ex);
            }

        }

    }

    public boolean insertarBD(String sentencia) {
        System.out.println("bien");
        try {
            stmt = con.createStatement();
            stmt.execute(sentencia);
        } catch (SQLException | RuntimeException sqlex) {
            System.out.println("Error rutina" + sqlex);
            return false;
        }
        return true;
    }

    public ResultSet consultarBD(String sentencia) {

        try {
            stmt = con.createStatement(ResultSet.TYPE_SCROLL_INSENSITIVE, ResultSet.CONCUR_READ_ONLY);
            rs = stmt.executeQuery(sentencia);
        } catch (SQLException sqlex) {
        } catch (RuntimeException rex) {
        } catch (Exception Ex) {
        }
            return rs;
        }
    

    public boolean borrarBD (String sentencia) {
       
        try {
            stmt=con.createStatement();
            stmt.execute(sentencia);
            
            
        } catch (SQLException|RuntimeException sqlex) {
            System.out.println("Error al eliminar" + sqlex);
            return false;
        }
        return true;
    }
public boolean actualizarBD(String sentencia){
     try {
            stmt=con.createStatement();
            stmt.executeUpdate(sentencia); 
        } catch (SQLException|RuntimeException sqlex) {
            System.out.println("Error al actualizar" + sqlex);
            return false;
        }
        return true;
    }
public boolean setAutoCommitBD(boolean parametro){
    try {
            con.setAutoCommit(parametro);
            
            
        } catch (SQLException sqlex) {
            System.out.println("Error al confugurar el auto commit" + sqlex.getMessage());
            return false;
        }
        return true;
    }
public void cerrarConexion (){
    closeConnection(con);
}
public boolean commitBD(){
   try {
          con.commit();
          return true;
            
        } catch (SQLException  sqlex) {
            System.out.println("Error al hacer commit" + sqlex.getMessage());
            return false;
        }
}

public boolean rollBackBD(){
   try {
          con.rollback();
          return true;
            
        } catch (SQLException  sqlex) {
            System.out.println("Error al hacer rollback" + sqlex.getMessage());
            return false;
        }
}
public static void main(String[]args){
    ConexionBD b=new ConexionBD();
    b.cerrarConexion();
}
}




