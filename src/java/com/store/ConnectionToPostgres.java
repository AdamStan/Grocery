package com.store;

import com.store.objects.*;
import java.util.ArrayList;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;

public class ConnectionToPostgres {
    private SessionFactory factory;
    
    public ConnectionToPostgres(){
        factory = HibernateUtil.buildSessionFactory("hibernate.cfg.xml");
    }

    public SessionFactory getFactory() {
        return factory;
    }
    
    public ArrayList<Category> findCategoryByName(String name){
        ArrayList<Category> categories = new ArrayList<Category>();
        Session s = factory.openSession();
        Transaction tx = s.beginTransaction();
        //searching
        tx.commit();
        s.close();
        return categories;
    }
}
