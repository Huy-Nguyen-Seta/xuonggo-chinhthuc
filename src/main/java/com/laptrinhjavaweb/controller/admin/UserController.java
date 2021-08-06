package com.laptrinhjavaweb.controller.admin;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.laptrinhjavaweb.dto.UserDTO;
import com.laptrinhjavaweb.service.IUsersevice;

@Controller(value = "UserControllerAdmin")
public class UserController {
	@Autowired
	private IUsersevice usersv;
	
	@RequestMapping(value = "/quan-tri/user",method = RequestMethod.GET)
	public ModelAndView ShowListUser(@RequestParam("limit")int limit,@RequestParam("page")int page) {
		ModelAndView modelAndView = new ModelAndView("admin/user/listuser");
		UserDTO userDTO =new UserDTO();
		userDTO.setPage(page);
		userDTO.setLimit(limit);
		Pageable pageable =new PageRequest(page-1, limit);
		userDTO.setListResult(usersv.findAll(pageable, 1));
		userDTO.setTotalItem(usersv.getTotalItem(1));
		userDTO.setTotalPage((int) Math.ceil((double) userDTO.getTotalItem() / userDTO.getLimit()));
		modelAndView.addObject("model", userDTO);
		
		
				
		return modelAndView;
	}

}
