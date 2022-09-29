/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.mycompany.proyecto.entitys;

import com.mycompany.proyecto.ConectorDB;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

/**
 *
 * @author DM
 */
public class Usuario extends ConectorDB{

    private int idUsuario;
    private String tipoDocumentoUsuraio;
    private String numDocumentoUsuraio;
    private String nomUsuraio;
    private String apelCliente;
    private String telUsuraio;
    private String mailUsuraio;
    private int rol_idRol;
    private int cargos_idcargos;
    private String password;
    private String confpassword;

    public Usuario() throws SQLException, ClassNotFoundException {
        super();
    }
    
    

    /**
     * @return the idUsuario
     */
    public int getIdUsuario() {
        return idUsuario;
    }
    
    public List<Usuario> findAll () throws SQLException, ClassNotFoundException {
        PreparedStatement ps = super.coon.prepareStatement("SELECT * FROM usuarios");
        ResultSet rs = ps.executeQuery();
        List<Usuario> users = new ArrayLits ();
        while(rs.next()){
            Usuario usuarioData = new Usuario();
            usuarioData.setIdUsuario(rs.getInt(idUsuario));
            usuarioData.setNomUsuraio(rs.getString(nomUsuraio));
            usuarioData.setApelCliente(rs.getString(apelCliente));
            usuarioData.setRol_idRol(rs.getInt(rol_idRol));
            usuarioData.setPassword(rs.getString(password));
            users.add(usuarioData);
        }
        return users;
    }
    
    
    /**
     * @param idUsuario the idUsuario to set
     */
    public void setIdUsuario(int idUsuario) {
        this.idUsuario = idUsuario;
    }

    /**
     * @return the tipoDocumentoUsuraio
     */
    public String getTipoDocumentoUsuraio() {
        return tipoDocumentoUsuraio;
    }

    /**
     * @param tipoDocumentoUsuraio the tipoDocumentoUsuraio to set
     */
    public void setTipoDocumentoUsuraio(String tipoDocumentoUsuraio) {
        this.tipoDocumentoUsuraio = tipoDocumentoUsuraio;
    }

    /**
     * @return the numDocumentoUsuraio
     */
    public String getNumDocumentoUsuraio() {
        return numDocumentoUsuraio;
    }

    /**
     * @param numDocumentoUsuraio the numDocumentoUsuraio to set
     */
    public void setNumDocumentoUsuraio(String numDocumentoUsuraio) {
        this.numDocumentoUsuraio = numDocumentoUsuraio;
    }

    /**
     * @return the nomUsuraio
     */
    public String getNomUsuraio() {
        return nomUsuraio;
    }

    /**
     * @param nomUsuraio the nomUsuraio to set
     */
    public void setNomUsuraio(String nomUsuraio) {
        this.nomUsuraio = nomUsuraio;
    }

    /**
     * @return the apelCliente
     */
    public String getApelCliente() {
        return apelCliente;
    }

    /**
     * @param apelCliente the apelCliente to set
     */
    public void setApelCliente(String apelCliente) {
        this.apelCliente = apelCliente;
    }

    /**
     * @return the telUsuraio
     */
    public String getTelUsuraio() {
        return telUsuraio;
    }

    /**
     * @param telUsuraio the telUsuraio to set
     */
    public void setTelUsuraio(String telUsuraio) {
        this.telUsuraio = telUsuraio;
    }

    /**
     * @return the mailUsuraio
     */
    public String getMailUsuraio() {
        return mailUsuraio;
    }

    /**
     * @param mailUsuraio the mailUsuraio to set
     */
    public void setMailUsuraio(String mailUsuraio) {
        this.mailUsuraio = mailUsuraio;
    }

    /**
     * @return the rol_idRol
     */
    public int getRol_idRol() {
        return rol_idRol;
    }

    /**
     * @param rol_idRol the rol_idRol to set
     */
    public void setRol_idRol(int rol_idRol) {
        this.rol_idRol = rol_idRol;
    }

    /**
     * @return the cargos_idcargos
     */
    public int getCargos_idcargos() {
        return cargos_idcargos;
    }

    /**
     * @param cargos_idcargos the cargos_idcargos to set
     */
    public void setCargos_idcargos(int cargos_idcargos) {
        this.cargos_idcargos = cargos_idcargos;
    }

    /**
     * @return the password
     */
    public String getPassword() {
        return password;
    }

    /**
     * @param password the password to set
     */
    public void setPassword(String password) {
        this.password = password;
    }

    /**
     * @return the confpassword
     */
    public String getConfpassword() {
        return confpassword;
    }

    /**
     * @param confpassword the confpassword to set
     */
    public void setConfpassword(String confpassword) {
        this.confpassword = confpassword;
    }

    
}
