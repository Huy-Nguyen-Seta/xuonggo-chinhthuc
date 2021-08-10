package com.laptrinhjavaweb.dto;

import org.springframework.web.multipart.MultipartFile;

public class MaterialDTO extends AbstractDTO<MaterialDTO>  {
	
	

	

	private long giacuoi;
	public long getGiacuoi() {
		return giacuoi;
	}

	public void setGiacuoi(long giacuoi) {
		this.giacuoi = giacuoi;
	}


	private String title;
	

	private String chatlieu;
	
	public String getChatlieu() {
		return chatlieu;
	}

	public void setChatlieu(String chatlieu) {
		this.chatlieu = chatlieu;
	}

	
	
	
	
	private String shortDescription;
	
	
	private String content;
	
	
	private int gia;
	
	
	private String chieudai;
	
	
	private String chieurong;
	
	
	
	private long soluongton;
	
	public int getGia() {
		return gia;
	}

	public void setGia(int gia) {
		this.gia = gia;
	}

	public String getChieudai() {
		return chieudai;
	}

	public void setChieudai(String chieudai) {
		this.chieudai = chieudai;
	}

	public String getChieurong() {
		return chieurong;
	}

	public void setChieurong(String chieurong) {
		this.chieurong = chieurong;
	}

	public long getSoluongton() {
		return soluongton;
	}

	public void setSoluongton(long soluongton) {
		this.soluongton = soluongton;
	}


	
	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	

	public String getShortDescription() {
		return shortDescription;
	}

	public void setShortDescription(String shortDescription) {
		this.shortDescription = shortDescription;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}


	
}
