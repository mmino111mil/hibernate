package com.cientooncemil.hibernate.model;

import java.util.Objects;

public class Notebook {
  private int idNotebook;
  private String marca;
  private String modelo;
  private String procesador;
  private Integer disco;

  public int getIdNotebook() {
    return idNotebook;
  }

  public void setIdNotebook(int idNotebook) {
    this.idNotebook = idNotebook;
  }

  public String getMarca() {
    return marca;
  }

  public void setMarca(String marca) {
    this.marca = marca;
  }

  public String getModelo() {
    return modelo;
  }

  public void setModelo(String modelo) {
    this.modelo = modelo;
  }

  public String getProcesador() {
    return procesador;
  }

  public void setProcesador(String procesador) {
    this.procesador = procesador;
  }

  public Integer getDisco() {
    return disco;
  }

  public void setDisco(Integer disco) {
    this.disco = disco;
  }

  @Override
  public boolean equals(Object o) {
    if (this == o) return true;
    if (o == null || getClass() != o.getClass()) return false;
    Notebook notebook = (Notebook) o;
    return idNotebook == notebook.idNotebook &&
        Objects.equals(marca, notebook.marca) &&
        Objects.equals(modelo, notebook.modelo) &&
        Objects.equals(procesador, notebook.procesador) &&
        Objects.equals(disco, notebook.disco);
  }

  @Override
  public int hashCode() {

    return Objects.hash(idNotebook, marca, modelo, procesador, disco);
  }

  @Override
  public String toString() {
    return "Notebook{" +
        "idNotebook=" + idNotebook +
        ", marca='" + marca + '\'' +
        ", modelo='" + modelo + '\'' +
        ", procesador='" + procesador + '\'' +
        ", disco=" + disco +
        '}';
  }
}
