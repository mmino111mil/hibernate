/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.cientooncemil.hibernate.service;

import java.lang.reflect.ParameterizedType;
import java.util.List;
import org.hibernate.HibernateException;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;

/**
 *
 * @author mmino
 */
public class ServiceDAOImpl<E> {
    
      private static final SessionFactory ourSessionFactory;

  static {
    try {
      Configuration configuration = new Configuration();
      configuration.configure();
      ourSessionFactory = configuration.buildSessionFactory();
    } catch (Throwable ex) {
      throw new ExceptionInInitializerError(ex);
    }
  }

    public ServiceDAOImpl() {
        
    }
  
  

  public static Session getSession() throws HibernateException {
    return ourSessionFactory.openSession();
  }

    public void add(E entity) {
        getSession().save(entity);
    }

    public void update(E entity) {
        getSession().saveOrUpdate(entity);
    }

    public void remove(E entity) {
        getSession().delete(entity);
    }


    public E find(Long key) {
        Class<? extends E> daoType  = (Class<E>) ((ParameterizedType) getClass().getGenericSuperclass())
                        .getActualTypeArguments()[0];
        return (E) getSession().get(daoType, key);
    }


    public List<E> list() {
         Class<? extends E> daoType  = (Class<E>) ((ParameterizedType) getClass().getGenericSuperclass())
                        .getActualTypeArguments()[0];
        return getSession().createCriteria(daoType).list();
    }
}
