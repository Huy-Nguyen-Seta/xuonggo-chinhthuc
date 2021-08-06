package com.laptrinhjavaweb.repository;

import java.util.List;

import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.repository.NoRepositoryBean;

import com.laptrinhjavaweb.entity.BaseEntity;
@NoRepositoryBean
public interface BaseRepository<T extends BaseEntity> extends JpaRepository<T, Long> {
	List<T> findAllByStatus( int status,Pageable page);
	List<T> findAllByStatus(int status);
	int countBystatus(int status);

}
