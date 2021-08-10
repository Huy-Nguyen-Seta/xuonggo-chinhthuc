package com.laptrinhjavaweb.service.impl;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.laptrinhjavaweb.dto.showdealnhapDTO;
import com.laptrinhjavaweb.dto.MaterialDTO;
import com.laptrinhjavaweb.entity.CategoryEntity;
import com.laptrinhjavaweb.entity.VatLieuEntity;
import com.laptrinhjavaweb.entity.dealnhapEntity;
import com.laptrinhjavaweb.entity.showDealnhapEntity;
import com.laptrinhjavaweb.repository.DealInRepository;
import com.laptrinhjavaweb.repository.ShowdealInRepositoty;
import com.laptrinhjavaweb.repository.MaterialRepository;
import com.laptrinhjavaweb.service.IShowdealnhapservice;
import com.laptrinhjavaweb.service.IMaterialService;

@Service
public class ShowDealInService extends BaseSevice< CategoryEntity> implements IShowdealnhapservice {

    @Autowired
    private MaterialRepository vtrp;
	@Autowired 
	private ShowdealInRepositoty sdrp;
	
	@Autowired
	private IMaterialService vt;
	@Autowired
	private DealInRepository dealrp;
	@Override
	@Transactional
	public List<showdealnhapDTO> findAllByDealId(long dealid) {
		List<showdealnhapDTO> dto=new ArrayList<showdealnhapDTO>();
		List<showDealnhapEntity> entity=sdrp.findAll();
		for (showDealnhapEntity showDealentity : entity) {
			
			if(showDealentity.getDealnhap().getId()==dealid) {
			showdealnhapDTO a =new showdealnhapDTO();
		  
			a.setSoluong(showDealentity.getSoluong());
			
			a.setVatlieu(vt.findById(showDealentity.getVatlieu().getId()));
			MaterialDTO b=new MaterialDTO();
			b.setGiacuoi(b.getGia()*a.getSoluong());
		
		
			
			dto.add(a);
			}
			
		}
		return dto;
	}


	@Override
	@Transactional
	public showdealnhapDTO save(showdealnhapDTO dto,long id) {
	
		showDealnhapEntity entity=new showDealnhapEntity();
		VatLieuEntity vatlieu=vtrp.findOne(dto.getMavt());
		entity.setVatlieu(vatlieu);
		dealnhapEntity deals=dealrp.findOne(id);
		//System.out.println(deals.getId());
		entity.setDealnhap(deals);
		entity.setSoluong(dto.getSoluong());
	   VatLieuEntity vl=vtrp.findOne(dto.getMavt());
	   vl.setSoluongton(vl.getSoluongton()+dto.getSoluong());
	 
	   vtrp.save(vl);
		
		entity.setstatus(1);
		 sdrp.save(entity);
		 return dto;
	}



	@Override
	@Transactional
	public List<showdealnhapDTO> findAll() {
	
		return null;
	}

	
	@Override
	@Transactional
	public showdealnhapDTO findById(long id) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	@Transactional
	public List<showdealnhapDTO> findAll(Pageable pageable, int status) {
		// TODO Auto-generated method stub
		return null;
	}

	

	@Override
	@Transactional
	public showdealnhapDTO save(showdealnhapDTO value) {
		// TODO Auto-generated method stub
		return null;
	}





	
}
