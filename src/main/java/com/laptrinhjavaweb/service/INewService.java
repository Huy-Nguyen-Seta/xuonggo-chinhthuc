package com.laptrinhjavaweb.service;

import java.util.List;

import org.springframework.data.domain.Pageable;

import com.laptrinhjavaweb.dto.NewDTO;

public interface INewService extends IBaseInterface<NewDTO> {
	List<NewDTO> findAlladminpage(Pageable pageable);
	List<NewDTO> findAllByCategoryId(long cate);
	int getTotalItem(String cate, String news,String model);
	int getTotalItem(long cate);
	List<NewDTO> findAll(Pageable pageable,int cate);
	List<NewDTO> findAll(int cate);
	List<NewDTO> findAll(long cate);
	List<NewDTO> findbycateandnew(String cate,String news,String modelwood,Pageable page);
	List<NewDTO> findbymoneyhight(long monney);
	List<NewDTO> findbymoneylow(long monney);
	List<NewDTO> findbyslm(long sml);
	List<NewDTO> findbypopular(boolean popular);
	
}
