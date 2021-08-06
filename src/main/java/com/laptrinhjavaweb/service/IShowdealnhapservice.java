package com.laptrinhjavaweb.service;

import java.util.List;

import com.laptrinhjavaweb.dto.showdealnhapDTO;


public interface IShowdealnhapservice extends IBaseInterface<showdealnhapDTO> {
	List<showdealnhapDTO>findAllByDealId( long id);
	showdealnhapDTO save(showdealnhapDTO dto,long id) ;
	

	
}
