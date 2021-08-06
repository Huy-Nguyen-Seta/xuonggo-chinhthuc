package com.laptrinhjavaweb.entity;

import java.util.ArrayList;
import java.util.List;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.OneToMany;
import javax.persistence.Table;

@Entity
@Table(name = "nhacc")
public class NccEntity extends BaseEntity {

	
    @Column(name="thumbnail")
    private String thumbnail;
	public String getThumbnail() {
		return thumbnail;
	}

	public void setThumbnail(String thumbnail) {
		this.thumbnail = thumbnail;
	}

	@Column(name = "fullname")
	private String fullName;
	
	@Column(name = "diachi",columnDefinition = "TEXT")
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

	@Column(name = "sdt")
	private String sdt;
	
	@Column(name = "gmail")
	private String gmail;

	@Column(name="donvi")
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

	
	@OneToMany(mappedBy = "nhacc")
	List<dealnhapEntity> dealn =new ArrayList<>();

	public List<dealnhapEntity> getDealn() {
		return dealn;
	}

	public void setDealn(List<dealnhapEntity> dealn) {
		this.dealn = dealn;
	}

	
}
