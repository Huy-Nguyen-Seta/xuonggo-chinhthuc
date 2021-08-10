package com.laptrinhjavaweb.dto;

import java.util.ArrayList;
import java.util.List;

import com.laptrinhjavaweb.entity.dealnhapEntity;

public class ManufactureDTO extends AbstractDTO<ManufactureDTO>  {
	
	
	private String fullName;
	
	private String diachi;
	
	public String getDiachi() {
		return diachi;
	}

	public void setDiachi(String diachi) {
		this.diachi = diachi;
	}

	public String getSdt() {
		return sdt;
	}

	public void setSdt(String sdt) {
		this.sdt = sdt;
	}

	public String getGmail() {
		return gmail;
	}

	public void setGmail(String gmail) {
		this.gmail = gmail;
	}

	
	private String sdt;
	
	
	private String gmail;

	
	private String donvi;

	

	public void setFullName(String fullName) {
		this.fullName = fullName;
	}

	public String getDonvi() {
		return donvi;
	}

	public void setDonvi(String donvi) {
		this.donvi = donvi;
	}

	public String getFullName() {
		return fullName;
	}

	
	
	List<dealnhapEntity> dealn =new ArrayList<>();

	public List<dealnhapEntity> getDealn() {
		return dealn;
	}

	public void setDealn(List<dealnhapEntity> dealn) {
		this.dealn = dealn;
	}

	
	
}
