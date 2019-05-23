/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.cientooncemil.hibernate.model.unoauno;

import java.util.Objects;

/**
 *
 * @author mmino
 */
public class Direccion {

    private int id;
    private String calle;
    private int numero;

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getCalle() {
        return calle;
    }

    public void setCalle(String calle) {
        this.calle = calle;
    }

    public int getNumero() {
        return numero;
    }

    public void setNumero(int numero) {
        this.numero = numero;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) {
            return true;
        }
        if (o == null || getClass() != o.getClass()) {
            return false;
        }
        Direccion direccion = (Direccion) o;
        return id == direccion.id
                && Objects.equals(calle, direccion.calle)
                && Objects.equals(numero, direccion.numero);

    }

    @Override
    public int hashCode() {

        return Objects.hash(id, calle, numero);
    }

    @Override
    public String toString() {
        return "Direccion{"
                + "id=" + id
                + ", nombre='" + calle + '\''
                + ", numero='" + numero + '\''
                + '}';
    }

}
