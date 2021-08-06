package com.laptrinhjavaweb.controller.web;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.laptrinhjavaweb.dto.NewDTO;
import com.laptrinhjavaweb.service.ICategoryService;
import com.laptrinhjavaweb.service.INewService;

@Controller(value = "newsControllerOfWeb")
public class NewsController {

@Autowired
private INewService catesevice;

@Autowired
private ICategoryService catesevice1;
	
	@RequestMapping(value = "/trang-chu/sp", method = RequestMethod.GET)
	public ModelAndView homePage(@RequestParam("page") int page, 
			 @RequestParam("limit") int limit,@RequestParam("cate") int cate, HttpServletRequest request) {
		NewDTO model = new NewDTO();
		model.setPage(page);
		model.setLimit(limit);
		ModelAndView mav = new ModelAndView("web/news");
		Pageable pageable = new PageRequest(page - 1, limit);
		model.setListResult(catesevice.findAll(pageable,cate));
		model.setTotalItem(catesevice.getTotalItem(cate));
		model.setTotalPage((int) Math.ceil((double) model.getTotalItem() / model.getLimit()));
		
		mav.addObject("model", model);
		mav.addObject("cate", cate);
		mav.addObject("list", catesevice1.findAll());
		return mav;
	
	}
	

}
