package com.cientooncemil.hibernate.model;

import com.cientooncemil.hibernate.model.muchosamuchos.Rol;
import com.cientooncemil.hibernate.model.unoauno.Direccion;
import com.cientooncemil.hibernate.model.muchosauno.Pais;
import com.cientooncemil.hibernate.model.unoamuchos.CorreoElectronico;
import java.util.HashSet;
import java.util.Objects;
import java.util.Set;

public class Cliente {

    private int id;
    private String nombre;
    private String apellido;
    private Set<CorreoElectronico> correosElectronicos;
    private Direccion direccion;
    private Pais pais;
    private Set<Rol> roles=new HashSet();

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
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

    public Direccion getDireccion() {
        return direccion;
    }

    public void setDireccion(Direccion direccion) {
        this.direccion = direccion;
    }

    public Pais getPais() {
        return pais;
    }

    public void setPais(Pais pais) {
        this.pais = pais;
    }

    public Set<CorreoElectronico> getCorreosElectronicos() {
        return correosElectronicos;
    }

    public void setCorreosElectronicos(Set<CorreoElectronico> correosElectronicos) {
        this.correosElectronicos = correosElectronicos;
    }

    public Set<Rol> getRoles() {
        return roles;
    }

    public void setRoles(Set<Rol> roles) {
        this.roles = roles;
    }
    
    

    @Override
    public boolean equals(Object o) {
        if (this == o) {
            return true;
        }
        if (o == null || getClass() != o.getClass()) {
            return false;
        }
        Cliente cliente = (Cliente) o;
        return id == cliente.id
                && Objects.equals(nombre, cliente.nombre)
                && Objects.equals(apellido, cliente.apellido)
                && Objects.equals(pais, cliente.pais)
                && Objects.equals(correosElectronicos, cliente.correosElectronicos)
                && Objects.equals(direccion, cliente.direccion);
    }
    


    @Override
    public String toString() {
        return "Cliente{"
                + "id=" + id
                + ", nombre='" + nombre + '\''
                + ", apellido='" + apellido + '\''
                + ", direccion='" + direccion + '\''
                + ", correosElectronicos='" + correosElectronicos + '\''
                + ", pais='" + pais + '\''
                + '}';
    }

    @Override
    public int hashCode() {
        int hash = 5;
        hash = 37 * hash + this.id;
        hash = 37 * hash + Objects.hashCode(this.nombre);
        hash = 37 * hash + Objects.hashCode(this.apellido);
        hash = 37 * hash + Objects.hashCode(this.correosElectronicos);
        hash = 37 * hash + Objects.hashCode(this.direccion);
        hash = 37 * hash + Objects.hashCode(this.pais);
        return hash;
    }
    
   
    public int hashCode2() {

        return Objects.hash(id, nombre, apellido, direccion);
    }
    

}
