package com.laptrinhjavaweb.service;

import java.util.List;

import com.laptrinhjavaweb.dto.showdealDTO;

public interface IShowdealservice extends IBaseInterface<showdealDTO>{
  List<showdealDTO>	findAllByDealId( long id);
	
	
}
