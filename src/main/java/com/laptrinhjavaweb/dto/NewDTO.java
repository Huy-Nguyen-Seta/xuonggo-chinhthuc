package com.laptrinhjavaweb.dto;

import org.springframework.web.multipart.MultipartFile;

public class NewDTO extends AbstractDTO<NewDTO> {
	
	private String title;
	private MultipartFile thumbnail;
	private String shortDescription;
	private String content;
	private Long categoryId;
	private String categoryCode;
	private int kiemtra;
	private int loai;
	private String afterimage;
	private boolean popular;
 
	
	public boolean getPopular() {
		return popular;
	}
	public void setPopular(boolean popular) {
		this.popular = popular;
	}
	public String getAfterimage() {
		return afterimage;
	}
	public void setAfterimage(String afterimage) {
		this.afterimage = afterimage;
	}
	public int getLoai() {
		return loai;
	}
	public void setLoai(int loai) {
		this.loai = loai;
	}
	public int getKiemtra() {
		return kiemtra;
	}
	public void setKiemtra(int kiemtra) {
		this.kiemtra = kiemtra;
	}
	private long giacuoi;
	
	public long getGiacuoi() {
		return giacuoi;
	}
	public void setGiacuoi(long l) {
		this.giacuoi = l;
	}
	private int gia;
	private long soluongmua;
	
	public long getSoluongmua() {
		return soluongmua;
	}
	public void setSoluongmua(long soluongmua) {
		this.soluongmua = soluongmua;
	}
	private String chieudai;
	
	
	private String chieurong;
	
	private String chatlieu;

	public String getChatlieu() {
		return chatlieu;
	}
	public void setChatlieu(String chatlieu) {
		this.chatlieu = chatlieu;
	}
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
	public void setSoluongton(long l) {
		this.soluongton = l;
	}
	private long soluongton;
	
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public MultipartFile getThumbnail() {
		return thumbnail;
	}
	public void setThumbnail(MultipartFile thumbnail) {
		this.thumbnail = thumbnail;
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
	public Long getCategoryId() {
		return categoryId;
	}
	public void setCategoryId(Long categoryId) {
		this.categoryId = categoryId;
	}
	public String getCategoryCode() {
		return categoryCode;
	}
	public void setCategoryCode(String categoryCode) {
		this.categoryCode = categoryCode;
	}
}
