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

import com.laptrinhjavaweb.converter.NewConverter;
import com.laptrinhjavaweb.dto.NewDTO;
import com.laptrinhjavaweb.entity.CategoryEntity;
import com.laptrinhjavaweb.entity.NewEntity;
import com.laptrinhjavaweb.repository.CategoryRepository;
import com.laptrinhjavaweb.repository.NewRepository;
import com.laptrinhjavaweb.service.INewService;

@Service
public class NewService extends BaseSevice< NewEntity> implements INewService {

	@Autowired
	private ServletContext servletContext;
	@Autowired
	private NewRepository newRepository;
	
	@Autowired
	private CategoryRepository categoryRepository;
	
	@Autowired
	private NewConverter newConverter;
	
	@Override
	@Transactional
	public List<NewDTO> findAlladminpage(Pageable pageable) {
		List<NewDTO> models = new ArrayList<>();
		List<NewEntity> entities = newRepository.findAllByStatus(pageable,1);
		for (NewEntity item: entities) {
			
			NewDTO newDTO = newConverter.toDto(item);
			models.add(newDTO);
			
		}
		return models;
	}

	@Override
	@Transactional
	public int getTotalItem(String cate, String news,String model) {
		
		return newRepository.count(model, news, cate);
	}

	@Override
	@Transactional
	public NewDTO findById(long id) {
		NewEntity entity = newRepository.findOne(id);
		return newConverter.toDto(entity);
	}
	
	@Override
	
	public NewDTO save(NewDTO dto) {
	
		CategoryEntity category = categoryRepository.findOneByCode(dto.getCategoryCode());
		
		NewEntity newEntity = new NewEntity();
		
		if (dto.getId() != null) {
		  
			NewEntity oldNew = newRepository.findOne(dto.getId());
			oldNew.setCategory(category);
			
			
			System.out.println("slm"+dto.getSoluongmua());
			newEntity = newConverter.toEntity(oldNew, dto);
			System.out.println("soluonmua"+newEntity.getSoluongmua());
		} else {
		    
			newEntity = newConverter.toEntity(dto);
			newEntity.setCategory(category);
		
		}
	if(dto.getThumbnail() != null) {
	
if(dto.getThumbnail().getOriginalFilename().length()>0) {
	
	        MultipartFile file = dto.getThumbnail();
	        
	        String fileName = servletContext.getRealPath("/") + "resources\\images\\" + file.getOriginalFilename();
	      
	       try {
	    	file.transferTo(new File(fileName));
	    } catch (IllegalStateException e) {

	    	e.printStackTrace();
	    } catch (IOException e) {
	    	
	    	e.printStackTrace();
	    }
	        
	       newEntity.setThumbnail(file.getOriginalFilename());
	     
	        }}
	    newEntity.setstatus(1);
		return newConverter.toDto(newRepository.save(newEntity));
	}

	

	@Override
	public List<NewDTO> findAll(Pageable pageable, int cate) {
		List<NewDTO> models = new ArrayList<>();
		List<NewEntity> entities = newRepository.findAllByStatusAndCategory_id(pageable,1,cate);
		for (NewEntity item: entities) {
			
			NewDTO newDTO = newConverter.toDto(item);
			models.add(newDTO);
		
			
		}
		return models;
	}

	@Override
	@Transactional
	public List<NewDTO> findAll(int cate) {
		List<NewDTO> models = new ArrayList<>();
		List<NewEntity> entities = newRepository.findAllByStatus(1);
		for (NewEntity item: entities) {
			if(item.getCategory().getId()==cate) {
			NewDTO newDTO = newConverter.toDto(item);
			if(entities.size()==1) {
				models.add(newDTO);
				models.add(newDTO);
				models.add(newDTO);
				}
				if(entities.size()==2) {
					models.add(newDTO);
					models.add(newDTO);
					
					}
				if(entities.size()>2) {
					models.add(newDTO);
				}
			
			
			}
		}
		return models;
	}
	@Override
	@Transactional
	public List<NewDTO> findAllByCategoryId(long cate) {
		List<NewDTO> models = new ArrayList<>();
		List<NewEntity> entities = newRepository.findAllByStatus(1);
	
		for (NewEntity item: entities) {
			if(item.getCategory().getId()==cate) {
			NewDTO newDTO = newConverter.toDto(item);
			models.add(newDTO);
		   
			
		}
		}
		return models;
	}

	@Override
	@Transactional
	public List<NewDTO> findbycateandnew(String cate, String news,String model,Pageable page) {
		List<NewDTO> dto=new ArrayList<>();
		
		
		
				
				List<NewEntity> newentity=newRepository.findAllByChatlieuAndTitle(model, news, page,cate);
			for (NewEntity new1 : newentity) {
				dto.add(newConverter.toDto(new1));
				
			}
			
		
		return dto;
	}

	@Override
	@Transactional
	public List<NewDTO> findbymoneylow(long monney) {
		List<NewDTO> models = new ArrayList<>();
		List<NewEntity> entities = newRepository.findAllByStatus(1);
	
		for (NewEntity item: entities) {
			if(item.getGia()<monney) {
			NewDTO newDTO = newConverter.toDto(item);
			models.add(newDTO);
			
		}
		}
		return models;
	}

	@Override
	@Transactional
	public List<NewDTO> findbyslm(long sml) {
		List<NewDTO> models = new ArrayList<>();
		List<NewEntity> entities = newRepository.findAllByStatus(1);
	
		for (NewEntity item: entities) {
			if(item.getSoluongmua()>sml) {
			NewDTO newDTO = newConverter.toDto(item);
			models.add(newDTO);
			
		}
		}
		return models;
	}

	@Override
	@Transactional
	public List<NewDTO> findbymoneyhight(long monney) {
		List<NewDTO> models = new ArrayList<>();
		List<NewEntity> entities = newRepository.findAllByStatus(1);
	
		for (NewEntity item: entities) {
			if(item.getGia()>monney) {
			NewDTO newDTO = newConverter.toDto(item);
			models.add(newDTO);
			
		}
		}
		return models;
	}

	@Override
	@Transactional
	public int getTotalItem(long cate) {
		int tong=0;
		List<NewEntity>  a= newRepository.findAllByStatus(1);
		for (NewEntity newEntity : a) {
			if(newEntity.getCategory().getId()==cate)
			{
				
			tong++;
			}
		}
		
		
		return tong;
		
	}

	


	@Override
	@Transactional
	public List<NewDTO> findAll() {
		// TODO Auto-generated method stub
		return null;
	}



	@Override
	@Transactional
	public List<NewDTO> findAll(long cate) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<NewDTO> findbypopular(boolean popular) {
		List<NewEntity> entities=newRepository.findAllByPopular(popular);
		List<NewDTO> newDTOs=new ArrayList<NewDTO>();
		for (NewEntity newEntity : entities) {
		     newDTOs.add(newConverter.toDto(newEntity));
			
			
		}
		return newDTOs;
	}
}
