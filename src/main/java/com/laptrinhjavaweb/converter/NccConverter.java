package com.laptrinhjavaweb.converter;

import org.springframework.stereotype.Component;

import com.laptrinhjavaweb.dto.NccDTO;
import com.laptrinhjavaweb.entity.NccEntity;
@Component
public class NccConverter {
	public NccDTO toDto(NccEntity nccEntity) {
		NccDTO a= new NccDTO();
		a.setTrangthai(nccEntity.getstatus());
		a.setDiachi(nccEntity.getDiachi());
		a.setFullName(nccEntity.getFullName());
		a.setDonvi(nccEntity.getDonvi());
		a.setGmail(nccEntity.getGmail());
		a.setSdt(nccEntity.getSdt());
		a.setId(nccEntity.getId());
		a.setThumbnail(nccEntity.getThumbnail());
		a.setTrangthai(nccEntity.getstatus());
		return a;
		
	}

}
