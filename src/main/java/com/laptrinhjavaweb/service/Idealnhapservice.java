package com.laptrinhjavaweb.service;

import java.util.List;

import com.laptrinhjavaweb.dto.DealNhapDto;
import com.laptrinhjavaweb.dto.showdealnhapDTO;


public interface Idealnhapservice  extends IBaseInterface<DealNhapDto>{
	
	
	void saveDeal(showdealnhapDTO[] dto);
    

	
	List<String> chart(int year1);
	float tinhtienhd(long id);
	float MonneywithYear(int year);
	

}
