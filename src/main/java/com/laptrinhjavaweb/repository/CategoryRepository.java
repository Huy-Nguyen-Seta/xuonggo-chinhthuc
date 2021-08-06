package com.laptrinhjavaweb.repository;

import java.util.List;

import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import com.laptrinhjavaweb.entity.CategoryEntity;
@Repository
public interface CategoryRepository  extends BaseRepository<CategoryEntity>  {
	CategoryEntity findOneByCode(String code);
	List<CategoryEntity> findAllByStatus(Pageable pag,int Status);
	@Query(value = "SELECT a FROM CategoryEntity a where UPPER(name) like :name1% and status=1 ")
	List<CategoryEntity> FindAllByName(@Param("name1")String name);
	
}
