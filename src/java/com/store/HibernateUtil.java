package com.store;

import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;

class HibernateUtil {
    public static SessionFactory buildSessionFactory(String pathToConfigFile) {
        try {
            // load from different directory
            SessionFactory sessionFactory = new Configuration().configure(
                            pathToConfigFile)
                            .buildSessionFactory();
            return sessionFactory;

        } catch (Throwable ex) {
            // Make sure you log the exception, as it might be swallowed
            System.err.println("Initial SessionFactory creation failed." + ex);
            throw new ExceptionInInitializerError(ex);
        }
    }
}