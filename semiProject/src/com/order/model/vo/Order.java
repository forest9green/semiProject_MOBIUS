package com.order.model.vo;

import java.util.Date;

public class Order {
	
	private String orderNo;
	private String userId;
	private int addrNo;
	private String orderMemo;
	private int oTotal;
	private int oDelivery;
	private int oDiscount;
	private int oPayment;
	private String oPaymethod;
	private Date orderDate;
	private String oPaystate;

	public Order() {}

	public Order(String orderNo, String userId, int addrNo, String orderMemo, int oTotal, int oDelivery,
			int oDiscount, int oPayment, String oPaymethod, Date orderDate, String oPaystate) {
		super();
		this.orderNo = orderNo;
		this.userId = userId;
		this.addrNo = addrNo;
		this.orderMemo = orderMemo;
		this.oTotal = oTotal;
		this.oDelivery = oDelivery;
		this.oDiscount = oDiscount;
		this.oPayment = oPayment;
		this.oPaymethod = oPaymethod;
		this.orderDate = orderDate;
		this.oPaystate = oPaystate;
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

	public int getAddrNo() {
		return addrNo;
	}

	public void setAddrNo(int addrNo) {
		this.addrNo = addrNo;
	}

	public String getOrderMemo() {
		return orderMemo;
	}

	public void setOrderMemo(String orderMemo) {
		this.orderMemo = orderMemo;
	}

	public int getoTotal() {
		return oTotal;
	}

	public void setoTotal(int oTotal) {
		this.oTotal = oTotal;
	}

	public int getoDelivery() {
		return oDelivery;
	}

	public void setoDelivery(int oDelivery) {
		this.oDelivery = oDelivery;
	}

	public int getoDiscount() {
		return oDiscount;
	}

	public void setoDiscount(int oDiscount) {
		this.oDiscount = oDiscount;
	}

	public int getoPayment() {
		return oPayment;
	}

	public void setoPayment(int oPayment) {
		this.oPayment = oPayment;
	}

	public String getoPaymethod() {
		return oPaymethod;
	}

	public void setoPaymethod(String oPaymethod) {
		this.oPaymethod = oPaymethod;
	}

	public Date getOrderDate() {
		return orderDate;
	}

	public void setOrderDate(Date orderDate) {
		this.orderDate = orderDate;
	}

	public String getoPaystate() {
		return oPaystate;
	}

	public void setoPaystate(String oPaystate) {
		this.oPaystate = oPaystate;
	}
	
	
}
