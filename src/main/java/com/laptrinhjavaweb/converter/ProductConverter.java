package com.laptrinhjavaweb.converter;

import org.springframework.stereotype.Component;

import com.laptrinhjavaweb.dto.NewDTO;
import com.laptrinhjavaweb.entity.NewEntity;

@Component
public class ProductConverter {

	public NewDTO toDto(NewEntity entity) {
		NewDTO result = new NewDTO();
		result.setId(entity.getId());
		result.setTitle(entity.getTitle());
		result.setShortDescription(entity.getShortDescription());
		result.setContent(entity.getContent());
		result.setAfterimage(entity.getThumbnail());
		result.setCategoryCode(entity.getCategory().getCode());
	    result.setTrangthai(1);
	    result.setChieudai(entity.getChieudai());
	    result.setChieurong(entity.getChieurong());
	    result.setCategoryId(entity.getCategory().getId());
	    result.setPopular(entity.getPopular());
	    result.setTrangthai(entity.getstatus());
	 
	    if(entity.getSoluongmua()>0) {
	    result.setSoluongmua(entity.getSoluongmua());
	    }else {
	    	  result.setSoluongmua(0);
	    }
	    if(entity.getSoluongton()>0) {
	    result.setSoluongton(entity.getSoluongton());}
	    else {
	    	 result.setSoluongton(0);}
	    
	    if(entity.getGia()>0) {
	    result.setGia(entity.getGia());
	    }else {
	    	  result.setGia(0);
	    }
	 
	    result.setChatlieu(entity.getChatlieu());
		return result;
	}
	
	public NewEntity toEntity(NewDTO dto) {
		NewEntity result = new NewEntity();
		result.setTitle(dto.getTitle());
		result.setShortDescription(dto.getShortDescription());
		result.setContent(dto.getContent());
		//result.setThumbnail(dto.get());
	    result.setChieudai(dto.getChieudai());
	    result.setChieurong(dto.getChieurong());
	    result.setSoluongmua(dto.getSoluongmua());
	    result.setPopular(dto.getPopular());
	    result.setstatus(dto.getTrangthai());
	    System.out.println(dto.getSoluongmua());
		    if(dto.getSoluongton()>0) {
		    result.setSoluongton(dto.getSoluongton());}
		    else {
		    	 result.setSoluongton(0);}
		    
		    if(dto.getGia()>0) {
		    result.setGia(dto.getGia());
		    }else {
		    	  result.setGia(0);
		    }
	    result.setChatlieu(dto.getChatlieu());
		return result;
	}
	
	public NewEntity toEntity(NewEntity result, NewDTO dto) {
		result.setTitle(dto.getTitle());
		result.setShortDescription(dto.getShortDescription());
		result.setContent(dto.getContent());
		//result.setThumbnail(dto.getThumbnail());
		  result.setPopular(dto.getPopular());
	    result.setstatus(dto.getTrangthai());
	    result.setChieudai(dto.getChieudai());
	    result.setChieurong(dto.getChieurong());
	    
	   result.setSoluongmua(dto.getSoluongmua());
	    
		    if(dto.getSoluongton()>0) {
		    result.setSoluongton(dto.getSoluongton());}
		    else {
		    	 result.setSoluongton(0);}
		    
		    if(dto.getGia()>0) {
		    result.setGia(dto.getGia());
		    }else {
		    	  result.setGia(0);
		    }
	    result.setChatlieu(dto.getChatlieu());
	
		return result;
	}
}
