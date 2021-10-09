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
public class Cliente {

    private int doc_cliente;
    private String nombre;
    private String apellido;
    private String telefono;
    private String direccion;
    private String correo;

    public Cliente() {
    }

    public Cliente(int doc_cliente, String nombre, String apellido, String telefono, String direccion, String correo) {
        this.doc_cliente = doc_cliente;
        this.nombre = nombre;
        this.apellido = apellido;
        this.telefono = telefono;
        this.direccion = direccion;
        this.correo = correo;
    }

    public int getDoc_cliente() {
        return doc_cliente;
    }

    public void setDoc_cliente(int doc_cliente) {
        this.doc_cliente = doc_cliente;
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public String getApellido() {
        return apellido;
    }

    public void setApellido(String apellido) {
        this.apellido = apellido;
    }

    public String getTelefono() {
        return telefono;
    }

    public void setTelefono(String telefono) {
        this.telefono = telefono;
    }

    public String getDireccion() {
        return direccion;
    }

    public void setDireccion(String direccion) {
        this.direccion = direccion;
    }

    public String getCorreo() {
        return correo;
    }

    public void setCorreo(String correo) {
        this.correo = correo;
    }

    public void llenarCliente(int doc_cliente, String nombre, String apellido, String telefono, String direccion, String correo) {
        this.doc_cliente = doc_cliente;
        this.nombre = nombre;
        this.apellido = apellido;
        this.telefono = telefono;
        this.direccion = direccion;
        this.correo = correo;

    }
    //metodos de CRUD
    // metodo para  guardar  cliente.

    public boolean guardarCliente() {
        ConexionBD conexion=new ConexionBD();
        System.out.println("hecho");
        String sentencia = "INSERT INTO cliente(doc_cliente,nombre,apellido,telefono,direccion,correo)"
                + "VALUES('" + this.doc_cliente + "','" + nombre + "','" + apellido + "','" + telefono + "','" + direccion + "','" + correo + "');";
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
    //  metodo  para borrar
    public boolean borrarCliente(int doc_cliente){
        String sentencia="DELETE FROM 'cliente'WHERE'doc_cliente'='"+doc_cliente+"'";
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
    //metodo actualizar cliente
    public boolean actualizarCliente(){
  ConexionBD conexion=new ConexionBD();
  String  sentencia="UPDATE'cliente'SET=nombre'"+this.nombre+"',apellido='"+this.apellido+"',telefono='"+this.telefono+"',direccion='"+this.direccion+"',correo='"+this.correo+"'WHERE doc_cliente="+this.doc_cliente+";";
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
// listar registros.
    public List<Cliente>listarCliente()throws SQLException{
         ConexionBD conexion=new ConexionBD();
         List<Cliente> listaCliente=new ArrayList<>();
         String sql="selec*from cliente  order by doc_cliente asc";
         ResultSet rs=conexion.consultarBD(sql);
        Cliente c; 
        while(rs.next()){
            c=new Cliente();
            c.setDoc_cliente(rs.getInt("doc_cliente"));
            c.setNombre(rs.getString("nombre"));
            c.setApellido(rs.getString("apellido"));
            c.setTelefono(rs.getString("telefono"));
            c.setDireccion(rs.getString("direccion"));
            c.setCorreo(rs.getString("correo"));
            listaCliente.add(c); 
        }
        conexion.cerrarConexion();
        return listaCliente;

    }
    //metodo para buscar  por  llave primaria.

    
    public Cliente getCliente()throws SQLException {
        ConexionBD conexion=new ConexionBD();
         String sql="selec*from cliente where doc_cliente='"+this.doc_cliente+"'";
        ResultSet rs=conexion.consultarBD(sql);
        if (rs.next()) {
            this.doc_cliente=rs.getInt("doc_cliente");
            this.nombre=rs.getString("nombre");
            this.apellido=rs.getString("apellido");
            this.telefono=rs.getString("telefono");
             this.direccion=rs.getString("direccion");
              this.correo=rs.getString("correo");
            conexion.cerrarConexion();
            return this;
        }else{
            conexion.cerrarConexion();
            return null;
        }
    }

    @Override
    public String toString() {
        return "Cliente{" + "doc_cliente=" + doc_cliente + ", nombre=" + nombre + ", apellido=" + apellido + ", telefono=" + telefono + ", direccion=" + direccion + ", correo=" + correo + '}';
    }
    
}
