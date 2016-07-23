package com.social.net.repository.generic;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class GenericRepository {

    @Autowired
    private SessionFactory sessionFactory;


    protected Session getCurrentSession() {
        return sessionFactory.getCurrentSession();
    }
}
