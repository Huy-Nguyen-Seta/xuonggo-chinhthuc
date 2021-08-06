package com.laptrinhjavaweb.converter;

import org.springframework.stereotype.Component;

import com.laptrinhjavaweb.dto.CategoryDTO;
import com.laptrinhjavaweb.entity.CategoryEntity;

@Component
public class CategoryConverter {
	
	public CategoryDTO toDto(CategoryEntity entity) {
		CategoryDTO result = new CategoryDTO();
		result.setId(entity.getId());
		result.setCode(entity.getCode());
		result.setName(entity.getName());
		result.setAfterimage(entity.getThumbnail());
		result.setShortDescription(entity.getShortDescription());
		result.setTrangthai(entity.getstatus());
		return result;
	}
	
	public CategoryEntity toEntity(CategoryDTO dto) {
		CategoryEntity result = new CategoryEntity();
		result.setCode(dto.getCode());
		result.setName(dto.getName());
		//result.setThumbnail(dto.getAfterimage());
		result.setShortDescription(dto.getShortDescription());
		result.setstatus(dto.getTrangthai());
		return result;
	}
}
