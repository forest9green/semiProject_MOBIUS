package com.order.model.vo;

import java.util.Date;

public class NoBookPay {
	
	private String orderNo;
	private String nbpName;
	private Date nbpPayDate;
	private int nbpPay;
	
	public NoBookPay() {
		// TODO Auto-generated constructor stub
	}

	public NoBookPay(String orderNo, String nbpName, Date nbpPayDate, int nbpPay) {
		super();
		this.orderNo = orderNo;
		this.nbpName = nbpName;
		this.nbpPayDate = nbpPayDate;
		this.nbpPay = nbpPay;
	}

	public String getOrderNo() {
		return orderNo;
	}

	public void setOrderNo(String orderNo) {
		this.orderNo = orderNo;
	}

	public String getNbpName() {
		return nbpName;
	}

	public void setNbpName(String nbpName) {
		this.nbpName = nbpName;
	}

	public Date getNbpPayDate() {
		return nbpPayDate;
	}

	public void setNbpPayDate(Date nbpPayDate) {
		this.nbpPayDate = nbpPayDate;
	}

	public int getNbpPay() {
		return nbpPay;
	}

	public void setNbpPay(int nbpPay) {
		this.nbpPay = nbpPay;
	}

	@Override
	public String toString() {
		return "NoBookPay [orderNo=" + orderNo + ", nbpName=" + nbpName + ", nbpPayDate=" + nbpPayDate + ", nbpPay="
				+ nbpPay + "]";
	}

	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + ((nbpName == null) ? 0 : nbpName.hashCode());
		result = prime * result + nbpPay;
		result = prime * result + ((nbpPayDate == null) ? 0 : nbpPayDate.hashCode());
		result = prime * result + ((orderNo == null) ? 0 : orderNo.hashCode());
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
		NoBookPay other = (NoBookPay) obj;
		if (nbpName == null) {
			if (other.nbpName != null)
				return false;
		} else if (!nbpName.equals(other.nbpName))
			return false;
		if (nbpPay != other.nbpPay)
			return false;
		if (nbpPayDate == null) {
			if (other.nbpPayDate != null)
				return false;
		} else if (!nbpPayDate.equals(other.nbpPayDate))
			return false;
		if (orderNo == null) {
			if (other.orderNo != null)
				return false;
		} else if (!orderNo.equals(other.orderNo))
			return false;
		return true;
	}

}
