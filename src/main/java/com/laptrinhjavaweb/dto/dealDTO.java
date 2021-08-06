package com.laptrinhjavaweb.dto;

import java.util.List;

public class dealDTO extends AbstractDTO<dealDTO> {
	
	private long makh;
	private long tt;
	private long giahoadon;
	private int kiemtra;
	
	public int getKiemtra() {
		return kiemtra;
	}

	public void setKiemtra(int kiemtra) {
		this.kiemtra = kiemtra;
	}

	public long getTt() {
		return tt;
	}

	public void setTt(long tt) {
		this.tt = tt;
	}

	public long getGiahoadon() {
		return giahoadon;
	}

	public void setGiahoadon(long l) {
		this.giahoadon = l;
	}

	public long getMakh() {
		return makh;
	}

	public void setMakh(long makh) {
		this.makh = makh;
	}
	List<showdealDTO> showdeal;

	public List<showdealDTO> getShowdeal() {
		return showdeal;
	}

	public void setShowdeal(List<showdealDTO> showdeal) {
		this.showdeal = showdeal;
	}
	public UserDTO user;

	public UserDTO getUser() {
		return user;
	}

	public void setUser(UserDTO user) {
		this.user = user;
	}
	
}
