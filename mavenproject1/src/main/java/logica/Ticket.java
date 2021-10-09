/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package logica;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Date;
import java.util.List;
import java.util.concurrent.TimeUnit;
import persistencia.ConexionBD;

/**
 *
 * @author EMPRESAS TROPICAL
 */
public class Ticket {
    private int N_ticket;
    private String fecha_entrada;
    private String fecha_salida;
    private String n_estacinamiento;
    private String tiempo_en_estacionamiento;
    private float tarifa_hora;
    private float tarifa_minuto;
    private float total_a_pagar;

    public Ticket() {
    }

    public Ticket(int N_ticket, String fecha_entrada, String fecha_salida, String n_estacinamiento, String tiempo_en_estacionamiento, float tarifa_hora, float tarifa_minuto, float total_a_pagar) {
        this.N_ticket = N_ticket;
        this.fecha_entrada = fecha_entrada;
        this.fecha_salida = fecha_salida;
        this.n_estacinamiento = n_estacinamiento;
        this.tiempo_en_estacionamiento = tiempo_en_estacionamiento;
        this.tarifa_hora = tarifa_hora;
        this.tarifa_minuto = tarifa_minuto;
        this.total_a_pagar = total_a_pagar;
    }

    public int getN_ticket() {
        return N_ticket;
    }

    public void setN_ticket(int N_ticket) {
        this.N_ticket = N_ticket;
    }

    public String getFecha_entrada() {
        return fecha_entrada;
    }

    public void setFecha_entrada(String fecha_entrada) {
        this.fecha_entrada = fecha_entrada;
    }

    public String getFecha_salida() {
        return fecha_salida;
    }

    public void setFecha_salida(String fecha_salida) {
        this.fecha_salida = fecha_salida;
    }

    public String getN_estacinamiento() {
        return n_estacinamiento;
    }

    public void setN_estacinamiento(String n_estacinamiento) {
        this.n_estacinamiento = n_estacinamiento;
    }

    public String getTiempo_en_estacionamiento() {
        return tiempo_en_estacionamiento;
    }

    public void setTiempo_en_estacionamiento(String tiempo_en_estacionamiento) {
        this.tiempo_en_estacionamiento = tiempo_en_estacionamiento;
    }

    public float getTarifa_hora() {
        return tarifa_hora;
    }

    public void setTarifa_hora(float tarifa_hora) {
        this.tarifa_hora = tarifa_hora;
    }

    public float getTarifa_minuto() {
        return tarifa_minuto;
    }

    public void setTarifa_minuto(float tarifa_minuto) {
        this.tarifa_minuto = tarifa_minuto;
    }

    public float getTotal_a_pagar() {
        return total_a_pagar;
    }

