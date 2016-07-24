package com.social.net.repository.generic;

import com.social.net.entity.IEntity;
import com.social.net.util.Util;
import org.apache.commons.lang.StringUtils;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class GenericRepositoryImpl<T extends IEntity> implements GenericRepository<T> {

    @Autowired
    private SessionFactory sessionFactory;
    private Class<T> clazz;


    protected Session getCurrentSession() {
        return sessionFactory.getCurrentSession();
    }

    @Override
    public T save(T entity) {
        if (StringUtils.isBlank(entity.getId())) {
            entity.setId(Util.generateStringKey());
        }
        getCurrentSession().save(entity);
        return entity;
    }

    @Override
    public void remove(T entity) {
        getCurrentSession().delete(entity);
    }


    @Override
    public T getById(String id) {
        return (T) getCurrentSession().get(getClazz(), id);
    }

    public Class<T> getClazz() {
        return clazz;
    }

    public void setClazz(Class<T> clazz) {
        this.clazz = clazz;
    }
}
