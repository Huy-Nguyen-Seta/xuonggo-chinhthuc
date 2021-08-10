package com.laptrinhjavaweb.api.web;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RestController;


import com.laptrinhjavaweb.dto.UserDTO;
import com.laptrinhjavaweb.service.IUsersevice;

@RestController(value = "newAPIOfWeb")
public class RegisterAPI {
	
	
	
	@Autowired
	private IUsersevice usersv;
	
	
	
	@PostMapping("/api/user")
	public void save(@RequestBody UserDTO my) {
		 usersv.save(my);
	}
	
	
}
