package com.notice.model.vo;

import java.util.Date;

public class Notice {

	private String noticeNo;
	private String nTitle;
	private String nContent;
	private String nImgPath;
	private Date nDate;

	public Notice() {
		// TODO Auto-generated constructor stub
	}

	public Notice(String noticeNo, String nTitle, String nContent, String nImgPath, Date nDate) {
		super();
		this.noticeNo = noticeNo;
		this.nTitle = nTitle;
		this.nContent = nContent;
		this.nImgPath = nImgPath;
		this.nDate = nDate;
	}

	public String getnoticeNo() {
		return noticeNo;
	}

	public void setnoticeNo(String noticeNo) {
		this.noticeNo = noticeNo;
	}

	public String getnTitle() {
		return nTitle;
	}

	public void setnTitle(String nTitle) {
		this.nTitle = nTitle;
	}

	public String getnContent() {
		return nContent;
	}

	public void setnContent(String nContent) {
		this.nContent = nContent;
	}

	public String getnImgPath() {
		return nImgPath;
	}

	public void setnImgPath(String nImgPath) {
		this.nImgPath = nImgPath;
	}

	public Date getnDate() {
		return nDate;
	}
	public void setnDate(Date nDate) {
		this.nDate = nDate;
	}


	
	
	

}
