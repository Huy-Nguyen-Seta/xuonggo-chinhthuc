package com.laptrinhjavaweb.controller.admin;

import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.laptrinhjavaweb.dto.CategoryDTO;
import com.laptrinhjavaweb.service.ICategoryService;
import com.laptrinhjavaweb.util.MessageUtil;

@Controller(value = "cateControllerOfAdmin")
public class CateController {
	
	
	@Autowired
	private ICategoryService categoryService;
	
	@Autowired
	private MessageUtil messageUtil;

	@RequestMapping(value = "/quan-tri/the-loai/danh-sach", method = RequestMethod.GET)
	public ModelAndView showList(@RequestParam("page") int page, 
								 @RequestParam("limit") int limit, HttpServletRequest request) {
		CategoryDTO model = new CategoryDTO();
		model.setPage(page);
		model.setLimit(limit);
		ModelAndView mav = new ModelAndView("admin/cate/list");
		Pageable pageable = new PageRequest(page - 1, limit);
		model.setListResult(categoryService.findAll(pageable,1));
		
		model.setTotalItem(categoryService.getTotalItem(1));
		model.setTotalPage((int) Math.ceil((double) model.getTotalItem() / model.getLimit()));
		if (request.getParameter("message") != null) {
			Map<String, String> message = messageUtil.getMessage(request.getParameter("message"));
			mav.addObject("message", message.get("message"));
			mav.addObject("alert", message.get("alert"));
		}
		mav.addObject("model", model);
		return mav;
	}
	
	@RequestMapping(value = "/quan-tri/the-loai/chinh-sua", method = RequestMethod.GET)
	public ModelAndView editNew(@RequestParam(value = "id", required = false) Long id, HttpServletRequest request) {
		ModelAndView mav = new ModelAndView("admin/cate/edit");
		CategoryDTO model = new CategoryDTO();
		if (id != null) {
			model = categoryService.findById(id);
		}
		if (request.getParameter("message") != null) {
			Map<String, String> message = messageUtil.getMessage(request.getParameter("message"));
			mav.addObject("message", message.get("message"));
			mav.addObject("alert", message.get("alert"));
		}
		
		mav.addObject("model", model);
		return mav;
	}
	@RequestMapping(value = "/quan-tri/the-loai/danh-sach", method = RequestMethod.POST)
	public ModelAndView saveImage(@RequestParam("page") int page, 
								 @RequestParam("limit") int limit, HttpServletRequest request,@ModelAttribute CategoryDTO cate) {
		String messageSend;
		try {
			categoryService.save(cate);
			messageSend="insert_success";
		} catch (Exception e) {
			messageSend="error_system";
		}
		
		CategoryDTO model = new CategoryDTO();
		model.setPage(page);
		model.setLimit(limit);
		ModelAndView mav = new ModelAndView("admin/cate/list");
		Pageable pageable = new PageRequest(page - 1, limit);
		model.setListResult(categoryService.findAll(pageable,1));
		model.setTotalItem(categoryService.getTotalItem(1));
		model.setTotalPage((int) Math.ceil((double) model.getTotalItem() / model.getLimit()));
		Map<String, String> message = messageUtil.getMessage(messageSend);
		mav.addObject("message", message.get("message"));
		mav.addObject("alert", message.get("alert"));
		mav.addObject("model", model);
		return mav;
	}
}
