/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package logica;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import persistencia.ConexionBD;

/**
 *
 * @author EMPRESAS TROPICAL
 */
public class Vehiculo {
    
    //atributos.
    private String placa;
    private String marca;
    private String tipo_vehiculo;

    public Vehiculo() {
    }

    public Vehiculo(String placa, String marca, String tipo_vehiculo) {
        this.placa = placa;
        this.marca = marca;
        this.tipo_vehiculo = tipo_vehiculo;
    }

    public String getPlaca() {
        return placa;
    }

    public void setPlaca(String placa) {
        this.placa = placa;
    }

    public String getMarca() {
        return marca;
    }

    public void setMarca(String marca) {
        this.marca = marca;
    }

    public String getTipo_vehiculo() {
        return tipo_vehiculo;
    }

    public void setTipo_vehiculo(String tipo_vehiculo) {
        this.tipo_vehiculo = tipo_vehiculo;
    }
    public void llenarVehiculo(String placa,String marca,String tipo_vehiculo){
        this.placa = placa;
        this.marca = marca;
        this.tipo_vehiculo = tipo_vehiculo;
    }
   //metodos del crud.
    public boolean guardarVehiculo(){
        ConexionBD conexion=new ConexionBD();
        System.out.println("hecho");
        String sentencia = "INSERT INTO vehiculo(placa,marca,tipo_vehiculo)"+"VALUES('"+this.placa+"','"+this.marca+"','"+this.tipo_vehiculo+"');";
        if (conexion.setAutoCommitBD(false)) {
            if (conexion.insertarBD(sentencia)) {
                conexion.commitBD();
                conexion.cerrarConexion();
                return true;
                
            }else{
                conexion.rollBackBD();
                conexion.cerrarConexion();
                return false;
            }
            
        }else{
           conexion.cerrarConexion();
           return false;
        }
                
    } 
    //borrar  vehiculo
     public boolean borrarVehiculo(String placa){
        String sentencia="DELETE FROM 'vehiculo'WHERE'placa'='"+placa+"'";
        ConexionBD conexion=new ConexionBD();
         if (conexion.setAutoCommitBD(false)) {
            if (conexion.actualizarBD(sentencia)) {
                conexion.commitBD();
                conexion.cerrarConexion();
                return true;
                
            }else{
                conexion.rollBackBD();
                conexion.cerrarConexion();
                return false;
            }
            
        }else{
           conexion.cerrarConexion();
           return false;
        }
    }
     //metodo para actualizar vehiculo.
     public boolean actualizarVehiculo(){
  ConexionBD conexion=new ConexionBD();
  String  sentencia="UPDATE'vehiculo'SET=placa'"+this.placa+"',marca='"+this.marca+"',tipo_vehiculo='"+this.tipo_vehiculo+"'WHERE placa="+this.placa+";";
  if (conexion.setAutoCommitBD(false)) {
            if (conexion.actualizarBD(sentencia)) {
                conexion.commitBD();
                conexion.cerrarConexion();
                return true;
                
            }else{
                conexion.rollBackBD();
                conexion.cerrarConexion();
                return false;
            }
            
        }else{
           conexion.cerrarConexion();
           return false;
        }
  
    }
    //metodo para listar vehiculo
     public List<Vehiculo>listarCliente()throws SQLException{
         ConexionBD conexion=new ConexionBD();
         List<Vehiculo> listaVehiculo=new ArrayList<>();
         String sql="selec*from vehiculo  order by placa asc";
         ResultSet rs=conexion.consultarBD(sql);
        Vehiculo v; 
        while(rs.next()){
            v=new Vehiculo();
           
            v.setPlaca(rs.getString("placa"));
            v.setMarca(rs.getString("marca"));
            v.setTipo_vehiculo(rs.getString("tipo_vehiculo"));
            listaVehiculo.add(v);
        }
        conexion.cerrarConexion();
        return listaVehiculo;

    }
     //  metodo para buscar por  llave  primaria
      public Vehiculo getVehiculo()throws SQLException {
        ConexionBD conexion=new ConexionBD();
         String sql="selec*from vehiculo where placa='"+this.placa+"'";
        ResultSet rs=conexion.consultarBD(sql);
        if (rs.next()) {
           
            this.placa=rs.getString("placa");
            this.marca=rs.getString("marca");
            this.tipo_vehiculo=rs.getString("Tipo_vehiculo");
             
            conexion.cerrarConexion();
            return this;
        }else{
            conexion.cerrarConexion();
            return null;
        }
    }

    @Override
    public String toString() {
        return "Vehiculo{" + "placa=" + placa + ", marca=" + marca + ", tipo_vehiculo=" + tipo_vehiculo + '}';
    }

}

