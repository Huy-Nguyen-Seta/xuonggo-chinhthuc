package com.laptrinhjavaweb.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

@Entity
@Table(name = "new")
public class NewEntity extends BaseEntity {
	
	@Column(name = "slm")
	private long soluongmua;
	public long getSoluongmua() {
		return soluongmua;
	}
	@Column(name="popular",columnDefinition = "boolean default false")
	private boolean popular;

	public boolean getPopular() {
		return popular;
	}

	public void setPopular(boolean popular) {
		this.popular = popular;
	}

	public void setSoluongmua(long soluongmua) {
		this.soluongmua = soluongmua;
	}

	@Column(name = "title")
	private String title;
	
	@Column(name = "chatlieu")
	private String chatlieu;
	
	public String getChatlieu() {
		return chatlieu;
	}

	public void setChatlieu(String chatlieu) {
		this.chatlieu = chatlieu;
	}

	@Column(name = "thumbnail")
	private String thumbnail;
	
	@Column(name = "shortdescription", columnDefinition = "TEXT")
	private String shortDescription;
	
	@Column(name = "content", columnDefinition = "TEXT")
	private String content;
	
	@Column(name = "gia" )
	private int gia;
	
	@Column(name = "chieudai")
	private String chieudai;
	
	@Column(name = "chieurong")
	private String chieurong;
	
	
	@Column(name = "slt" )
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

	@ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "category_id")
    private CategoryEntity category;
	
	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getThumbnail() {
		return thumbnail;
	}

	public void setThumbnail(String thumbnail) {
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

	public CategoryEntity getCategory() {
		return category;
	}

	public void setCategory(CategoryEntity category) {
		this.category = category;
	}
	

}