    public void setTotal_a_pagar(float total_a_pagar) {
        this.total_a_pagar = total_a_pagar;
    }

    
    public void  tiempo_en_estacionamiento (){
        Calendar calendario1=Calendar.getInstance();
       Calendar calendario2=Calendar.getInstance();
       calendario1.set(2021, 8, 29, 16, 41);
       Date fecha=calendario1.getTime();
       long diferencia =Math.abs(calendario2.getTimeInMillis()-fecha.getTime());
        long dias=TimeUnit.MILLISECONDS.toDays(diferencia);
       long horas=TimeUnit.MILLISECONDS.toHours(diferencia);
       long minutos=TimeUnit.MILLISECONDS.toMinutes(diferencia);
       
        
    }
     public void  tarifa_minuto (){
         
          tarifa_minuto=tarifa_hora/60;
    }
     public void total_a_pagar (){
         tarifa_minuto=tarifa_hora/60;
          Calendar calendario1=Calendar.getInstance();
       Calendar calendario2=Calendar.getInstance();
       calendario1.set(2021, 8, 29, 16, 41);
       Date fecha=calendario1.getTime();
       long diferencia =Math.abs(calendario2.getTimeInMillis()-fecha.getTime());
        long dias=TimeUnit.MILLISECONDS.toDays(diferencia);
       long horas=TimeUnit.MILLISECONDS.toHours(diferencia);
       long minutos=TimeUnit.MILLISECONDS.toMinutes(diferencia);
       
         
        total_a_pagar=tarifa_minuto*minutos;
          
    }
 public void llenarTicket(int N_ticket, String fecha_entrada,String fecha_salida, String n_estacionamiento,String tiempo_en_estacionamiento, float tarifa_hora,float tarifa_minuto, float total_a_pagar) {
        this.N_ticket=N_ticket;
        this.fecha_entrada=fecha_entrada;
        this.fecha_salida=fecha_salida;
        this.n_estacinamiento=n_estacionamiento;
        this.tiempo_en_estacionamiento=tiempo_en_estacionamiento;
        this.tarifa_hora=tarifa_hora;
        this.tarifa_minuto=tarifa_minuto;
        this.total_a_pagar=total_a_pagar;
     }     
 //metodo actualizar Ticket.
    public boolean actualizarTicket(){
  ConexionBD conexion=new ConexionBD();
  String  sentencia="UPDATE'ticket'SET=N_ticket'"+this.N_ticket+"',fecha_entrada='"+this.fecha_entrada+"',fecha_salida='"+this.fecha_salida+"',n_estacionamiento='"+this.n_estacinamiento+"',tiempo_en_estacionamiento='"+this.tiempo_en_estacionamiento+"'tarifa_hora='"+this.tarifa_hora+"',tarifa_minuto='"+this.tarifa_minuto+"',total_a_pagar='"+this.total_a_pagar+"'WHERE doc_cliente="+this.N_ticket+";";
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
    //listar registros.
    public List<Ticket>listarTicket()throws SQLException{
         ConexionBD conexion=new ConexionBD();
         List<Ticket> listaTicket=new ArrayList<>();
         String sql="selec*from ticket  order by N_ticket asc";
         ResultSet rs=conexion.consultarBD(sql);
        Ticket t; 
        while(rs.next()){
            t=new Ticket();
            t.setN_ticket(rs.getInt("N_ticket"));
            t.setFecha_entrada(rs.getString("fecha_entrada"));
            t.setFecha_salida(rs.getString("fecha_salida"));
            t.setN_estacinamiento(rs.getString("n_estacionamiento"));
            t.setTiempo_en_estacionamiento(rs.getString("tiempo_en_estacionamiento"));
            t.setTarifa_hora(rs.getFloat("tarifa_hora"));
             t.setTarifa_minuto(rs.getFloat("tarifa_inuto"));
             t.setTotal_a_pagar(rs.getFloat("total_a_pagar"));
            
            listaTicket.add(t);
        }
        conexion.cerrarConexion();
        return listaTicket;

    }
    //metodo para buscar  por  llave primaria.

    
    public Ticket getTicket() throws SQLException {
        ConexionBD conexion = new ConexionBD();
        String sql = "selec*from ticket where doc_cliente='" + this.N_ticket + "'";
        ResultSet rs = conexion.consultarBD(sql);
        if (rs.next()) {
            this.N_ticket = rs.getInt("N_ticket");
            this.fecha_entrada = rs.getString("fecha_entrada");
            this.fecha_salida = rs.getString("fecha_salida");
            this.n_estacinamiento = rs.getString("n_estacinamiento");
            this.tiempo_en_estacionamiento=rs.getString("tiempo_en_estacionamiento");
            this.tarifa_hora = rs.getFloat("tarifa_hora");
             this.tarifa_minuto = rs.getFloat("tarifa_minuto");
            this.total_a_pagar = rs.getFloat("total_a_pagar");

            conexion.cerrarConexion();
            return this;
        } else {
            conexion.cerrarConexion();
            return null;
        }
    }

    @Override
    public String toString() {
        return "Ticket{" + "N_ticket=" + N_ticket + ", fecha_entrada=" + fecha_entrada + ", fecha_salida=" + fecha_salida + ",n_estacinamiento=" + n_estacinamiento + ",tiempo_en_estacionamiento="+tiempo_en_estacionamiento+", tarifa_hora=" + tarifa_hora + ",tarifa_minuto="+tarifa_minuto+", total_a_pagar=" + total_a_pagar + '}';
    }
    
 }


