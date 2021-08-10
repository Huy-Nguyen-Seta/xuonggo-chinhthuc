package com.laptrinhjavaweb.controller.web;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.laptrinhjavaweb.dto.NewDTO;
import com.laptrinhjavaweb.service.ICategoryService;
import com.laptrinhjavaweb.service.INewService;


@Controller(value = "Seach2ControllerOfWeb")
public class SeachByChoseController {

@Autowired
private INewService newService;

@Autowired
private ICategoryService catesevice;
	
	@RequestMapping(value = "/seachsp", method = RequestMethod.GET)
	public ModelAndView homePage(@RequestParam("select") int select, HttpServletRequest request) {
		NewDTO model = new NewDTO();
		
		ModelAndView mav = new ModelAndView("web/seachbychose");
	  if(select==1) {
		model.setListResult(newService.findbyslm(15));
	  }
	  else if(select==2) {
		  model.setListResult(newService.findbymoneylow(1000));
	  }
	  else if(select==4) {
		  model.setListResult(newService.findbymoneyhight(1000));
	  }
	  else if(select==5) {
		  model.setListResult(newService.findbypopular(true));
	  }
	

		
		mav.addObject("model", model);
		mav.addObject("list", catesevice.findAll());
		return mav;
	
	}
	

}
