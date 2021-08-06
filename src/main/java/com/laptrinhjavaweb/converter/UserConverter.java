package com.laptrinhjavaweb.converter;

import org.springframework.stereotype.Component;

import com.laptrinhjavaweb.dto.UserDTO;
import com.laptrinhjavaweb.entity.UserEntity;
@Component
public class UserConverter {
	public UserDTO toDTO (UserEntity userEntity) {
		UserDTO dto = new UserDTO();
		dto.setId(userEntity.getId());
		dto.setFullName(userEntity.getFullName());
		dto.setDiachi(userEntity.getDiachi());
		dto.setGmail(userEntity.getGmail());
		dto.setSdt(userEntity.getSdt());
		dto.setTrangthai(userEntity.getstatus());
		dto.setUsername(userEntity.getUserName());
		dto.setId(userEntity.getId());
		return dto;
		
	}

}
