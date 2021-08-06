package com.laptrinhjavaweb.dto;

import java.util.List;

public class DealNhapDto extends AbstractDTO<DealNhapDto> {
	private long mancc;
	private long tt;
	private float giahoadon;	
	private List<showdealnhapDTO> showdealnhap;
	private NccDTO nhacc;

	public NccDTO getNhacc() {
		return nhacc;
	}
	public void setNhacc(NccDTO nhacc) {
		this.nhacc = nhacc;
	}
	public long getMancc() {
		return mancc;
	}
	public void setMancc(long mancc) {
		this.mancc = mancc;
	}
	public long getTt() {
		return tt;
	}
	public void setTt(long tt) {
		this.tt = tt;
	}
	public float getGiahoadon() {
		return giahoadon;
	}
	public void setGiahoadon(float f) {
		this.giahoadon = f;
	}
	public List<showdealnhapDTO> getShowdealnhap() {
		return showdealnhap;
	}
	public void setShowdealnhap(List<showdealnhapDTO> showdealnhap) {
		this.showdealnhap = showdealnhap;
	}

}
