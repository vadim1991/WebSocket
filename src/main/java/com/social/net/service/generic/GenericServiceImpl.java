package com.social.net.service.generic;

import com.social.net.repository.generic.GenericRepository;
import org.springframework.transaction.annotation.EnableTransactionManagement;
import org.springframework.transaction.annotation.Transactional;

@Transactional
@EnableTransactionManagement
public class GenericServiceImpl<T, D extends GenericRepository<T>> implements GenericService<T> {

    protected D repository;

    @Override
    public T save(T entity) {
        return repository.save(entity);
    }

    @Override
    public void remove(T entity) {
        repository.remove(entity);
    }

    @Override
    public T getById(String id) {
        return repository.getById(id);
    }

    public void setRepository(D repository) {
        this.repository = repository;
    }
}
