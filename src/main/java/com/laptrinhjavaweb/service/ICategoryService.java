package com.laptrinhjavaweb.service;

import java.util.Map;

import com.laptrinhjavaweb.dto.CategoryDTO;


public interface ICategoryService extends IBaseInterface<CategoryDTO> {
	Map<String, String> findAllMap();

	

	

	
	
}
