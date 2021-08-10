package com.laptrinhjavaweb.converter;

import java.sql.Timestamp;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import com.laptrinhjavaweb.dto.DealInDto;
import com.laptrinhjavaweb.entity.dealnhapEntity;
import com.laptrinhjavaweb.service.IManufacturesevice;
@Component
public class DealInConverter  {
	@Autowired
	private IManufacturesevice nccsv;
		
	public DealInDto toDto(dealnhapEntity dealnhapEntity) {

		DealInDto deal = new DealInDto();
		deal.setId(dealnhapEntity.getId());
		deal.setNhacc(nccsv.findById(dealnhapEntity.getNhacc().getId()));
		deal.setCreatedDate((Timestamp) dealnhapEntity.getCreatedDate());
		deal.setTrangthai(dealnhapEntity.getstatus());
		return deal;
	}

}
