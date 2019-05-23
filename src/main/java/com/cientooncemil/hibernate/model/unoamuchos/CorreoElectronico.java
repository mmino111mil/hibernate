/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.cientooncemil.hibernate.model.unoamuchos;

import com.cientooncemil.hibernate.model.Cliente;

/**
 *
 * @author mmino
 */
public class CorreoElectronico {
   private int idCorreo;
     private String direccionCorreo;
     private Cliente cliente;

     public CorreoElectronico() {

     }

    public int getIdCorreo() {
        return idCorreo;
    }

    public void setIdCorreo(int idCorreo) {
        this.idCorreo = idCorreo;
    }

    public String getDireccionCorreo() {
        return direccionCorreo;
    }

    public void setDireccionCorreo(String direccionCorreo) {
        this.direccionCorreo = direccionCorreo;
    }

    public Cliente getCliente() {
        return cliente;
    }

    public void setCliente(Cliente cliente) {
        this.cliente = cliente;
    }

    @Override
    public String toString() {
        return "CorreoElectronico{" + "idCorreo=" + idCorreo + ", direccionCorreo=" + direccionCorreo + ", cliente=" + cliente.getNombre() + '}';
    }



}
