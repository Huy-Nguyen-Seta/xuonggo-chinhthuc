package com.laptrinhjavaweb.dto;

import org.springframework.web.multipart.MultipartFile;

public class CategoryDTO extends AbstractDTO<CategoryDTO> {
	
	private String name;
	private String code;
	private MultipartFile thumbnail;
	private int soluongsp;
	private String Afterimage;
	
	
	public String getAfterimage() {
		return Afterimage;
	}
	public void setAfterimage(String afterimage) {
		Afterimage = afterimage;
	}
	public String getShortDescription() {
		return shortDescription;
	}
	public void setShortDescription(String shortDescription) {
		this.shortDescription = shortDescription;
	}
	private String shortDescription;
	
	
	public int getSoluongsp() {
		return soluongsp;
	}
	public void setSoluongsp(int soluongsp) {
		this.soluongsp = soluongsp;
	}
	public MultipartFile getThumbnail() {
		return thumbnail;
	}
	public void setThumbnail(MultipartFile thumbnail) {
		this.thumbnail = thumbnail;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getCode() {
		return code;
	}
	public void setCode(String code) {
		this.code = code;
	}
	
}
