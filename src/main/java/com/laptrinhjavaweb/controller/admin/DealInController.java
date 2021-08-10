package com.laptrinhjavaweb.controller.admin;


import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.google.gson.Gson;
import com.laptrinhjavaweb.service.IManufacturesevice;
import com.laptrinhjavaweb.service.IMaterialService;


@Controller(value = "dealnhapControllerOfAdmin")
public class DealInController {
	
	@Autowired 
	private IManufacturesevice nccsv;
	@Autowired
	private IMaterialService vtsv;

	
	
	@RequestMapping(value = "/quan-tri/lapdealnhap", method = RequestMethod.GET)
	public ModelAndView homePage( HttpServletRequest request) {
		
		 Gson gson = new Gson();
	
		
		ModelAndView mav = new ModelAndView("admin/deal/createDealIn");
		
	   mav.addObject("vt", gson.toJson(vtsv.findAll()));
	   mav.addObject("ncc", gson.toJson(nccsv.findAll()));
	
	
	
		
	
		return mav;
	}
	
}
