package com.laptrinhjavaweb.service.impl;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.laptrinhjavaweb.dto.NewDTO;
import com.laptrinhjavaweb.dto.showdealDTO;
import com.laptrinhjavaweb.entity.NewEntity;
import com.laptrinhjavaweb.entity.dealEntity;
import com.laptrinhjavaweb.entity.showDealentity;
import com.laptrinhjavaweb.repository.Dealrepository;
import com.laptrinhjavaweb.repository.NewRepository;
import com.laptrinhjavaweb.repository.ShowDealOutRepository;
import com.laptrinhjavaweb.service.INewService;
import com.laptrinhjavaweb.service.IShowdealservice;

@Service
public class showdealService extends BaseSevice< showDealentity> implements IShowdealservice {
	@Autowired
	private ShowDealOutRepository  sdrp;
	 @Autowired
	private INewService newsv;
	 @Autowired
	private NewRepository newrp;
	 @Autowired
	private Dealrepository dealrp;
	@Override
	@Transactional
	public List<showdealDTO> findAllByDealId(long dealid) {
		List<showdealDTO> dto=new ArrayList<showdealDTO>();
		List<showDealentity> entity=sdrp.findAll();
		for (showDealentity showDealentity : entity) {
			
			if(showDealentity.getDeal().getId()==dealid) {
			showdealDTO a =new showdealDTO();
			a.setMahd(showDealentity.getDeal().getId());
			a.setMasp(showDealentity.getNews().getId());
			a.setSoluong(showDealentity.getSoluong());
			a.setNews(newsv.findById(a.getMasp()));
			
			
			NewDTO b=a.getNews();
			b.setGiacuoi(b.getGia()*a.getSoluong());
		
			a.setNews(b);
			
			dto.add(a);
			}
			
		}
		return dto;
	}

	@Override
	@Transactional
	public showdealDTO save(showdealDTO dto) {
	
		showDealentity entity=new showDealentity();
		NewEntity news=newrp.findOne(dto.getMasp());
		entity.setNews(news);
		dealEntity deals=dealrp.findOne(dto.getMahd());
		entity.setDeal(deals);
		entity.setSoluong(dto.getSoluong());
		entity.setstatus(1);
		
		 sdrp.save(entity);
		 return dto;
	}

	@Override
	@Transactional
	public showdealDTO findById(long id) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	@Transactional
	public List<showdealDTO> findAll() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	@Transactional
	public List<showdealDTO> findAll(Pageable pageable, int status) {
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
