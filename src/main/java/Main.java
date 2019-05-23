

import com.cientooncemil.hibernate.model.Cliente;
import org.hibernate.HibernateException;
import org.hibernate.Metamodel;
import org.hibernate.query.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;

import javax.persistence.metamodel.EntityType;
import javax.swing.*;
import java.awt.event.WindowAdapter;
import java.awt.event.WindowEvent;


//http://cursohibernate.es/doku.php?id=unidades:03_relaciones:03_uno_a_muchos_desordenada



public class Main {
    
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

  public static Session getSession() throws HibernateException {
    return ourSessionFactory.openSession();
  }

  public static void main(final String[] args) throws Exception {
    final Session session = getSession();


    try {
        /*
      System.out.println("querying all the managed entities...");
      
      final Metamodel metamodel = session.getSessionFactory().getMetamodel();

      for (EntityType<?> entityType : metamodel.getEntities()) {
        final String entityName = entityType.getName();
        
        final Query query = session.createQuery("from " + entityName);
        
        System.out.println("executing: " + query.getQueryString());
        
        for (Object o : query.list()) {
          System.out.println("  " + o);
        }
        

      }
*/
        
        //ServiceDAOImpl serviceDAO 
      
        final Query query = session.createQuery("from Rol ");
        
        System.out.println("executing: " + query.getQueryString());
        
        for (Object o : query.list()) {
          System.out.println("  " + o);
        }
        
        
        //Cliente c = (Cliente) session.find(Cliente.class, 77777777);
        //System.out.println(c);
        
        //c.setNombre("XXXXXXXX");
        
        //session.save(c);
        
       // c = (Cliente) session.find(Cliente.class, 77777777);
        //System.out.println(c);
        
        //session.delete(c);
        
        
        
    } finally {
      session.close();
    }

  }
}