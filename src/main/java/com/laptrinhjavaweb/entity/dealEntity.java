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
@Table(name = "deal")
public class dealEntity extends BaseEntity {

	
	
	

	@Column(name = "trangthai")
	private long tt;



	public long getTt() {
		return tt;
	}

	public void setTt(long tt) {
		this.tt = tt;
	}

	@OneToMany(mappedBy = "deal",orphanRemoval = true)
	private List<showDealentity> showdeal = new ArrayList<>();

	@ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "userid")
    private UserEntity user;

	public UserEntity getUser() {
		return user;
	}

	public void setUser(UserEntity user) {
		this.user = user;
	}


	
	
	
}
