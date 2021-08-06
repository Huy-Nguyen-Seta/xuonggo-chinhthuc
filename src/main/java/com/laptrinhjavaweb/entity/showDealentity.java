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
@Table(name = "showdeal")
public class showDealentity extends BaseEntity {

	
	
	@Column(name = "soluong")
	private long soluong;

	
	public long getSoluong() {
		return soluong;
	}

	public void setSoluong(long soluong) {
		this.soluong = soluong;
	}
	
	
	@ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "deal_id")
    private dealEntity deal;
	
	 public dealEntity getDeal() {
		return deal;
	}

	public void setDeal(dealEntity deal) {
		this.deal = deal;
	}



	  @OneToOne(cascade = CascadeType.REMOVE, orphanRemoval = true)
	  @JoinColumn(name = "new_id")
	  private NewEntity news;


	public NewEntity getNews() {
		return news;
	}

	public void setNews(NewEntity news) {
		this.news = news;
	}

	
	
}
