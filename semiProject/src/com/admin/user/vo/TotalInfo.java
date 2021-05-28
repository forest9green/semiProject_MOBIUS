package com.admin.user.vo;

import java.util.Date;

public class TotalInfo {
	
	private String userId;
	private String userPwd;
	private String userName;
	private String email;
	private int emailSmsCk;
	private String cellPhone;
	private int phoneSmsCk;
	private String phone;
	private Date joinDate;
	private Date recentDate;
	private int mileage;
	private int sum;
	
	public TotalInfo() {
		// TODO Auto-generated constructor stub
	}

	public TotalInfo(String userId, String userPwd, String userName, String email, int emailSmsCk, String cellPhone,
			int phoneSmsCk, String phone, Date joinDate, Date recentDate, int mileage, int sum) {
		super();
		this.userId = userId;
		this.userPwd = userPwd;
		this.userName = userName;
		this.email = email;
		this.emailSmsCk = emailSmsCk;
		this.cellPhone = cellPhone;
		this.phoneSmsCk = phoneSmsCk;
		this.phone = phone;
		this.joinDate = joinDate;
		this.recentDate = recentDate;
		this.mileage = mileage;
		this.sum = sum;
	}

	public String getUserId() {
		return userId;
	}

	public void setUserId(String userId) {
		this.userId = userId;
	}

	public String getUserPwd() {
		return userPwd;
	}

	public void setUserPwd(String userPwd) {
		this.userPwd = userPwd;
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

	public int getEmailSmsCk() {
		return emailSmsCk;
	}

	public void setEmailSmsCk(int emailSmsCk) {
		this.emailSmsCk = emailSmsCk;
	}

	public String getCellPhone() {
		return cellPhone;
	}

	public void setCellPhone(String cellPhone) {
		this.cellPhone = cellPhone;
	}

	public int getPhoneSmsCk() {
		return phoneSmsCk;
	}

	public void setPhoneSmsCk(int phoneSmsCk) {
		this.phoneSmsCk = phoneSmsCk;
	}

	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

	public Date getJoinDate() {
		return joinDate;
	}

	public void setJoinDate(Date joinDate) {
		this.joinDate = joinDate;
	}

	public Date getRecentDate() {
		return recentDate;
	}

	public void setRecentDate(Date recentDate) {
		this.recentDate = recentDate;
	}

	public int getMileage() {
		return mileage;
	}

	public void setMileage(int mileage) {
		this.mileage = mileage;
	}

	public int getSum() {
		return sum;
	}

	public void setSum(int sum) {
		this.sum = sum;
	}

	@Override
	public String toString() {
		return "TotalInfo [userId=" + userId + ", userPwd=" + userPwd + ", userName=" + userName + ", email=" + email
				+ ", emailSmsCk=" + emailSmsCk + ", cellPhone=" + cellPhone + ", phoneSmsCk=" + phoneSmsCk + ", phone="
				+ phone + ", joinDate=" + joinDate + ", recentDate=" + recentDate + ", mileage=" + mileage + ", sum="
				+ sum + "]";
	}
	
	
	
	
}
