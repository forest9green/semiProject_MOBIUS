package com.newAddress.model.vo;

public class NewAddress {
	
	private String orderNo;
	private String oName;
	private String oPostCode;
	private String oAddress;
	private String oCellPhone;
	private String oPhone;
	
	public NewAddress() {
		// TODO Auto-generated constructor stub
	}

	public NewAddress(String orderNo, String oName, String oPostCode, String oAddress, String oCellPhone,
			String oPhone) {
		super();
		this.orderNo = orderNo;
		this.oName = oName;
		this.oPostCode = oPostCode;
		this.oAddress = oAddress;
		this.oCellPhone = oCellPhone;
		this.oPhone = oPhone;
	}

	public String getOrderNo() {
		return orderNo;
	}

	public void setOrderNo(String orderNo) {
		this.orderNo = orderNo;
	}

	public String getoName() {
		return oName;
	}

	public void setoName(String oName) {
		this.oName = oName;
	}

	public String getoPostCode() {
		return oPostCode;
	}

	public void setoPostCode(String oPostCode) {
		this.oPostCode = oPostCode;
	}

	public String getoAddress() {
		return oAddress;
	}

	public void setoAddress(String oAddress) {
		this.oAddress = oAddress;
	}

	public String getoCellPhone() {
		return oCellPhone;
	}

	public void setoCellPhone(String oCellPhone) {
		this.oCellPhone = oCellPhone;
	}

	public String getoPhone() {
		return oPhone;
	}

	public void setoPhone(String oPhone) {
		this.oPhone = oPhone;
	}

	@Override
	public String toString() {
		return "NewAddress [orderNo=" + orderNo + ", oName=" + oName + ", oPostCode=" + oPostCode + ", oAddress="
				+ oAddress + ", oCellPhone=" + oCellPhone + ", oPhone=" + oPhone + "]";
	}

	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + ((oAddress == null) ? 0 : oAddress.hashCode());
		result = prime * result + ((oCellPhone == null) ? 0 : oCellPhone.hashCode());
		result = prime * result + ((oName == null) ? 0 : oName.hashCode());
		result = prime * result + ((oPhone == null) ? 0 : oPhone.hashCode());
		result = prime * result + ((oPostCode == null) ? 0 : oPostCode.hashCode());
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
		NewAddress other = (NewAddress) obj;
		if (oAddress == null) {
			if (other.oAddress != null)
				return false;
		} else if (!oAddress.equals(other.oAddress))
			return false;
		if (oCellPhone == null) {
			if (other.oCellPhone != null)
				return false;
		} else if (!oCellPhone.equals(other.oCellPhone))
			return false;
		if (oName == null) {
			if (other.oName != null)
				return false;
		} else if (!oName.equals(other.oName))
			return false;
		if (oPhone == null) {
			if (other.oPhone != null)
				return false;
		} else if (!oPhone.equals(other.oPhone))
			return false;
		if (oPostCode == null) {
			if (other.oPostCode != null)
				return false;
		} else if (!oPostCode.equals(other.oPostCode))
			return false;
		if (orderNo == null) {
			if (other.orderNo != null)
				return false;
		} else if (!orderNo.equals(other.orderNo))
			return false;
		return true;
	}

}
