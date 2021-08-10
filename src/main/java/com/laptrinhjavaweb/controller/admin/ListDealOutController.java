package com.laptrinhjavaweb.controller.admin;

import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.google.gson.Gson;
import com.laptrinhjavaweb.service.IDealOutservice;
import com.laptrinhjavaweb.util.MessageUtil;

@Controller(value = "ListDealcontroller")

public class ListDealOutController {
	@Autowired
	private MessageUtil messageUtil;
	@Autowired 
	private IDealOutservice deal;
	@RequestMapping(value = "/quan-tri/listdanhsach",method = RequestMethod.GET)
	public ModelAndView lisDeal(HttpServletRequest request) {
		  Gson gson = new Gson();
		  
		ModelAndView model= new ModelAndView("/admin/deal/ListDealOut");
		if (request.getParameter("message") != null) {
			
			Map<String, String> message = messageUtil.getMessage(request.getParameter("message"));
			model.addObject("message", message.get("message"));
			model.addObject("alert", message.get("alert"));
			System.out.println(message);

		}
		model.addObject("list",gson.toJson(deal.findAllByStatusUserAccep(0)));
		return model;
	}
	
}
