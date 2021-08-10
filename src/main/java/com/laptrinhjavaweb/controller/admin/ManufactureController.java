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

import com.laptrinhjavaweb.dto.ManufactureDTO;
import com.laptrinhjavaweb.service.IManufacturesevice;
import com.laptrinhjavaweb.util.MessageUtil;

@Controller(value = "nccControllerOfAdmin")
public class ManufactureController {
	
	

	@Autowired
	private MessageUtil messageUtil;
	@Autowired
	private IManufacturesevice nccsv;

	@RequestMapping(value = "/quan-tri/ncc", method = RequestMethod.GET)
	public ModelAndView showList(@RequestParam("page") int page, 
								 @RequestParam("limit") int limit, HttpServletRequest request) {
		ManufactureDTO ncc=new ManufactureDTO();
		ncc.setPage(page);
		ncc.setLimit(limit);
		
		ModelAndView mav =new ModelAndView("admin/people/ncc");
		Pageable pageable = new PageRequest(page - 1, limit);
		ncc.setListResult(nccsv.findAll(pageable,1));
		ncc.setTotalItem(nccsv.getTotalItem(1));
		ncc.setTotalPage((int) Math.ceil((double) ncc.getTotalItem() / ncc.getLimit()));
		if (request.getParameter("message") != null) {
			Map<String, String> message = messageUtil.getMessage(request.getParameter("message"));
			mav.addObject("message", message.get("message"));
			mav.addObject("alert", message.get("alert"));
		}
		mav.addObject("model", ncc);
		return mav;
	}
	
	@RequestMapping(value = "/quan-tri/ncc/chinh-sua", method = RequestMethod.GET)
	public ModelAndView editNew(@RequestParam(value = "id", required = false) Long id, HttpServletRequest request) {
		ModelAndView mav =new ModelAndView("admin/people/editncc");
		ManufactureDTO model=new ManufactureDTO();
		if (id != null) {
			model = nccsv.findById(id);
		}
		if (request.getParameter("message") != null) {
			Map<String, String> message = messageUtil.getMessage(request.getParameter("message"));
			mav.addObject("message", message.get("message"));
			mav.addObject("alert", message.get("alert"));
		}
		
		mav.addObject("model", model);
		return mav;
	}
	@RequestMapping(value = "/quan-tri/ncc",method = RequestMethod.POST)
	public ModelAndView addManufacture(@ModelAttribute ManufactureDTO manufactureDTO,
			@RequestParam("page")int page,@RequestParam("limit")int limit,HttpServletRequest request) {
		ModelAndView mav =new ModelAndView("admin/people/ncc");
		 String messageSend;
	     try {
	    	 nccsv.save(manufactureDTO);
	    	 messageSend="insert_success";
	     }catch(Exception exception) {
	    	 System.out.println(exception);
	    		messageSend="error_system";
	    	 
	     }
	     ManufactureDTO model=new  ManufactureDTO();
	     model.setPage(page);
	     model.setLimit(limit);
	     Pageable pageable = new PageRequest(page - 1, limit);
	     model.setListResult(nccsv.findAll(pageable, 1));
	     model.setTotalItem(nccsv.getTotalItem(limit));
		model.setTotalPage((int) Math.ceil((double) model.getTotalItem() / model.getLimit()));
		Map<String, String> message = messageUtil.getMessage(messageSend);
		mav.addObject("message", message.get("message"));
		mav.addObject("alert", message.get("alert"));
		mav.addObject("model", model);
		return mav;
	}
}
