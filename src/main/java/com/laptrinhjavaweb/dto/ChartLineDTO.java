package com.laptrinhjavaweb.dto;

public class ChartLineDTO {
	public ChartLineDTO(String date,float tong) {
		this.date1=date;
		this.Tong=tong;
	}
  private String date1;
  public String getDate1() {
	return date1;
}
public void setDate1(String date1) {
	this.date1 = date1;
}
public float getTong() {
	return Tong;
}
public void setTong(float tong) {
	Tong = tong;
}
private float Tong;

}
