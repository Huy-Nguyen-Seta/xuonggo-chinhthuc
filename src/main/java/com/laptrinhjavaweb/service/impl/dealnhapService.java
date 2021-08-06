package com.laptrinhjavaweb.service.impl;


import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.laptrinhjavaweb.converter.DealInConverter;
import com.laptrinhjavaweb.dto.DealNhapDto;
import com.laptrinhjavaweb.dto.showdealnhapDTO;
import com.laptrinhjavaweb.entity.dealnhapEntity;
import com.laptrinhjavaweb.repository.DealNhapRepository;
import com.laptrinhjavaweb.repository.NccRepostitoty;
import com.laptrinhjavaweb.service.IShowdealnhapservice;
import com.laptrinhjavaweb.service.Idealnhapservice;

@Service
public class dealnhapService extends BaseSevice<dealnhapEntity> implements Idealnhapservice {

@Autowired
private NccRepostitoty ncc;
@Autowired
private DealNhapRepository dealrp;
@Autowired 
private IShowdealnhapservice dealnhapservice;
@Autowired
private DealInConverter dealinconverter;

@Override
@Transactional
public DealNhapDto findById(long id) {
	dealnhapEntity entities = dealrp.findOne(id);
	DealNhapDto dealdto = dealinconverter.toDto(entities);	
	dealdto.setShowdealnhap(dealnhapservice.findAllByDealId(id));
	

return dealdto;
}
@Override
@Transactional
public void saveDeal(showdealnhapDTO[] dto) {
	dealnhapEntity dealnhap =new dealnhapEntity();
	dealnhap.setNhacc(ncc.findOne(dto[0].getMancc()));
	dealnhap.setstatus(1);
    long dealId=dealrp.save(dealnhap).getId();
    System.out.println(dealId);
    for (showdealnhapDTO showdealnhapDTO : dto) {
    	dealnhapservice.save(showdealnhapDTO, dealId);
	
	}

}

@Override
@Transactional
public List<DealNhapDto> findAll() {
	List<DealNhapDto> dealnhapdto=new ArrayList<DealNhapDto>();
	List<dealnhapEntity> dealnhEntities=dealrp.findAllByStatus(1);
	for (dealnhapEntity dealnhapEntity : dealnhEntities) {
		
			DealNhapDto deal =dealinconverter.toDto(dealnhapEntity);
			deal.setGiahoadon(tinhtienhd(deal.getId()));
			dealnhapdto.add(deal);
		
		
	}
	return dealnhapdto;
}
@Override
@Transactional
public List<String> chart(int year1) {
	List<String> chart= new ArrayList<String>();
	for(int i=1;i<=12;i++) {
   
    float tongtien=0;
    
	String date1=year1+"-"+i+"-01";
	
	String date2=year1+"-"+(i+1)+"-01";
	List<dealnhapEntity>a = new ArrayList<dealnhapEntity>();
	
		try {
			a=dealrp.findAllWithModifieddate( new SimpleDateFormat("yyyy-MM-dd").parse(date1),new SimpleDateFormat("yyyy-MM-dd").parse( date2));
		} catch (ParseException e) {
			
			e.printStackTrace();
		}
		for (dealnhapEntity dealEntity : a) {
			
			tongtien=tongtien+tinhtienhd(dealEntity.getId());
			
			
		}
	
		
		chart.add(tongtien+"");
	}
		return chart;
}
@Override
@Transactional
public float tinhtienhd(long id) {
	float tong=0;
	
    for (showdealnhapDTO sdeal : dealnhapservice.findAllByDealId(id)) {
    	
    	tong+=sdeal.getSoluong()*(sdeal.getVatlieu().getGia());
		
	}
	return tong;

}
@Override
@Transactional
public float MonneywithYear(int year) {
     float tongtien=0;
     
	List<dealnhapEntity>a = new ArrayList<dealnhapEntity>();
	
	//Date date = new Date();
	//LocalDate localDate = date.toInstant().atZone(ZoneId.systemDefault()).toLocalDate();
	//int month = localDate.getMonthValue();
    String date1=year+"-"+1+"-01";
	
	String date2=year+"-"+12+"-31";
	try {
		a=dealrp.findAllWithModifieddate( new SimpleDateFormat("yyyy-MM-dd").parse(date1),new SimpleDateFormat("yyyy-MM-dd").parse( date2));
	} catch (ParseException e) {
		
		e.printStackTrace();
	}
	for (dealnhapEntity dealEntity : a) {
		if(dealEntity.getstatus()==1){
		tongtien=tongtien+tinhtienhd(dealEntity.getId());
		}
		
	}	
	return tongtien;
}



@Override
@Transactional
public DealNhapDto save(DealNhapDto value) {
	// TODO Auto-generated method stub
	return null;
}
@Override
@Transactional
public List<DealNhapDto> findAll(Pageable pageable, int status) {
	// TODO Auto-generated method stub
	return null;
}
@Override
@Transactional
public int getTotalItem(int status) {
	// TODO Auto-generated method stub
	return 0;
}

	
}


	
	
	

