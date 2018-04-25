package com.store;

import com.store.objects.*;
import java.util.ArrayList;
import java.util.List;
import org.hibernate.Query;
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
        
        String command = "From Category Where name Like '%" + name + "%'";
        Query query = s.createQuery(command);
        List cats = query.list();   
        
        tx.commit();
        s.close();
        
        for(Category c : (ArrayList<Category>) cats){
            categories.add(c);
        }
        //categories.add(new Category(name));
        return categories;
    }
}
