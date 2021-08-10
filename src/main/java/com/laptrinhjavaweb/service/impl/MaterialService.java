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

import com.laptrinhjavaweb.converter.MaterialConverter;
import com.laptrinhjavaweb.dto.MaterialDTO;
import com.laptrinhjavaweb.entity.VatLieuEntity;
import com.laptrinhjavaweb.repository.MaterialRepository;
import com.laptrinhjavaweb.service.IMaterialService;

@Service
public class MaterialService extends BaseSevice<VatLieuEntity> implements IMaterialService {

@Autowired
private ServletContext  servletContext;
@Autowired
private MaterialRepository rp;
@Autowired
private MaterialConverter vtconverter;
@Override
@Transactional
	public MaterialDTO save(MaterialDTO ncc) {
		VatLieuEntity a=new VatLieuEntity();
	if(ncc.getId()!=null) {
		a=rp.findOne(ncc.getId());
	}
    a.setChatlieu(ncc.getChatlieu());
    a.setChieudai(ncc.getChieudai());
    a.setChieurong(ncc.getChieurong());
    a.setContent(ncc.getContent());
    a.setGia(ncc.getGia());
    a.setShortDescription(ncc.getShortDescription());
    a.setSoluongton(ncc.getSoluongton());
    a.setTitle(ncc.getTitle());
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
	public MaterialDTO findById(long id) {
		
		
		VatLieuEntity vatLieuEntity=rp.findOne(id);
		MaterialDTO a=vtconverter.toDTO(vatLieuEntity);
		
		return a;
	}

@Override
@Transactional
	public List<MaterialDTO> findAll(Pageable page, int tt) {
		List<MaterialDTO> dto =new ArrayList<MaterialDTO>();
		List<VatLieuEntity>entity=rp.findAllByStatus(1, page);
		for (VatLieuEntity VatLieuEntity : entity) {
			MaterialDTO a=vtconverter.toDTO(VatLieuEntity);
			dto.add(a);
			
		}
		return dto;
	}



	@Override
	@Transactional
	public List<MaterialDTO> findAll() {
		List<MaterialDTO> dto =new ArrayList<MaterialDTO>();
		List<VatLieuEntity>entity=rp.findAllByStatus(1);
		for (VatLieuEntity VatLieuEntity : entity) {
			 MaterialDTO a=vtconverter.toDTO(VatLieuEntity);
			dto.add(a);
			
		}
		return dto;
	}





	
}
