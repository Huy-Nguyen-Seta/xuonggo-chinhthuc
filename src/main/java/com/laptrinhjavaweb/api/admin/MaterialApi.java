package com.laptrinhjavaweb.api.admin;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RestController;

import com.laptrinhjavaweb.dto.MaterialDTO;
import com.laptrinhjavaweb.service.IMaterialService;


@RestController(value = "VlieuAPIOfAdmin")
public class MaterialApi {
	
	@Autowired
	private IMaterialService ncc;

	@PostMapping("/api/vtu")
	public void createNew(@ModelAttribute MaterialDTO vtdto) {
		
		
		
	}
	
	@PutMapping("/api/vtu")
	public void updateNew(@RequestBody MaterialDTO updateNew) {
		 ncc.save(updateNew);
	}
	
	@DeleteMapping("/api/vtu")
	public void deleteNew(@RequestBody long[] ids) {
		ncc.delete(ids);
	}
}
