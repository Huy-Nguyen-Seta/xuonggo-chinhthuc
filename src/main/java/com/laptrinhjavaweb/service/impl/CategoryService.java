package com.laptrinhjavaweb.service.impl;

import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.ServletContext;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.multipart.MultipartFile;

import com.laptrinhjavaweb.converter.CategoryConverter;
import com.laptrinhjavaweb.dto.CategoryDTO;
import com.laptrinhjavaweb.entity.CategoryEntity;
import com.laptrinhjavaweb.repository.CategoryRepository;
import com.laptrinhjavaweb.service.ICategoryService;
import com.laptrinhjavaweb.service.INewService;

@Service
public class CategoryService  extends BaseSevice< CategoryEntity>  implements ICategoryService{


	@Autowired
	ServletContext servletContext;
	@Autowired
	private CategoryRepository categoryRepository;
	@Autowired
	private INewService newsv;
	@Autowired
	private CategoryConverter cv;
	
	@Override
	@Transactional
	public Map<String, String> findAllMap() {
		Map<String, String> result = new HashMap<>();
		List<CategoryEntity> entities = categoryRepository.findAllByStatus(1);
		for (CategoryEntity item: entities) {
			
			result.put(item.getCode(), item.getName());
		

		}
		return result;
	}

	@Override
	@Transactional
	public List<CategoryDTO> findAll(Pageable pageable,int status) {
		List<CategoryDTO> models = new ArrayList<>();
		List<CategoryEntity> entities = categoryRepository.findAllByStatus(pageable,1);
		for (CategoryEntity item: entities) {
	      
			CategoryDTO newDTO = cv.toDto(item);
			
			if(newsv.findAllByCategoryId(item.getId()) != null) {
			newDTO.setSoluongsp(newsv.findAllByCategoryId(item.getId()).size());
			
			}
		   
			models.add(newDTO);
			
		}
		return models;
	}



	@Override
	@Transactional
	public CategoryDTO findById(long id) {
		CategoryEntity entity = categoryRepository.findOne(id);
		return cv.toDto(entity);

	}

	@Override
	@Transactional
	public CategoryDTO save(CategoryDTO dto) {
		CategoryEntity cate=new CategoryEntity();
		if (dto.getId() != null) {
			CategoryEntity oldNew = categoryRepository.findOne(dto.getId());
		    oldNew.setName(dto.getName());
		    oldNew.setCode(dto.getCode());
		    oldNew.setShortDescription(dto.getShortDescription());
			
			cate =oldNew;
		} else {
			cate = cv.toEntity(dto);
		
		}
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
	        
	        cate.setThumbnail(file.getOriginalFilename());
	     
	        }
		cate.setstatus(1);
	categoryRepository.save(cate);
		return null;
	}

	@Override
	@Transactional
	public void delete(long[] ids) {
		for (long id: ids) {
			CategoryEntity a=categoryRepository.findOne(id);
			a.setstatus(0);
			categoryRepository.save(a);
		}
		
	}

	@Override
	@Transactional
	public List<CategoryDTO> findAll() {
		List<CategoryDTO> models = new ArrayList<>();
		List<CategoryEntity> entities = categoryRepository.findAllByStatus(1);
		for (CategoryEntity item: entities) {
		  
			CategoryDTO newDTO = cv.toDto(item);
			
			if(newsv.findAllByCategoryId(item.getId()) != null) {
				newDTO.setSoluongsp(newsv.findAllByCategoryId(item.getId()).size());
				
				}
			
			models.add(newDTO);
			
		}
		return models;
	}






	






	
}
