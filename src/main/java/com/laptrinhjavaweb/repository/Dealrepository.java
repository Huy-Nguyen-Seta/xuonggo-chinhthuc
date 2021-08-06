package com.laptrinhjavaweb.repository;

import java.util.Date;
import java.util.List;

import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import com.laptrinhjavaweb.entity.dealEntity;
@Repository
public interface Dealrepository extends BaseRepository<dealEntity> {
	
    @Query(value="SELECT a FROM dealEntity a where modifieddate between :creationDateTime1  and  :creationDateTime2  and status=1 and trangthai=1")
	 List<dealEntity> findAllWithModifieddate(@Param("creationDateTime1") Date creationDateTime1,@Param("creationDateTime2") Date creationDateTime2);
	 @Query(value = "SELECT count(id) from dealEntity WHERE trangthai=:trangthai and status=1" )
	 int countbytrangthai(@Param("trangthai")int trangthai);
	
	
}
