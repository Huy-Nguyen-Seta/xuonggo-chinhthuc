package com.laptrinhjavaweb.api.admin;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RestController;

import com.laptrinhjavaweb.dto.ShowDealOutDTO;
import com.laptrinhjavaweb.dto.showdealnhapDTO;
import com.laptrinhjavaweb.entity.dealEntity;
import com.laptrinhjavaweb.repository.DealOutrepository;
import com.laptrinhjavaweb.service.IShowdealservice;
import com.laptrinhjavaweb.service.IUsersevice;
import com.laptrinhjavaweb.service.IDealInservice;
import com.laptrinhjavaweb.service.IDealOutservice;
import com.laptrinhjavaweb.util.SecurityUtils;


@RestController(value = "DealAPIOfAdmin")
public class DealApi {
	
	 @Autowired
	// @Qualifier
	private IDealOutservice deal;
	 @Autowired
	private IShowdealservice showdeal;
	@Autowired
	private IUsersevice usersv;
	@Autowired
	private DealOutrepository DealOutrepository;
	@Autowired
	private IDealInservice dealnhap;
	
	@PostMapping("/api/deal")
	public void create(@RequestBody ShowDealOutDTO showDTO[]) {
		dealEntity dto=new dealEntity();
		String user=SecurityUtils.getPrincipal().getUsername();
		
		dto.setUser(usersv.finbyusername(user));
		dto.setstatus(1);
		long id = DealOutrepository.save(dto).getId();
		
		for (ShowDealOutDTO ShowDealOutDTO : showDTO) {
			ShowDealOutDTO.setMahd(id);
			showdeal.save(ShowDealOutDTO);
		}
		
	}
	@PostMapping("/api/dealnhap")
	public void createdealnhap(@RequestBody showdealnhapDTO deal[]) {
		
		dealnhap.saveDeal(deal);
	}
	@DeleteMapping("/api/dealnhap")
	public void deletedealnhap(@RequestBody long []ids) {
		dealnhap.delete(ids);
	
	}
	@PutMapping("/api/deal")
	public void updateNew(@RequestBody long id) {
	    deal.setStatusAndIncreaseTotal(id);
	}
	
	@DeleteMapping("/api/deal")
	public void deleteNew(@RequestBody long[] ids) {
		deal.delete(ids);
	
		
	}
	
}
