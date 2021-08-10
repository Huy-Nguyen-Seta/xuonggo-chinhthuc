package com.laptrinhjavaweb.converter;

import org.springframework.stereotype.Component;

import com.laptrinhjavaweb.dto.ManufactureDTO;
import com.laptrinhjavaweb.entity.NccEntity;
@Component
public class ManufactureConverter {
	public ManufactureDTO toDto(NccEntity nccEntity) {
		ManufactureDTO a= new ManufactureDTO();
		a.setTrangthai(nccEntity.getstatus());
		a.setDiachi(nccEntity.getDiachi());
		a.setFullName(nccEntity.getFullName());
		a.setDonvi(nccEntity.getDonvi());
		a.setGmail(nccEntity.getGmail());
		a.setSdt(nccEntity.getSdt());
		a.setId(nccEntity.getId());
		a.setAfterimage(nccEntity.getThumbnail());
		a.setTrangthai(nccEntity.getstatus());
		return a;
		
	}

}
