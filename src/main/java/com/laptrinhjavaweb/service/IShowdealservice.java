package com.laptrinhjavaweb.service;

import java.util.List;

import com.laptrinhjavaweb.dto.ShowDealOutDTO;

public interface IShowdealservice extends IBaseInterface<ShowDealOutDTO>{
  List<ShowDealOutDTO>	findAllByDealId( long id);
	
	
}
