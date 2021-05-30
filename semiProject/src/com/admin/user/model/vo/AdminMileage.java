package com.admin.user.model.vo;

import java.util.Date;

public class AdminMileage {
	private Date OrderDate;
	private String userId;
	private String mContent;
	private int mPlus;
	private int mMinus;
	
	public AdminMileage() {
		// TODO Auto-generated constructor stub
	}

	public AdminMileage(Date orderDate, String userId, String mContent, int mPlus, int mMinus) {
		super();
		OrderDate = orderDate;
		this.userId = userId;
		this.mContent = mContent;
		this.mPlus = mPlus;
		this.mMinus = mMinus;
	}

	public Date getOrderDate() {
		return OrderDate;
	}

	public void setOrderDate(Date orderDate) {
		OrderDate = orderDate;
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
		return "AdminMileage [OrderDate=" + OrderDate + ", userId=" + userId + ", mContent=" + mContent + ", mPlus="
				+ mPlus + ", mMinus=" + mMinus + "]";
	}

	
	
	
}
