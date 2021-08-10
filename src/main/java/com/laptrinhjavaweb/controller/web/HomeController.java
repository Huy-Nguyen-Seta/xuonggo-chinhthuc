package com.laptrinhjavaweb.controller.web;

import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.web.authentication.logout.SecurityContextLogoutHandler;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.laptrinhjavaweb.dto.CategoryDTO;
import com.laptrinhjavaweb.dto.UserDTO;
import com.laptrinhjavaweb.service.ICategoryService;
import com.laptrinhjavaweb.service.IUsersevice;
import com.laptrinhjavaweb.util.MessageUtil;

@Controller(value = "homeControllerOfWeb")
public class HomeController {
@Autowired
private MessageUtil messageUtil;
@Autowired
private IUsersevice user;
@Autowired
private ICategoryService catesevice;
	
	@RequestMapping(value = "/trang-chu", method = RequestMethod.GET)
	public ModelAndView homePage(@RequestParam("page") int page, 
			 @RequestParam("limit") int limit, HttpServletRequest request) {
		CategoryDTO model = new CategoryDTO();
		model.setPage(page);
		model.setLimit(limit);
		ModelAndView mav = new ModelAndView("web/home");
		Pageable pageable = new PageRequest(page - 1, limit);
		model.setListResult(catesevice.findAll(pageable,1));
		model.setTotalItem(catesevice.getTotalItem(1));
		model.setTotalPage((int) Math.ceil((double) model.getTotalItem() / model.getLimit()));
		
		mav.addObject("model", model);
		return mav;
	
	}
	
	@RequestMapping(value = "/dang-nhap", method = RequestMethod.GET)
	public ModelAndView loginPage() {
		ModelAndView mav = new ModelAndView("login");
		
		return mav;
	}
	@RequestMapping(value = "/cart", method = RequestMethod.GET)
	public ModelAndView cart() {
		ModelAndView mav = new ModelAndView("web/cart");
		
		return mav;
	}
	@RequestMapping(value = "/thank", method = RequestMethod.GET)
	public ModelAndView thank() {
		ModelAndView mav = new ModelAndView("web/thank");
		
		return mav;
	}
	@RequestMapping(value = "/dang-ky", method = RequestMethod.GET)
	public ModelAndView register(HttpServletRequest request) {
		UserDTO model=new UserDTO();
		ModelAndView mav = new ModelAndView("register");
		mav.addObject("model", model);
		mav.addObject("list", user.TestUser());
		if (request.getParameter("message") != null) {
			Map<String, String> message = messageUtil.getMessage(request.getParameter("message"));
			mav.addObject("message", message.get("message"));
			mav.addObject("alert", message.get("alert"));
		}
		
		return mav;
	}
	
	@RequestMapping(value = "/thoat", method = RequestMethod.GET)
	public ModelAndView logout(HttpServletRequest request, HttpServletResponse response) {
		Authentication auth = SecurityContextHolder.getContext().getAuthentication();
		if (auth != null) {
			new SecurityContextLogoutHandler().logout(request, response, auth);
		}
		return new ModelAndView("redirect:/trang-chu");
	}
	
	@RequestMapping(value = "/accessDenied", method = RequestMethod.GET)
	public ModelAndView accessDenied() {
		return new ModelAndView("redirect:/dang-nhap?accessDenied");
	}
}
