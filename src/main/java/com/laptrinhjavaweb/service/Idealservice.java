package com.laptrinhjavaweb.service;

import java.util.List;
import java.util.Map;

import com.laptrinhjavaweb.dto.dealDTO;


public interface Idealservice extends IBaseInterface<dealDTO>{

	List<String> chart(int year1);
	float tinhtienhd(long id);
	float MonneywithYear(int year);
	public void setStatusAndIncreaseTotal(long id);
	List<dealDTO> findAllByStatusUserAccep(int stt);
	Map<String,Float> Showchart(int year);


}
