package com.review.model.vo;

public class ReviewImg {
	private String rImgpath;
	private String orderNo;
	private String pCode;

	public ReviewImg() {
		
	}

	public ReviewImg(String rImgpath, String orderNo, String pCode) {
		super();
		this.rImgpath = rImgpath;
		this.orderNo = orderNo;
		this.pCode = pCode;
	}

	public String getrImgpath() {
		return rImgpath;
	}

	public void setrImgpath(String rImgpath) {
		this.rImgpath = rImgpath;
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
	
}
