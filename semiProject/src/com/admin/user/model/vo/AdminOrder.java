package com.admin.user.model.vo;

import java.util.Date;

public class AdminOrder {
	private String orderNo;
	private String userId;
	private Date orderDate;
	private int price;
	private String oState;
	
	public AdminOrder() {
		// TODO Auto-generated constructor stub
	}

	public AdminOrder(String orderNo, String userId, Date orderDate, int price, String oState) {
		super();
		this.orderNo = orderNo;
		this.userId = userId;
		this.orderDate = orderDate;
		this.price = price;
		this.oState = oState;
	}

	public String getOrderNo() {
		return orderNo;
	}

	public void setOrderNo(String orderNo) {
		this.orderNo = orderNo;
	}

	public String getUserId() {
		return userId;
	}

	public void setUserId(String userId) {
		this.userId = userId;
	}

	public Date getOrderDate() {
		return orderDate;
	}

	public void setOrderDate(Date orderDate) {
		this.orderDate = orderDate;
	}

	public int getPrice() {
		return price;
	}

	public void setPrice(int price) {
		this.price = price;
	}

	public String getoState() {
		return oState;
	}

	public void setoState(String oState) {
		this.oState = oState;
	}

	@Override
	public String toString() {
		return "AdminOrder [orderNo=" + orderNo + ", userId=" + userId + ", orderDate=" + orderDate + ", price=" + price
				+ ", oState=" + oState + "]";
	}

	
	
}
