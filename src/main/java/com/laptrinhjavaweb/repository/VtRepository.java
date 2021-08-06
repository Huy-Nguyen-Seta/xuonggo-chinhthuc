package com.laptrinhjavaweb.repository;

import java.util.List;

import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import com.laptrinhjavaweb.entity.VatLieuEntity;
@Repository
public interface VtRepository extends BaseRepository<VatLieuEntity> {
	List<VatLieuEntity> findAllByStatus(Pageable page ,int trangthai);
	List<VatLieuEntity> findAllByStatus(int trangthai);
	@Query(value = "SELECT sum(a.soluongton) from VatLieuEntity a where status=1")
	int ProductsInstock();
	@Query(value = "SELECT count(id) from VatLieuEntity  a where status=1 and slt=0")
	int Productsareoutofstock();
	
}
