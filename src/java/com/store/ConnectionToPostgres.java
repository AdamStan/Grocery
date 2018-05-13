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
    
    public void insertCategory(String name){
        Session s = factory.openSession();
        Transaction tx = s.beginTransaction();
        Category c = new Category(name);
        s.save(c);
        tx.commit();
    }
    public ArrayList getAll(String objectName){
        ArrayList objects = new ArrayList();
        
        Session s = factory.openSession();
        List obj;
        Transaction tx = s.beginTransaction();
        
        String command = "From " + objectName;
        Query query = s.createQuery(command);
        obj = query.list();   

        tx.commit();
        s.close();
        
        for(Object ob : (ArrayList) obj){
            objects.add(ob);
        }
        
        return objects;
    }
    public ArrayList<Category> findCategoryByName(String name){
        ArrayList<Category> categories = new ArrayList<Category>();
        Session s = factory.openSession();
        List cats;
        Transaction tx = s.beginTransaction();
        if(name.equals("ALL")){
            String command = "From Category";
            Query query = s.createQuery(command);
            cats = query.list();   
        } 
        else {
            String command = "From Category Where name Like '%" + name + "%'";
            Query query = s.createQuery(command);
            cats = query.list();   
        }
        tx.commit();
        s.close();
        
        for(Category c : (ArrayList<Category>) cats){
            categories.add(c);
        }
        //categories.add(new Category(name));
        return categories;
    }
}
