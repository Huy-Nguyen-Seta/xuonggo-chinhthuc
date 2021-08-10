package com.laptrinhjavaweb.api.admin;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RestController;

import com.laptrinhjavaweb.dto.ManufactureDTO;
import com.laptrinhjavaweb.service.IManufacturesevice;


@RestController(value = "NccAPIOfAdmin")
public class ManufactureApi {
	
	@Autowired
	private IManufacturesevice ncc;

	@PostMapping("/api/ncc")
	public void createNew(@RequestBody ManufactureDTO newDTO) {
		 ncc.save(newDTO);
	}
	
	@PutMapping("/api/ncc")
	public void updateNew(@RequestBody ManufactureDTO updateNew) {
		 ncc.save(updateNew);
	}
	
	@DeleteMapping("/api/ncc")
	public void deleteNew(@RequestBody long[] ids) {
		ncc.delete(ids);
	}
}
