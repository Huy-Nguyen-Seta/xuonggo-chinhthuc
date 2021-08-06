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


@Controller(value = "SeachControllerOfWeb")
public class SeachController {

@Autowired
private INewService catesevice;

@Autowired
private ICategoryService catesevice1;
	
	@RequestMapping(value = "/seach", method = RequestMethod.GET)
	public ModelAndView homePage(@RequestParam("page") int page, 
			 @RequestParam("limit") int limit,@RequestParam("findcate") String catefind,@RequestParam("news") String news,@RequestParam("modelw") String modelw, HttpServletRequest request) {
		NewDTO model = new NewDTO();
		model.setPage(page);
		model.setLimit(limit);
		ModelAndView mav = new ModelAndView("web/seach");
		Pageable pageable = new PageRequest(page - 1, limit);
		model.setListResult(catesevice.findbycateandnew(catefind, news, modelw, pageable));
		model.setTotalItem(catesevice.getTotalItem(catefind, news, modelw));
		model.setTotalPage((int) Math.ceil((double) model.getTotalItem() / model.getLimit()));
		
		mav.addObject("model", model);
		mav.addObject("news", news);
		mav.addObject("findcate", catefind);
		mav.addObject("modelw", modelw);
		mav.addObject("list", catesevice1.findAll());
		return mav;
	
	}
	

}
