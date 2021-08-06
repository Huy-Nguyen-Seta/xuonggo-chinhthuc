package com.laptrinhjavaweb.repository;

import java.util.List;

import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import com.laptrinhjavaweb.entity.NewEntity;
@Repository
public interface NewRepository extends BaseRepository<NewEntity> {
	List<NewEntity> findAllByStatus(Pageable pag,int trangthai);
	List<NewEntity> findAllByStatusAndCategory_id(Pageable pag,int trangthai,long cate);
	@Query(value = "SELECT a FROM NewEntity a where status=1 "
			+ "and upper(chatlieu) like  %:loai% "
			+ "and upper(title) like %:name% "
			+ " and exists (select b from CategoryEntity b where category_id=b.id and UPPER(name) like %:cate%) ")
	List<NewEntity> findAllByChatlieuAndTitle(@Param("loai")String loai,@Param("name")String name,Pageable pageable,@Param("cate")String cate);
	@Query(value = "SELECT count(id) FROM NewEntity a where status=1 "
			+ "and upper(chatlieu) like  %:loai% "
			+ "and upper(title) like %:name% "
			+ " and exists (select b from CategoryEntity b where category_id=b.id and UPPER(name) like %:cate%) ")
	int count(@Param("loai")String loai,@Param("name")String name,@Param("cate")String cate);
//	@Query(value = "SELECT count(id) FROM NewEntity a where status=1")
	//int countByTrangThai1();
	List<NewEntity> findAllByPopular(boolean popular);
	@Query(value = "SELECT sum(a.soluongton) from NewEntity a where status=1 ")
	int ProductsInstock();
	@Query(value = "SELECT count(id) from NewEntity  a where status=1 and slt=0")
	int Productsareoutofstock();
	
}
