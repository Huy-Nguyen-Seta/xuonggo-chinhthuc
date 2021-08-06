package com.laptrinhjavaweb.service;


import java.util.List;

import com.laptrinhjavaweb.dto.UserDTO;
import com.laptrinhjavaweb.entity.UserEntity;

public interface IUsersevice extends IBaseInterface<UserDTO> {
  List<String> TestUser();
  UserEntity finbyusername(String user);

}
