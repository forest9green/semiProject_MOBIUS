package com.mileage.model.vo;

public class Mileage {
	
	private String orderNo;
	private String userId;
	private String mContent;
	private int mPlus;
	private int mMinus;
	
	public Mileage() {
		// TODO Auto-generated constructor stub
	}

	public Mileage(String orderNo, String userId, String mContent, int mPlus, int mMinus) {
		super();
		this.orderNo = orderNo;
		this.userId = userId;
		this.mContent = mContent;
		this.mPlus = mPlus;
		this.mMinus = mMinus;
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

	public String getmContent() {
		return mContent;
	}

	public void setmContent(String mContent) {
		this.mContent = mContent;
	}

	public int getmPlus() {
		return mPlus;
	}

	public void setmPlus(int mPlus) {
		this.mPlus = mPlus;
	}

	public int getmMinus() {
		return mMinus;
	}

	public void setmMinus(int mMinus) {
		this.mMinus = mMinus;
	}

	@Override
	public String toString() {
		return "Mileage [orderNo=" + orderNo + ", userId=" + userId + ", mContent=" + mContent + ", mPlus=" + mPlus
				+ ", mMinus=" + mMinus + "]";
	}

	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + ((mContent == null) ? 0 : mContent.hashCode());
		result = prime * result + mMinus;
		result = prime * result + mPlus;
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
		Mileage other = (Mileage) obj;
		if (mContent == null) {
			if (other.mContent != null)
				return false;
		} else if (!mContent.equals(other.mContent))
			return false;
		if (mMinus != other.mMinus)
			return false;
		if (mPlus != other.mPlus)
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
