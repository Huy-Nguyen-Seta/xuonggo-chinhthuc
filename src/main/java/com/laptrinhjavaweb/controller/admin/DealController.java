package com.laptrinhjavaweb.controller.admin;


import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.laptrinhjavaweb.dto.dealDTO;
import com.laptrinhjavaweb.service.Idealservice;


@Controller(value = "dealControllerOfAdmin")
public class DealController {
	@Autowired 
	private Idealservice deal;

	
	
	@RequestMapping(value = "/quan-tri/deal", method = RequestMethod.GET)
	public ModelAndView homePage(@RequestParam("id") int id, HttpServletRequest request) {
		
		
		dealDTO model = new dealDTO();
		
		ModelAndView mav = new ModelAndView("admin/deal/deal");
		
	
		model=deal.findById(id);
	
		mav.addObject("model", model);
		
		
	
		return mav;
	}
}
