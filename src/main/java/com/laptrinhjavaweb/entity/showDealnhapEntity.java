package com.laptrinhjavaweb.entity;



import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToOne;
import javax.persistence.Table;

@Entity
@Table(name = "showdealnhap")
public class showDealnhapEntity extends BaseEntity {

	
	
	@Column(name = "soluong")
	private long soluong;

	
	public long getSoluong() {
		return soluong;
	}

	public void setSoluong(long soluong) {
		this.soluong = soluong;
	}
	
	
@ManyToOne(fetch = FetchType.LAZY)
  @JoinColumn(name = "dealnhap")
 private dealnhapEntity dealnhap;
	
	


	

public dealnhapEntity getDealnhap() {
	return dealnhap;
}

public void setDealnhap(dealnhapEntity dealnhap) {
	this.dealnhap = dealnhap;
}

public VatLieuEntity getVatlieu() {
	return vatlieu;
}

public void setVatlieu(VatLieuEntity vatlieu) {
	this.vatlieu = vatlieu;
}


	@OneToOne(cascade = CascadeType.REMOVE, orphanRemoval = true)
	 @JoinColumn(name = "vt_id")
	 private VatLieuEntity vatlieu;



	
}
