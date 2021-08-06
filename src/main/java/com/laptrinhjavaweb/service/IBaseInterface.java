package com.laptrinhjavaweb.service;

import java.util.List;

import org.springframework.data.domain.Pageable;

public interface IBaseInterface<T> {
	T save(T value);
	T findById(long id);
	List<T> findAll();
	List<T> findAll(Pageable pageable,int status);
	void delete(long[] ids);
	int getTotalItem(int i);
	

}
