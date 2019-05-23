package com.cientooncemil.hibernate.model;

import java.util.Objects;

public class DetalleOrden {
  private int idDetalleOrden;
  private Integer precioUnitario;
  private Integer cantidad;

  public int getIdDetalleOrden() {
    return idDetalleOrden;
  }

  public void setIdDetalleOrden(int idDetalleOrden) {
    this.idDetalleOrden = idDetalleOrden;
  }

  public Integer getPrecioUnitario() {
    return precioUnitario;
  }

  public void setPrecioUnitario(Integer precioUnitario) {
    this.precioUnitario = precioUnitario;
  }

  public Integer getCantidad() {
    return cantidad;
  }

  public void setCantidad(Integer cantidad) {
    this.cantidad = cantidad;
  }

  @Override
  public boolean equals(Object o) {
    if (this == o) return true;
    if (o == null || getClass() != o.getClass()) return false;
    DetalleOrden that = (DetalleOrden) o;
    return idDetalleOrden == that.idDetalleOrden &&
        Objects.equals(precioUnitario, that.precioUnitario) &&
        Objects.equals(cantidad, that.cantidad);
  }

  @Override
  public int hashCode() {

    return Objects.hash(idDetalleOrden, precioUnitario, cantidad);
  }

  @Override
  public String toString() {
    return "DetalleOrden{" +
        "idDetalleOrden=" + idDetalleOrden +
        ", precioUnitario=" + precioUnitario +
        ", cantidad=" + cantidad +
        '}';
  }
}
