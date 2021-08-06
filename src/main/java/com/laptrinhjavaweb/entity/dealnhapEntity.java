package com.laptrinhjavaweb.entity;


import java.util.ArrayList;
import java.util.List;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.Table;

@Entity
@Table(name = "dealnhap")
public class dealnhapEntity extends BaseEntity {

	
	
	


	

   @Column(name = "tongtien")
   private int tongtien;

public int getTongtien() {
	return tongtien;
}

public void setTongtien(int tongtien) {
	this.tongtien = tongtien;
}
   
	

@OneToMany(mappedBy = "dealnhap",orphanRemoval = true)
	private List<showDealnhapEntity> showdealn = new ArrayList<>();

	

public List<showDealnhapEntity> getShowdealn() {
	return showdealn;
}

public NccEntity getNhacc() {
	return nhacc;
}

public void setNhacc(NccEntity nhacc) {
	this.nhacc = nhacc;
}

public void setShowdealn(List<showDealnhapEntity> showdealn) {
	this.showdealn = showdealn;
}




	@ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "nhacc")
   private NccEntity nhacc;

	
	
	
	
}
