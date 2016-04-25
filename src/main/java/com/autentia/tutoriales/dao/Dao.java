package com.autentia.tutoriales.dao;

import java.util.List;

public interface Dao<T> {

    List<T> getAll();
    T getById(Long id);
    void delete(Long id);
    void delete(T entity);
    void insert(T entity);
    void update(Long id, T entity);

}
