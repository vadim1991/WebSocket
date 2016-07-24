package com.social.net.repository.generic;

public interface GenericRepository<T> {

    T save(T entity);

    void remove(T entity);

    T getById(String id);

}
