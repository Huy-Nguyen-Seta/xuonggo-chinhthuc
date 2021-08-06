package com.laptrinhjavaweb.service.impl;

import java.sql.Timestamp;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.laptrinhjavaweb.dto.NewDTO;
import com.laptrinhjavaweb.dto.dealDTO;
import com.laptrinhjavaweb.dto.showdealDTO;
import com.laptrinhjavaweb.entity.UserEntity;
import com.laptrinhjavaweb.entity.dealEntity;
import com.laptrinhjavaweb.repository.Dealrepository;
import com.laptrinhjavaweb.repository.UserRepository;
import com.laptrinhjavaweb.service.INewService;
import com.laptrinhjavaweb.service.IShowdealservice;
import com.laptrinhjavaweb.service.IUsersevice;
import com.laptrinhjavaweb.service.Idealservice;

@Service
public class dealService extends BaseSevice< dealEntity> implements Idealservice {
	


@Autowired
private Dealrepository dealrp;
@Autowired
private IShowdealservice showdeal;
@Autowired
private INewService newsv;
@Autowired
private IUsersevice usersv;
@Autowired
private UserRepository userrp;

	

@Override
@Transactional
	public dealDTO findById(long id) {
		
		dealEntity entities = dealrp.findOne(id);
            dealDTO newDTO = new dealDTO();
			newDTO.setTt(entities.getTt());
			newDTO.setMakh(entities.getUser().getId());
			newDTO.setId(entities.getId());
			newDTO.setTt(entities.getTt());
		    newDTO.setShowdeal(showdeal.findAllByDealId(entities.getId()));
		    newDTO.setKiemtra(1);
		    newDTO.setTrangthai(entities.getstatus());
		    
		  for (showdealDTO sdealEntity : newDTO.getShowdeal()) {
			  newDTO.setGiahoadon(newDTO.getGiahoadon()+sdealEntity.getNews().getGiacuoi());
			if(sdealEntity.getNews().getSoluongton()<sdealEntity.getSoluong()) {
				newDTO.setKiemtra(0);
			}
			
			
		}
		    newDTO.setUser(usersv.findById(newDTO.getMakh()));
		 
		    newDTO.setCreatedDate((Timestamp)entities.getCreatedDate());
			
	
		return newDTO;
	}

@Override
@Transactional
	public dealDTO save(dealDTO dto) {
		dealEntity entity=new dealEntity();
		UserEntity user=userrp.findOne(dto.getMakh());
		entity.setUser(user);;
		entity.setTt(0);
		entity.setstatus(1);
		
		 dealrp.save(entity);
		 return dto;
		
		
	}



@Override
@Transactional
	public List<dealDTO> findAllByStatusUserAccep(int stt) {
	List<dealDTO> list= new ArrayList<dealDTO>();
	for (dealEntity deale: dealrp.findAllByStatus(1)) {
		if(deale.getTt()==stt) {
		dealDTO a= new dealDTO();
		a.setId(deale.getId());
		a.setGiahoadon((long) tinhtienhd(deale.getId()));
		a.setTrangthai(deale.getstatus());
		a.setUser(usersv.findById(deale.getUser().getId()));
		a.setCreatedDate((Timestamp) deale.getCreatedDate());
		a.setTrangthai(1);
		//System.out.println(a.getUser().getFullName());
		list.add(a);
		}
	}
		return list;
	}

	@Override
	@Transactional
	public void setStatusAndIncreaseTotal(long id) {
		List<showdealDTO> a =showdeal.findAllByDealId(id);
	    for (showdealDTO showdealDTO : a) {
	    	
		   NewDTO news= newsv.findById(showdealDTO.getMasp());
		
		   news.setSoluongton(news.getSoluongton()-showdealDTO.getSoluong());
		   news.setSoluongmua(news.getSoluongmua()+showdealDTO.getSoluong());
		   
		  newsv.save(news);
	    }
	    
	  
		dealEntity entity= dealrp.findOne(id);
		entity.setstatus(1);
		entity.setTt(1);
	
		dealrp.save(entity);
		
	}

	@Override
	@Transactional
	public List<String> chart(int year1) {
		List<String> chart= new ArrayList<String>();
		for(int i=1;i<=12;i++) {
	    float tongtien=0;
	    
		String date1=year1+"-"+i+"-01";
		
		String date2=year1+"-"+(i+1)+"-01";
		List<dealEntity>a = new ArrayList<dealEntity>();
		
			try {
				a=dealrp.findAllWithModifieddate( new SimpleDateFormat("yyyy-MM-dd").parse(date1),new SimpleDateFormat("yyyy-MM-dd").parse( date2));
			} catch (ParseException e) {
				
				e.printStackTrace();
			}
			for (dealEntity dealEntity : a) {
			
				tongtien=tongtien+tinhtienhd(dealEntity.getId());
				
				
			}
			//ngay+="01-"+((i<10)?"0":"")+i+"-"+year1+"\"";
			
			chart.add(tongtien+"");
		}
			return chart;
		
	}

	@Override
	@Transactional
	public float tinhtienhd(long id) {
		float tong=0;
		
	    for (showdealDTO sdeal : showdeal.findAllByDealId(id)) {
	    	tong+=sdeal.getNews().getGiacuoi();
			
		}
		return tong;
	}

	@Override
	@Transactional
	public float MonneywithYear(int year) {
		 float tongtien=0;
	     
			List<dealEntity>a = new ArrayList<dealEntity>();
			
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
			for (dealEntity dealEntity : a) {
				if(dealEntity.getstatus()==1){
				tongtien=tongtien+tinhtienhd(dealEntity.getId());
				}
				
			}	
			return tongtien;
	}

	@Override
	@Transactional
	public List<dealDTO> findAll() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	@Transactional
	public List<dealDTO> findAll(Pageable pageable, int status) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public Map<String, Float> Showchart(int year) {
		Map<String,Float> chart= new HashMap<String, Float>();
		for(int i=1;i<=12;i++) {
	    float tongtien=0;
	    
		String date1=year+"-"+i+"-01";
		
		String date2=year+"-"+(i+1)+"-01";
		List<dealEntity>a = new ArrayList<dealEntity>();
		
			try {
				
				a=dealrp.findAllWithModifieddate( new SimpleDateFormat("yyyy-MM-dd").parse(date1),new SimpleDateFormat("yyyy-MM-dd").parse(date2));
			} catch (ParseException e) {
				
				e.printStackTrace();
			}
			for (dealEntity dealEntity : a) {
				if(dealEntity.getstatus()==1){
				tongtien=tongtien+tinhtienhd(dealEntity.getId());
				}
				
			}
			//ngay+="01-"+((i<10)?"0":"")+i+"-"+year1+"\"";
			chart.put(date1, tongtien);
		}
			return chart;
	}

    
	
	
}
