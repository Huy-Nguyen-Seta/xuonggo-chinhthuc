package com.laptrinhjavaweb.controller.admin;

import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.google.gson.Gson;
import com.laptrinhjavaweb.service.Idealnhapservice;
import com.laptrinhjavaweb.util.MessageUtil;

@Controller(value = "ListdealNhapController")
public class ListDealNhapController {
	@Autowired
	private MessageUtil messageUtil;
	@Autowired 
	private Idealnhapservice dealnhap;
	@RequestMapping(value = "/quan-tri/listdanhsachnhap",method = RequestMethod.GET)
	public ModelAndView lisDeal(HttpServletRequest request) {
		 Gson gson = new Gson();
		  
			ModelAndView model= new ModelAndView("/admin/deal/danhsachdealnhap");
			if (request.getParameter("message") != null) {
				
				Map<String, String> message = messageUtil.getMessage(request.getParameter("message"));
				model.addObject("message", message.get("message"));
				model.addObject("alert", message.get("alert"));
			}
			model.addObject("list",gson.toJson(dealnhap.findAll()));
			return model;
		
	}
	@RequestMapping(value = "/quan-tri/showdealnhap",method = RequestMethod.GET)
	public ModelAndView showdeal(@RequestParam("id")long id , HttpServletRequest request) {
		//Gson gson = new Gson();
		  
		ModelAndView model= new ModelAndView("/admin/deal/showdealnhap");
		//System.out.println(dealnhap.findById(id));
		model.addObject("model",dealnhap.findById(id));
		return model;
	}

}
