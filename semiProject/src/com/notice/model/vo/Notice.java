package com.notice.model.vo;

import java.util.Date;

public class Notice {

	private int notice_No;
	private String n_Title;
	private String n_Content;
	private String n_ImgPath;
	private Date n_Date;

	public Notice() {
		// TODO Auto-generated constructor stub
	}

	public Notice(int notice_No, String n_Title, String n_Content, String n_ImgPath, Date n_Date) {
		super();
		this.notice_No = notice_No;
		this.n_Title = n_Title;
		this.n_Content = n_Content;
		this.n_ImgPath = n_ImgPath;
		this.n_Date = n_Date;
	}

	public int getNotice_No() {
		return notice_No;
	}

	public void setNotice_No(int notice_No) {
		this.notice_No = notice_No;
	}

	public String getN_Title() {
		return n_Title;
	}

	public void setN_Title(String n_Title) {
		this.n_Title = n_Title;
	}

	public String getN_Content() {
		return n_Content;
	}

	public void setN_Content(String n_Content) {
		this.n_Content = n_Content;
	}

	public String getN_ImgPath() {
		return n_ImgPath;
	}

	public void setN_ImgPath(String n_ImgPath) {
		this.n_ImgPath = n_ImgPath;
	}

	public Date getN_Date() {
		return n_Date;
	}

	public void setN_Date(Date n_Date) {
		this.n_Date = n_Date;
	}
	
	

}
