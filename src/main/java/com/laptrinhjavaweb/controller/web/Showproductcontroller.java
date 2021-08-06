package com.laptrinhjavaweb.controller.web;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.laptrinhjavaweb.dto.NewDTO;
import com.laptrinhjavaweb.service.INewService;

@Controller(value = "showpdControllerOfWeb")
public class Showproductcontroller {

@Autowired
private INewService newsv;

	
	@RequestMapping(value = "/trang-chu/ctsp", method = RequestMethod.GET)
	public ModelAndView homePage(@RequestParam("id") int id,@RequestParam("cate") int cateid, HttpServletRequest request) {
		NewDTO model = new NewDTO();
		
		ModelAndView mav = new ModelAndView("web/show");
		
		model=newsv.findById(id);
		
		model.setListResult(newsv.findAll(cateid));
		mav.addObject("model", model);
		mav.addObject("cate", cateid);
		return mav;
	
	}
	

}
