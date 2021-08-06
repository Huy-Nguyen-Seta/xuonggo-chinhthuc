package com.laptrinhjavaweb.api.admin;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RestController;

import com.laptrinhjavaweb.dto.vtDto;
import com.laptrinhjavaweb.service.IVtService;


@RestController(value = "VlieuAPIOfAdmin")
public class VlieuAPI {
	
	@Autowired
	private IVtService ncc;

	@PostMapping("/api/vtu")
	public void createNew(@ModelAttribute vtDto vtdto) {
		
		
		
	}
	
	@PutMapping("/api/vtu")
	public void updateNew(@RequestBody vtDto updateNew) {
		 ncc.save(updateNew);
	}
	
	@DeleteMapping("/api/vtu")
	public void deleteNew(@RequestBody long[] ids) {
		ncc.delete(ids);
	}
}
