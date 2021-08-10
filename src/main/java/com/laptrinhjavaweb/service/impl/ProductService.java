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

import com.laptrinhjavaweb.converter.ProductConverter;
import com.laptrinhjavaweb.dto.NewDTO;
import com.laptrinhjavaweb.entity.CategoryEntity;
import com.laptrinhjavaweb.entity.NewEntity;
import com.laptrinhjavaweb.repository.CategoryRepository;
import com.laptrinhjavaweb.repository.ProductRepository;
import com.laptrinhjavaweb.service.INewService;

@Service
public class ProductService extends BaseSevice< NewEntity> implements INewService {

	@Autowired
	private ServletContext servletContext;
	@Autowired
	private ProductRepository productRepository;
	
	@Autowired
	private CategoryRepository categoryRepository;
	
	@Autowired
	private ProductConverter productConverter;
	
	@Override
	@Transactional
	public List<NewDTO> findAlladminpage(Pageable pageable) {
		List<NewDTO> models = new ArrayList<>();
		List<NewEntity> entities = productRepository.findAllByStatus(pageable,1);
		for (NewEntity item: entities) {
			
			NewDTO newDTO = productConverter.toDto(item);
			models.add(newDTO);
			
		}
		return models;
	}

	@Override
	@Transactional
	public int getTotalItem(String cate, String news,String model) {
		
		return productRepository.count(model, news, cate);
	}

	@Override
	@Transactional
	public NewDTO findById(long id) {
		NewEntity entity = productRepository.findOne(id);
		return productConverter.toDto(entity);
	}
	
	@Override
	
	public NewDTO save(NewDTO dto) {
	
		CategoryEntity category = categoryRepository.findOneByCode(dto.getCategoryCode());
		
		NewEntity newEntity = new NewEntity();
		
		if (dto.getId() != null) {
		  
			NewEntity oldNew = productRepository.findOne(dto.getId());
			oldNew.setCategory(category);
			
			
			System.out.println("slm"+dto.getSoluongmua());
			newEntity = productConverter.toEntity(oldNew, dto);
			System.out.println("soluonmua"+newEntity.getSoluongmua());
		} else {
		    
			newEntity = productConverter.toEntity(dto);
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
		return productConverter.toDto(productRepository.save(newEntity));
	}

	

	@Override
	public List<NewDTO> findAll(Pageable pageable, int cate) {
		List<NewDTO> models = new ArrayList<>();
		List<NewEntity> entities = productRepository.findAllByStatusAndCategory_id(pageable,1,cate);
		for (NewEntity item: entities) {
			
			NewDTO newDTO = productConverter.toDto(item);
			models.add(newDTO);
		
			
		}
		return models;
	}

	@Override
	@Transactional
	public List<NewDTO> findAll(int cate) {
		List<NewDTO> models = new ArrayList<>();
		List<NewEntity> entities = productRepository.findAllByStatus(1);
		for (NewEntity item: entities) {
			if(item.getCategory().getId()==cate) {
			NewDTO newDTO = productConverter.toDto(item);
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
		List<NewEntity> entities = productRepository.findAllByStatus(1);
	
		for (NewEntity item: entities) {
			if(item.getCategory().getId()==cate) {
			NewDTO newDTO = productConverter.toDto(item);
			models.add(newDTO);
		   
			
		}
		}
		return models;
	}

	@Override
	@Transactional
	public List<NewDTO> findbycateandnew(String cate, String news,String model,Pageable page) {
		List<NewDTO> dto=new ArrayList<>();
		
		
		
				
				List<NewEntity> newentity=productRepository.findAllByChatlieuAndTitle(model, news, page,cate);
			for (NewEntity new1 : newentity) {
				dto.add(productConverter.toDto(new1));
				
			}
			
		
		return dto;
	}

	@Override
	@Transactional
	public List<NewDTO> findbymoneylow(long monney) {
		List<NewDTO> models = new ArrayList<>();
		List<NewEntity> entities = productRepository.findAllByStatus(1);
	
		for (NewEntity item: entities) {
			if(item.getGia()<monney) {
			NewDTO newDTO = productConverter.toDto(item);
			models.add(newDTO);
			
		}
		}
		return models;
	}

	@Override
	@Transactional
	public List<NewDTO> findbyslm(long sml) {
		List<NewDTO> models = new ArrayList<>();
		List<NewEntity> entities = productRepository.findAllByStatus(1);
	
		for (NewEntity item: entities) {
			if(item.getSoluongmua()>sml) {
			NewDTO newDTO = productConverter.toDto(item);
			models.add(newDTO);
			
		}
		}
		return models;
	}

	@Override
	@Transactional
	public List<NewDTO> findbymoneyhight(long monney) {
		List<NewDTO> models = new ArrayList<>();
		List<NewEntity> entities = productRepository.findAllByStatus(1);
	
		for (NewEntity item: entities) {
			if(item.getGia()>monney) {
			NewDTO newDTO = productConverter.toDto(item);
			models.add(newDTO);
			
		}
		}
		return models;
	}

	@Override
	@Transactional
	public int getTotalItem(long cate) {
		int tong=0;
		List<NewEntity>  a= productRepository.findAllByStatus(1);
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
		List<NewEntity> entities=productRepository.findAllByPopular(popular);
		List<NewDTO> newDTOs=new ArrayList<NewDTO>();
		for (NewEntity newEntity : entities) {
		     newDTOs.add(productConverter.toDto(newEntity));
			
			
		}
		return newDTOs;
	}
}
