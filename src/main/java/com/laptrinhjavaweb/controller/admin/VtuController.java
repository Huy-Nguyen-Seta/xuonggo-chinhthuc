package com.laptrinhjavaweb.controller.admin;

import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.laptrinhjavaweb.dto.vtDto;
import com.laptrinhjavaweb.service.IVtService;
import com.laptrinhjavaweb.util.MessageUtil;

@Controller(value = "vtuControllerOfAdmin")
public class VtuController {
	@Autowired
	private IVtService vtuservice;	
	@Autowired
	private MessageUtil messageUtil;

	

	@RequestMapping(value = "/quan-tri/vtu", method = RequestMethod.GET)
	public ModelAndView showList(@RequestParam("page") int page, 
								 @RequestParam("limit") int limit, HttpServletRequest request) {
        vtDto ncc=new vtDto();
		ncc.setPage(page);
		ncc.setLimit(limit);
		
		ModelAndView mav =new ModelAndView("admin/vattu/vt");
		Pageable pageable = new PageRequest(page - 1, limit);
		ncc.setListResult(vtuservice.findAll(pageable,1));
		ncc.setTotalItem(vtuservice.getTotalItem(1));
		ncc.setTotalPage((int) Math.ceil((double) ncc.getTotalItem() / ncc.getLimit()));
		if (request.getParameter("message") != null) {
			Map<String, String> message = messageUtil.getMessage(request.getParameter("message"));
			mav.addObject("message", message.get("message"));
			mav.addObject("alert", message.get("alert"));
		}
		mav.addObject("model", ncc);
		return mav;
	}
	
	@RequestMapping(value = "/quan-tri/vtu/chinh-sua", method = RequestMethod.GET)
	public ModelAndView editNew(@RequestParam(value = "id", required = false) Long id, HttpServletRequest request) {
		ModelAndView mav =new ModelAndView("admin/vattu/editvt");
		vtDto model=new vtDto();
		if (id != null) {
			model = vtuservice.findById(id);
		}
		if (request.getParameter("message") != null) {
			Map<String, String> message = messageUtil.getMessage(request.getParameter("message"));
			mav.addObject("message", message.get("message"));
			mav.addObject("alert", message.get("alert"));
		}
		
		mav.addObject("model", model);
		return mav;
	}
	@RequestMapping(value="/quan-tri/vtu",method=RequestMethod.POST)  
    public ModelAndView saveimage( @ModelAttribute vtDto vtdto,@RequestParam("page") int page, 
			 @RequestParam("limit") int limit, HttpServletRequest request,  
           HttpSession session) throws Exception{ 
		String messageSend;
		try {
			vtuservice.save(vtdto);
			messageSend="insert_success";
		} catch (Exception e) {
			messageSend="error_system";
		}
		
		  vtDto ncc=new vtDto();
			ncc.setPage(page);
			ncc.setLimit(limit);
			
			ModelAndView mav =new ModelAndView("admin/vattu/vt");
			Pageable pageable = new PageRequest(page - 1, limit);
			ncc.setListResult(vtuservice.findAll(pageable,1));
			ncc.setTotalItem(vtuservice.getTotalItem(1));
			ncc.setTotalPage((int) Math.ceil((double) ncc.getTotalItem() / ncc.getLimit()));
			Map<String, String> message = messageUtil.getMessage(messageSend);
			mav.addObject("message", message.get("message"));
			mav.addObject("alert", message.get("alert"));
		
			mav.addObject("model", ncc);
			
           
			return mav;
    }  
 
}
