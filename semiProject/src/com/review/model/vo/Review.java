package com.review.model.vo;

import java.util.Date;

public class Review {
	private String orderNo;
	private String pCode;
	private String rTitle;
	private String rContent;
	private Date rDate;
	private int rStar;
	
	public Review() {
	}

	public Review(String orderNo, String pCode, String rTitle, String rContent, Date rDate, int rStar) {
		super();
		this.orderNo = orderNo;
		this.pCode = pCode;
		this.rTitle = rTitle;
		this.rContent = rContent;
		this.rDate = rDate;
		this.rStar = rStar;
	}

	public String getOrderNo() {
		return orderNo;
	}

	public void setOrderNo(String orderNo) {
		this.orderNo = orderNo;
	}

	public String getpCode() {
		return pCode;
	}

	public void setpCode(String pCode) {
		this.pCode = pCode;
	}

	public String getrTitle() {
		return rTitle;
	}

	public void setrTitle(String rTitle) {
		this.rTitle = rTitle;
	}

	public String getrContent() {
		return rContent;
	}

	public void setrContent(String rContent) {
		this.rContent = rContent;
	}

	public Date getrDate() {
		return rDate;
	}

	public void setrDate(Date rDate) {
		this.rDate = rDate;
	}

	public int getrStar() {
		return rStar;
	}

	public void setrStar(int rStar) {
		this.rStar = rStar;
	}
	
}
