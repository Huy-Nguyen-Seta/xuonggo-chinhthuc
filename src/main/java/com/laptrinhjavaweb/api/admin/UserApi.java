package com.laptrinhjavaweb.api.admin;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RestController;

import com.laptrinhjavaweb.service.IUsersevice;

@RestController(value = "UserApi")
public class UserApi {
	@Autowired
	private IUsersevice usersv;
	@DeleteMapping("api/user")
	private void DeleteUser(@RequestBody long ids[]) {
		usersv.delete(ids);
		
		
	}

}
