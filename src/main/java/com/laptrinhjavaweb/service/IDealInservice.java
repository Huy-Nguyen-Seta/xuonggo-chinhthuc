package com.laptrinhjavaweb.service;

import java.util.List;

import com.laptrinhjavaweb.dto.DealInDto;
import com.laptrinhjavaweb.dto.showdealnhapDTO;


public interface IDealInservice  extends IBaseInterface<DealInDto>{
	
	
	void saveDeal(showdealnhapDTO[] dto);
    

	
	List<String> chart(int year1);
	float tinhtienhd(long id);
	float MonneywithYear(int year);
	

}
