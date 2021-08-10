package com.laptrinhjavaweb.service.impl;

import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletContext;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.multipart.MultipartFile;

import com.laptrinhjavaweb.converter.ManufactureConverter;
import com.laptrinhjavaweb.dto.ManufactureDTO;
import com.laptrinhjavaweb.entity.NccEntity;
import com.laptrinhjavaweb.repository.ManufactureRepostitoty;
import com.laptrinhjavaweb.service.IManufacturesevice;

@Service
public class ManufauturelService  extends BaseSevice<NccEntity> implements IManufacturesevice {
@Autowired
private ManufactureRepostitoty rp;
@Autowired
private ManufactureConverter manufactureConverter;
@Autowired
ServletContext servletContext;
@Override
@Transactional
	public ManufactureDTO save(ManufactureDTO ncc) {
		NccEntity a=new NccEntity();
	if(ncc.getId()!=null) {
		a=rp.findOne(ncc.getId());
	}
	
	a.setDiachi(ncc.getDiachi());
	a.setFullName(ncc.getFullName());
	a.setDonvi(ncc.getDonvi());
	a.setGmail(ncc.getGmail());
	a.setSdt(ncc.getSdt());
	a.setstatus(1);
	 
    if(ncc.getThumbnail().getOriginalFilename().length()>0) {
    	
    MultipartFile file = ncc.getThumbnail();
    
    String fileName = servletContext.getRealPath("/") + "resources\\images\\" + file.getOriginalFilename();
  
   try {
	file.transferTo(new File(fileName));
} catch (IllegalStateException e) {

	e.printStackTrace();
} catch (IOException e) {
	
	e.printStackTrace();
}
    
    a.setThumbnail(file.getOriginalFilename());
 
    }
	rp.save(a);
	return ncc;
	}

@Override
@Transactional
	public ManufactureDTO findById(long id) {
		
	
		NccEntity ncc=rp.findOne(id);
		
		ManufactureDTO a=manufactureConverter.toDto(ncc);
		
		return a;
	}

@Override
@Transactional
	public List<ManufactureDTO> findAll(Pageable page, int tt) {
		List<ManufactureDTO> dto =new ArrayList<ManufactureDTO>();
		List<NccEntity>entity=rp.findAllByStatus(1);
		for (NccEntity nccEntity : entity) {
			ManufactureDTO a=manufactureConverter.toDto(nccEntity);
			dto.add(a);
			
		}
		return dto;
	}



	@Override
	@Transactional
	public List<ManufactureDTO> findAll() {
		List<ManufactureDTO> dto =new ArrayList<ManufactureDTO>();
		List<NccEntity>entity=rp.findAllByStatus(1);
		for (NccEntity nccEntity : entity) {
			ManufactureDTO a=manufactureConverter.toDto(nccEntity);
			dto.add(a);
			
		}
		return dto;
	}



	
}
