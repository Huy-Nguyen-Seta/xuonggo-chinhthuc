package com.laptrinhjavaweb.dto;

public class showdealnhapDTO extends AbstractDTO<showdealnhapDTO>{

	
	
	private long mavt;
	private long mancc;
	public long getMancc() {
		return mancc;
	}
    public vtDto vatlieu;
  

	public vtDto getVatlieu() {
		return vatlieu;
	}


	public void setVatlieu(vtDto vatlieu) {
		this.vatlieu = vatlieu;
	}


	public void setMancc(long mancc) {
		this.mancc = mancc;
	}


	public long getMavt() {
		return mavt;
	}


	public void setMavt(long mavt) {
		this.mavt = mavt;
	}


	public long getSoluong() {
		return soluong;
	}


	public void setSoluong(long soluong) {
		this.soluong = soluong;
	}


	private long soluong;
}
