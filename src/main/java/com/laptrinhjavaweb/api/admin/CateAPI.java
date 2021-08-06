package com.laptrinhjavaweb.api.admin;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RestController;

import com.laptrinhjavaweb.dto.CategoryDTO;
import com.laptrinhjavaweb.service.ICategoryService;


@RestController(value = "CATEAPIOfAdmin")
public class CateAPI {
	
	@Autowired
	private ICategoryService cateService;
	
	@PostMapping("/api/cate")
	public CategoryDTO createNew(@RequestBody CategoryDTO newDTO) {
		return cateService.save(newDTO);
	}
	
	@PutMapping("/api/cate")
	public CategoryDTO updateNew(@RequestBody CategoryDTO updateNew) {
		return cateService.save(updateNew);
	}
	
	@DeleteMapping("/api/cate")
	public void deleteNew(@RequestBody long[] ids) {
		cateService.delete(ids);
	}
}
