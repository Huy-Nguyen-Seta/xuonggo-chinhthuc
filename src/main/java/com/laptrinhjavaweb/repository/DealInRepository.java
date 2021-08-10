package com.laptrinhjavaweb.repository;

import java.util.Date;
import java.util.List;

import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import com.laptrinhjavaweb.entity.dealnhapEntity;
@Repository
public interface DealInRepository extends BaseRepository<dealnhapEntity> {
	
    @Query(value="SELECT a FROM dealnhapEntity a where modifieddate between :creationDateTime1  and  :creationDateTime2  and status=1")
	 List<dealnhapEntity> findAllWithModifieddate(@Param("creationDateTime1") Date creationDateTime1,@Param("creationDateTime2") Date creationDateTime2);

}
