package com.social.net.service.generic;

public interface GenericService<T> {

    T save(T entity);

    void remove(T entity);

    T getById(String id);

}
