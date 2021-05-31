package com.order.model.vo;

import java.util.Date;

public class Order {
	
	private String orderNo;
	private String userId;
	private String addrNo;
	private String orderMemo;
	private int oTotal;
	private int oDelivery;
	private int oDiscount;
	private int oPayment;
	private String oPaymethod;
	private Date orderDate;
	private String oPaystate;

	public Order() {
		// TODO Auto-generated constructor stub
	}

	public Order(String orderNo, String userId, String addrNo, String orderMemo, int oTotal, int oDelivery,
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

	public String getAddrNo() {
		return addrNo;
	}

	public void setAddrNo(String addrNo) {
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

	@Override
	public String toString() {
		return "Order [orderNo=" + orderNo + ", userId=" + userId + ", addrNo=" + addrNo + ", orderMemo=" + orderMemo
				+ ", oTotal=" + oTotal + ", oDelivery=" + oDelivery + ", oDiscount=" + oDiscount + ", oPayment="
				+ oPayment + ", oPaymethod=" + oPaymethod + ", orderDate=" + orderDate + ", oPaystate=" + oPaystate
				+ "]";
	}

	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + ((addrNo == null) ? 0 : addrNo.hashCode());
		result = prime * result + oDelivery;
		result = prime * result + oDiscount;
		result = prime * result + oPayment;
		result = prime * result + ((oPaymethod == null) ? 0 : oPaymethod.hashCode());
		result = prime * result + ((oPaystate == null) ? 0 : oPaystate.hashCode());
		result = prime * result + oTotal;
		result = prime * result + ((orderDate == null) ? 0 : orderDate.hashCode());
		result = prime * result + ((orderMemo == null) ? 0 : orderMemo.hashCode());
		result = prime * result + ((orderNo == null) ? 0 : orderNo.hashCode());
		result = prime * result + ((userId == null) ? 0 : userId.hashCode());
		return result;
	}

	@Override
	public boolean equals(Object obj) {
		if (this == obj)
			return true;
		if (obj == null)
			return false;
		if (getClass() != obj.getClass())
			return false;
		Order other = (Order) obj;
		if (addrNo == null) {
			if (other.addrNo != null)
				return false;
		} else if (!addrNo.equals(other.addrNo))
			return false;
		if (oDelivery != other.oDelivery)
			return false;
		if (oDiscount != other.oDiscount)
			return false;
		if (oPayment != other.oPayment)
			return false;
		if (oPaymethod == null) {
			if (other.oPaymethod != null)
				return false;
		} else if (!oPaymethod.equals(other.oPaymethod))
			return false;
		if (oPaystate == null) {
			if (other.oPaystate != null)
				return false;
		} else if (!oPaystate.equals(other.oPaystate))
			return false;
		if (oTotal != other.oTotal)
			return false;
		if (orderDate == null) {
			if (other.orderDate != null)
				return false;
		} else if (!orderDate.equals(other.orderDate))
			return false;
		if (orderMemo == null) {
			if (other.orderMemo != null)
				return false;
		} else if (!orderMemo.equals(other.orderMemo))
			return false;
		if (orderNo == null) {
			if (other.orderNo != null)
				return false;
		} else if (!orderNo.equals(other.orderNo))
			return false;
		if (userId == null) {
			if (other.userId != null)
				return false;
		} else if (!userId.equals(other.userId))
			return false;
		return true;
	}
	
}
