package com.laptrinhjavaweb.converter;

import org.springframework.stereotype.Component;

import com.laptrinhjavaweb.dto.vtDto;
import com.laptrinhjavaweb.entity.VatLieuEntity;
@Component
public class VattuConverter {
	public vtDto toDTO(VatLieuEntity VatLieuEntity) {
		vtDto a=new vtDto();
		a.setId(VatLieuEntity.getId());
		a.setTrangthai(1);
	    a.setChatlieu(VatLieuEntity.getChatlieu());
	    a.setChieudai(VatLieuEntity.getChieudai());
	    a.setChieurong(VatLieuEntity.getChieurong());
	    a.setContent(VatLieuEntity.getContent());
	    a.setGia(VatLieuEntity.getGia());
	    a.setShortDescription(VatLieuEntity.getShortDescription());
	    a.setSoluongton(VatLieuEntity.getSoluongton());
	    a.setTitle(VatLieuEntity.getTitle());
	    a.setImageAfter(VatLieuEntity.getThumbnail());
	    a.setTrangthai(VatLieuEntity.getstatus());
	    return a;
	}

}
