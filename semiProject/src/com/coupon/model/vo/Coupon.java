package com.coupon.model.vo;

import java.util.Date;

public class Coupon {
	
	private String cNo;
	private String userId;
	private String cName;
	private double cDiscount;
	private Date cIssueDate;
	private Date cFinishDate;
	private int cLimit;
	private int cUse;
	
	public Coupon() {
		// TODO Auto-generated constructor stub
	}

	public Coupon(String cNo, String userId, String cName, double cDiscount, Date cIssueDate, Date cFinishDate,
			int cLimit, int cUse) {
		super();
		this.cNo = cNo;
		this.userId = userId;
		this.cName = cName;
		this.cDiscount = cDiscount;
		this.cIssueDate = cIssueDate;
		this.cFinishDate = cFinishDate;
		this.cLimit = cLimit;
		this.cUse = cUse;
	}

	public String getcNo() {
		return cNo;
	}

	public void setcNo(String cNo) {
		this.cNo = cNo;
	}

	public String getUserId() {
		return userId;
	}

	public void setUserId(String userId) {
		this.userId = userId;
	}

	public String getcName() {
		return cName;
	}

	public void setcName(String cName) {
		this.cName = cName;
	}

	public double getcDiscount() {
		return cDiscount;
	}

	public void setcDiscount(double cDiscount) {
		this.cDiscount = cDiscount;
	}

	public Date getcIssueDate() {
		return cIssueDate;
	}

	public void setcIssueDate(Date cIssueDate) {
		this.cIssueDate = cIssueDate;
	}

	public Date getcFinishDate() {
		return cFinishDate;
	}

	public void setcFinishDate(Date cFinishDate) {
		this.cFinishDate = cFinishDate;
	}

	public int getcLimit() {
		return cLimit;
	}

	public void setcLimit(int cLimit) {
		this.cLimit = cLimit;
	}

	public int getcUse() {
		return cUse;
	}

	public void setcUse(int cUse) {
		this.cUse = cUse;
	}

	@Override
	public String toString() {
		return "Coupon [cNo=" + cNo + ", userId=" + userId + ", cName=" + cName + ", cDiscount=" + cDiscount
				+ ", cIssueDate=" + cIssueDate + ", cFinishDate=" + cFinishDate + ", cLimit=" + cLimit + ", cUse="
				+ cUse + "]";
	}

	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		long temp;
		temp = Double.doubleToLongBits(cDiscount);
		result = prime * result + (int) (temp ^ (temp >>> 32));
		result = prime * result + ((cFinishDate == null) ? 0 : cFinishDate.hashCode());
		result = prime * result + ((cIssueDate == null) ? 0 : cIssueDate.hashCode());
		result = prime * result + cLimit;
		result = prime * result + ((cName == null) ? 0 : cName.hashCode());
		result = prime * result + ((cNo == null) ? 0 : cNo.hashCode());
		result = prime * result + cUse;
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
		Coupon other = (Coupon) obj;
		if (Double.doubleToLongBits(cDiscount) != Double.doubleToLongBits(other.cDiscount))
			return false;
		if (cFinishDate == null) {
			if (other.cFinishDate != null)
				return false;
		} else if (!cFinishDate.equals(other.cFinishDate))
			return false;
		if (cIssueDate == null) {
			if (other.cIssueDate != null)
				return false;
		} else if (!cIssueDate.equals(other.cIssueDate))
			return false;
		if (cLimit != other.cLimit)
			return false;
		if (cName == null) {
			if (other.cName != null)
				return false;
		} else if (!cName.equals(other.cName))
			return false;
		if (cNo == null) {
			if (other.cNo != null)
				return false;
		} else if (!cNo.equals(other.cNo))
			return false;
		if (cUse != other.cUse)
			return false;
		if (userId == null) {
			if (other.userId != null)
				return false;
		} else if (!userId.equals(other.userId))
			return false;
		return true;
	}

}
