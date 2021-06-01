package com.admin.user.model.vo;

import java.util.Date;

public class AdminOrderInfo {
	private String orderNo;
	private Date orderDate;
	private String userId;
	private String oState;
	private String pCode;
	private String pName;
	private String orderMemo;
	private int oAmount;
	private String receiverName;
	private String addCellphone;
	private String addPhone;
	private String postCode;
	private String addr;
	
	public AdminOrderInfo() {
		// TODO Auto-generated constructor stub
	}

	public AdminOrderInfo(String orderNo, Date orderDate, String userId, String oState, String pCode, String pName,
			String orderMemo, int oAmount, String receiverName, String addCellphone, String addPhone, String postCode,
			String addr) {
		super();
		this.orderNo = orderNo;
		this.orderDate = orderDate;
		this.userId = userId;
		this.oState = oState;
		this.pCode = pCode;
		this.pName = pName;
		this.orderMemo = orderMemo;
		this.oAmount = oAmount;
		this.receiverName = receiverName;
		this.addCellphone = addCellphone;
		this.addPhone = addPhone;
		this.postCode = postCode;
		this.addr = addr;
	}

	public String getOrderNo() {
		return orderNo;
	}

	public void setOrderNo(String orderNo) {
		this.orderNo = orderNo;
	}

	public Date getOrderDate() {
		return orderDate;
	}

	public void setOrderDate(Date orderDate) {
		this.orderDate = orderDate;
	}

	public String getUserId() {
		return userId;
	}

	public void setUserId(String userId) {
		this.userId = userId;
	}

	public String getoState() {
		return oState;
	}

	public void setoState(String oState) {
		this.oState = oState;
	}

	public String getpCode() {
		return pCode;
	}

	public void setpCode(String pCode) {
		this.pCode = pCode;
	}

	public String getpName() {
		return pName;
	}

	public void setpName(String pName) {
		this.pName = pName;
	}

	public String getOrderMemo() {
		return orderMemo;
	}

	public void setOrderMemo(String orderMemo) {
		this.orderMemo = orderMemo;
	}

	public int getoAmount() {
		return oAmount;
	}

	public void setoAmount(int oAmount) {
		this.oAmount = oAmount;
	}

	public String getReceiverName() {
		return receiverName;
	}

	public void setReceiverName(String receiverName) {
		this.receiverName = receiverName;
	}

	public String getAddCellphone() {
		return addCellphone;
	}

	public void setAddCellphone(String addCellphone) {
		this.addCellphone = addCellphone;
	}

	public String getAddPhone() {
		return addPhone;
	}

	public void setAddPhone(String addPhone) {
		this.addPhone = addPhone;
	}

	public String getPostCode() {
		return postCode;
	}

	public void setPostCode(String postCode) {
		this.postCode = postCode;
	}

	public String getAddr() {
		return addr;
	}

	public void setAddr(String addr) {
		this.addr = addr;
	}

	@Override
	public String toString() {
		return "AdminOrderInfo [orderNo=" + orderNo + ", orderDate=" + orderDate + ", userId=" + userId + ", oState="
				+ oState + ", pCode=" + pCode + ", pName=" + pName + ", orderMemo=" + orderMemo + ", oAmount=" + oAmount
				+ ", receiverName=" + receiverName + ", addCellphone=" + addCellphone + ", addPhone=" + addPhone
				+ ", postCode=" + postCode + ", addr=" + addr + "]";
	}
	
	
}
