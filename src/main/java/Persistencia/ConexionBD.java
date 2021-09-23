/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Persistencia;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;

/**
 *
 * @author ASUS_
 */
public class ConexionBD {
    
    private String DB_driver="";
    private String url="";
    private String db="";
    private String host="";
    private String username="";
    private String password="";
    
    private Connection con=null;
    private Statement stmt = null;
    private PreparedStatement pstmt=null;
    private ResultSet rs= null;
    

    
    
}
