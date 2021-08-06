package com.laptrinhjavaweb.service.impl;

import org.springframework.beans.factory.annotation.Autowired;

import com.laptrinhjavaweb.entity.BaseEntity;
import com.laptrinhjavaweb.repository.BaseRepository;

public  class BaseSevice<T extends BaseEntity>  {
	@Autowired
	private BaseRepository<T> Repository;
	public BaseSevice(BaseRepository<T> repository) {
		this.Repository = repository;
	}
	public BaseSevice() {
		
	}

	public void delete(long []ids) {
		for (long l : ids) {
			System.out.println(l);
			setStatus(l,0);
		}
		
	}
	void setStatus(long id,int status) {
		T value= (T) Repository.findOne(id);
		value.setstatus(status);
		Repository.save(value);
		
		
	}
	public int getTotalItem(int status) {
		return Repository.countBystatus(1);
	}

	
}
