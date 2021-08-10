package com.laptrinhjavaweb.controller.admin;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.google.gson.Gson;
import com.laptrinhjavaweb.repository.DealOutrepository;
import com.laptrinhjavaweb.repository.ProductRepository;
import com.laptrinhjavaweb.repository.MaterialRepository;
import com.laptrinhjavaweb.service.INewService;
import com.laptrinhjavaweb.service.IDealInservice;
import com.laptrinhjavaweb.service.IDealOutservice;

@Controller(value = "homeControllerOfAdmin")
public class HomeController {
  @Autowired
  private IDealOutservice dealsv;
  @Autowired
  private INewService newsv;
  @Autowired
  private IDealInservice dealnhap;
 @Autowired 
   private DealOutrepository dealrp;
 @Autowired
 private ProductRepository newrp;
 @Autowired
 private MaterialRepository vtrp;
 
	@RequestMapping(value = "/quan-tri/trang-chu", method = RequestMethod.GET)
	public ModelAndView homePage(@RequestParam("year")int year) {
		Gson json=new Gson();
		//Date date = new Date();
		//LocalDate localDate = date.toInstant().atZone(ZoneId.systemDefault()).toLocalDate();
		ModelAndView mav = new ModelAndView("admin/home");
		mav.addObject("chart", dealsv.chart(year));
		mav.addObject("listds",json.toJson(newsv.findbyslm(15)));
	    mav.addObject("listdsnhap",dealnhap.chart(year));
		mav.addObject("tongchi", dealnhap.MonneywithYear(year));
		mav.addObject("tongthu", dealsv.MonneywithYear(year));
		mav.addObject("trangthai0",dealrp.countbytrangthai(0));
		mav.addObject("trangthai1",dealrp.countbytrangthai(1));
		mav.addObject("ProductsInstock", newrp.ProductsInstock());
		mav.addObject("Productsareoutofstock", newrp.Productsareoutofstock());
		mav.addObject("vtProductsInstock", vtrp.ProductsInstock());
		mav.addObject("vtProductsareoutofstock", vtrp.Productsareoutofstock());
		mav.addObject("year", year);
		return mav;
	}
}
