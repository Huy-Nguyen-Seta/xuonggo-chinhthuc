package com.laptrinhjavaweb.dto;

import java.util.List;

public class DealOutDTO extends AbstractDTO<DealOutDTO> {
	
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
	List<ShowDealOutDTO> showdeal;

	public List<ShowDealOutDTO> getShowdeal() {
		return showdeal;
	}

	public void setShowdeal(List<ShowDealOutDTO> showdeal) {
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
