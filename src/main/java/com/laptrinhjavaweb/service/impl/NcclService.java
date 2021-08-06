package com.laptrinhjavaweb.service.impl;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.laptrinhjavaweb.converter.NccConverter;
import com.laptrinhjavaweb.dto.NccDTO;
import com.laptrinhjavaweb.entity.NccEntity;
import com.laptrinhjavaweb.repository.NccRepostitoty;
import com.laptrinhjavaweb.service.INccsevice;

@Service
public class NcclService  extends BaseSevice<NccEntity> implements INccsevice {
@Autowired
private NccRepostitoty rp;
@Autowired
private NccConverter nccConverter;

@Override
@Transactional
	public NccDTO save(NccDTO ncc) {
		NccEntity a=new NccEntity();
	if(ncc.getId()!=null) {
		a=rp.findOne(ncc.getId());
	}
	
	a.setDiachi(ncc.getDiachi());
	a.setFullName(ncc.getFullName());
	a.setDonvi(ncc.getDonvi());
	a.setGmail(ncc.getGmail());
	a.setSdt(ncc.getSdt());
	a.setThumbnail(ncc.getThumbnail());
	a.setstatus(1);
	rp.save(a);
	return ncc;
	}

@Override
@Transactional
	public NccDTO findById(long id) {
		
	
		NccEntity ncc=rp.findOne(id);
		
		NccDTO a=nccConverter.toDto(ncc);
		
		return a;
	}

@Override
@Transactional
	public List<NccDTO> findAll(Pageable page, int tt) {
		List<NccDTO> dto =new ArrayList<NccDTO>();
		List<NccEntity>entity=rp.findAllByStatus(1);
		for (NccEntity nccEntity : entity) {
			NccDTO a=nccConverter.toDto(nccEntity);
			dto.add(a);
			
		}
		return dto;
	}



	@Override
	@Transactional
	public List<NccDTO> findAll() {
		List<NccDTO> dto =new ArrayList<NccDTO>();
		List<NccEntity>entity=rp.findAllByStatus(1);
		for (NccEntity nccEntity : entity) {
			NccDTO a=nccConverter.toDto(nccEntity);
			dto.add(a);
			
		}
		return dto;
	}



	
}
