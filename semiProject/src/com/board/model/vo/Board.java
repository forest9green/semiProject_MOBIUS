package com.board.model.vo;

import java.util.Date;

public class Board {
	private int bNo;
	private String userId;
	private String pCode;
	private String bCategory;
	private String bTitle;
	private String bContent;
	private Date bWriteDate;
	private String bAnswer;
	private Date bAndate;

	public Board() {}

	public Board(int bNo, String userId, String pCode, String bCategory, String bTitle, String bContent,
			Date bWriteDate, String bAnswer, Date bAndate) {
		super();
		this.bNo = bNo;
		this.userId = userId;
		this.pCode = pCode;
		this.bCategory = bCategory;
		this.bTitle = bTitle;
		this.bContent = bContent;
		this.bWriteDate = bWriteDate;
		this.bAnswer = bAnswer;
		this.bAndate = bAndate;
	}

	public int getbNo() {
		return bNo;
	}

	public void setbNo(int bNo) {
		this.bNo = bNo;
	}

	public String getUserId() {
		return userId;
	}

	public void setUserId(String userId) {
		this.userId = userId;
	}

	public String getpCode() {
		return pCode;
	}

	public void setpCode(String pCode) {
		this.pCode = pCode;
	}

	public String getbCategory() {
		return bCategory;
	}

	public void setbCategory(String bCategory) {
		this.bCategory = bCategory;
	}

	public String getbTitle() {
		return bTitle;
	}

	public void setbTitle(String bTitle) {
		this.bTitle = bTitle;
	}

	public String getbContent() {
		return bContent;
	}

	public void setbContent(String bContent) {
		this.bContent = bContent;
	}

	public Date getbWriteDate() {
		return bWriteDate;
	}

	public void setbWriteDate(Date bWriteDate) {
		this.bWriteDate = bWriteDate;
	}

	public String getbAnswer() {
		return bAnswer;
	}

	public void setbAnswer(String bAnswer) {
		this.bAnswer = bAnswer;
	}

	public Date getbAndate() {
		return bAndate;
	}

	public void setbAndate(Date bAndate) {
		this.bAndate = bAndate;
	}
	
	
}

