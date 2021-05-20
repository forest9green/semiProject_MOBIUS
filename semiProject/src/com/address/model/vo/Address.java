package com.address.model.vo;

public class Address {

	private int addrNo;
	private String userId;
	private String addName;
	private String receiverName;
	private int postCode;
	private String addr;
	private int defaultAddr;
	private String addCellPhone;
	private String addPhone;
	
	public Address() {
		// TODO Auto-generated constructor stub
	}

	public Address(int addrNo, String userId, String addName, String receiverName, int postCode, String addr,
			int defaultAddr, String addCellPhone, String addPhone) {
		super();
		this.addrNo = addrNo;
		this.userId = userId;
		this.addName = addName;
		this.receiverName = receiverName;
		this.postCode = postCode;
		this.addr = addr;
		this.defaultAddr = defaultAddr;
		this.addCellPhone = addCellPhone;
		this.addPhone = addPhone;
	}

	public int getAddrNo() {
		return addrNo;
	}

	public void setAddrNo(int addrNo) {
		this.addrNo = addrNo;
	}

	public String getUserId() {
		return userId;
	}

	public void setUserId(String userId) {
		this.userId = userId;
	}

	public String getAddName() {
		return addName;
	}

	public void setAddName(String addName) {
		this.addName = addName;
	}

	public String getReceiverName() {
		return receiverName;
	}

	public void setReceiverName(String receiverName) {
		this.receiverName = receiverName;
	}

	public int getPostCode() {
		return postCode;
	}

	public void setPostCode(int postCode) {
		this.postCode = postCode;
	}

	public String getAddr() {
		return addr;
	}

	public void setAddr(String addr) {
		this.addr = addr;
	}

	public int getDefaultAddr() {
		return defaultAddr;
	}

	public void setDefaultAddr(int defaultAddr) {
		this.defaultAddr = defaultAddr;
	}

	public String getAddCellPhone() {
		return addCellPhone;
	}

	public void setAddCellPhone(String addCellPhone) {
		this.addCellPhone = addCellPhone;
	}

	public String getAddPhone() {
		return addPhone;
	}

	public void setAddPhone(String addPhone) {
		this.addPhone = addPhone;
	}

	@Override
	public String toString() {
		return "Address [addrNo=" + addrNo + ", userId=" + userId + ", addName=" + addName + ", receiverName="
				+ receiverName + ", postCode=" + postCode + ", addr=" + addr + ", defaultAddr=" + defaultAddr
				+ ", addCellPhone=" + addCellPhone + ", addPhone=" + addPhone + "]";
	}
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
}
