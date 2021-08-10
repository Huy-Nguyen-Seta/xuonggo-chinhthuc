package com.laptrinhjavaweb.dto;

public class CategoryDTO extends AbstractDTO<CategoryDTO> {
	
	private String name;
	private String code;

	private int soluongsp;
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
