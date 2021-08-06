package com.laptrinhjavaweb.service.impl;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Pageable;
import org.springframework.security.crypto.bcrypt.BCrypt;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.laptrinhjavaweb.converter.UserConverter;
import com.laptrinhjavaweb.dto.UserDTO;
import com.laptrinhjavaweb.entity.RoleEntity;
import com.laptrinhjavaweb.entity.UserEntity;
import com.laptrinhjavaweb.repository.RoleRepository;
import com.laptrinhjavaweb.repository.UserRepository;
import com.laptrinhjavaweb.service.IUsersevice;
@Service
public class UserService extends BaseSevice< UserEntity> implements IUsersevice {
	@Autowired
	private UserRepository userrp;
	@Autowired
	private RoleRepository rolerp;
	@Autowired
	private UserConverter userconverter;
	@Override
	@Transactional
	public List<String> TestUser() {
		
		List<UserEntity> userentity =new ArrayList<>();
		List<String> userdto=new ArrayList<>();
		userentity=userrp.findAll();
		for (UserEntity userEntity2 : userentity) {
			
			userdto.add(userEntity2.getUserName());
			
		}
		return userdto;
	}
	@Override
	@Transactional
	public UserDTO save(UserDTO user) {
		
		UserEntity entity=new UserEntity();
		RoleEntity role=new RoleEntity();
		List<RoleEntity> listrole=new  ArrayList<RoleEntity>();
		entity.setUserName(user.getUsername());
		entity.setPassword(BCrypt.hashpw(user.getPassword(),BCrypt.gensalt()));
		entity.setDiachi(user.getDiachi());
		entity.setSdt(user.getSdt());
		entity.setGmail(user.getGmail());
		entity.setFullName(user.getFullName());
		role=rolerp.findOneByCode("USER");
		listrole.add(role);
		entity.setRoles(listrole);
		entity.setstatus(1);
		userrp.save(entity);
		return user;
		
	}
	@Override
	@Transactional
	public UserEntity finbyusername(String u) {
		List<UserEntity> user=userrp.findAll();
		
		for (UserEntity userEntity : user) {
		
			if(userEntity.getUserName().equals(u)) {
				
				return userEntity;
			}
		}
		return null;
	}
	@Override
	@Transactional
	public UserDTO findById(long id) {
		UserDTO dto=new UserDTO();
		List<UserEntity> entity=userrp.findAll();
		for (UserEntity userEntity : entity) {
			if(userEntity.getId()==id) {
            dto=userconverter.toDTO(userEntity);
				return dto;
			}
		}
		return null;
	}
	
	@Override
	@Transactional
	public List<UserDTO> findAll() {
		// TODO Auto-generated method stub
		return null;
	}
	@Override
	@Transactional
	public List<UserDTO> findAll(Pageable pageable, int status) {
		List<UserEntity> entities =userrp.findAllByStatus(status, pageable);
		List<UserDTO> findall=new ArrayList<UserDTO>();
		for (UserEntity entity : entities) {
			UserDTO userDTO = userconverter.toDTO(entity);
			findall.add(userDTO);
			
		}
		return findall;
	}


}
