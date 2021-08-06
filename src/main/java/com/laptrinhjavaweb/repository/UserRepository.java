package com.laptrinhjavaweb.repository;

import com.laptrinhjavaweb.entity.UserEntity;

public interface UserRepository extends BaseRepository<UserEntity> {
	UserEntity findOneByUserNameAndStatus(String username, int status);

}
