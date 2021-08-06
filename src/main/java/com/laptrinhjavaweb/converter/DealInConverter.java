package com.laptrinhjavaweb.converter;

import java.sql.Timestamp;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import com.laptrinhjavaweb.dto.DealNhapDto;
import com.laptrinhjavaweb.entity.dealnhapEntity;
import com.laptrinhjavaweb.service.INccsevice;
@Component
public class DealInConverter  {
	@Autowired
	private INccsevice nccsv;
		
	public DealNhapDto toDto(dealnhapEntity dealnhapEntity) {

		DealNhapDto deal = new DealNhapDto();
		deal.setId(dealnhapEntity.getId());
		deal.setNhacc(nccsv.findById(dealnhapEntity.getNhacc().getId()));
		deal.setCreatedDate((Timestamp) dealnhapEntity.getCreatedDate());
		deal.setTrangthai(dealnhapEntity.getstatus());
		return deal;
	}

}
