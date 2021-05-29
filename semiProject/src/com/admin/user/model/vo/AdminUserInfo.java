package com.admin.user.model.vo;

import java.util.Date;

public class AdminUserInfo {

	private String userId;
	private String userName;
	private String email;
	private String cellPhone;
	private String phone;
	private Date enrollDate;
	private String addr;	
	public AdminUserInfo() {
		// TODO Auto-generated constructor stub
	}

	public AdminUserInfo(String userId, String userName, String email, String cellPhone, String phone, Date enrollDate,
			String addr, String recentAddr) {
		super();
		this.userId = userId;
		this.userName = userName;
		this.email = email;
		this.cellPhone = cellPhone;
		this.phone = phone;
		this.enrollDate = enrollDate;
		this.addr = addr;
	}

	public String getUserId() {
		return userId;
	}

	public void setUserId(String userId) {
		this.userId = userId;
	}

	public String getUserName() {
		return userName;
	}

	public void setUserName(String userName) {
		this.userName = userName;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getCellPhone() {
		return cellPhone;
	}

	public void setCellPhone(String cellPhone) {
		this.cellPhone = cellPhone;
	}

	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

	public Date getEnrollDate() {
		return enrollDate;
	}

	public void setEnrollDate(Date enrollDate) {
		this.enrollDate = enrollDate;
	}

	public String getAddr() {
		return addr;
	}

	public void setAddr(String addr) {
		this.addr = addr;
	}

	@Override
	public String toString() {
		return "AdminUserInfo [userId=" + userId + ", userName=" + userName + ", email=" + email + ", cellPhone="
				+ cellPhone + ", phone=" + phone + ", enrollDate=" + enrollDate + ", addr=" + addr + "]";
	}


	

	
	
	
	
	
}
