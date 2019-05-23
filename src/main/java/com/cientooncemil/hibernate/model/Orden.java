package com.cientooncemil.hibernate.model;

import java.sql.Timestamp;
import java.util.Objects;

public class Orden {
  private int idOrder;
  private Timestamp creacion;
  private Timestamp envio;
  private String estado;

  public int getIdOrder() {
    return idOrder;
  }

  public void setIdOrder(int idOrder) {
    this.idOrder = idOrder;
  }

  public Timestamp getCreacion() {
    return creacion;
  }

  public void setCreacion(Timestamp creacion) {
    this.creacion = creacion;
  }

  public Timestamp getEnvio() {
    return envio;
  }

  public void setEnvio(Timestamp envio) {
    this.envio = envio;
  }

  public String getEstado() {
    return estado;
  }

  public void setEstado(String estado) {
    this.estado = estado;
  }

  @Override
  public boolean equals(Object o) {
    if (this == o) return true;
    if (o == null || getClass() != o.getClass()) return false;
    Orden orden = (Orden) o;
    return idOrder == orden.idOrder &&
        Objects.equals(creacion, orden.creacion) &&
        Objects.equals(envio, orden.envio) &&
        Objects.equals(estado, orden.estado);
  }

  @Override
  public int hashCode() {

    return Objects.hash(idOrder, creacion, envio, estado);
  }

  @Override
  public String toString() {
    return "Orden{" +
        "idOrder=" + idOrder +
        ", creacion=" + creacion +
        ", envio=" + envio +
        ", estado='" + estado + '\'' +
        '}';
  }
}
