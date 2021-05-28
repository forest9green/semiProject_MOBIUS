package com.admin.main.model.vo;

import java.util.Date;

public class AdminMainInfo {
	private String cateCode;
	private String pCode;
	private int price;
	private int stock;
	private Date pEnrollDate;
	private int deliveryFee;
	private String size;
	private String pName;
	private String category;
	
	public AdminMainInfo() {
		// TODO Auto-generated constructor stub
	}

	public AdminMainInfo(String cateCode, String pCode, int price, int stock, Date pEnrollDate, int deliveryFee,
			String size, String pName, String category) {
		super();
		this.cateCode = cateCode;
		this.pCode = pCode;
		this.price = price;
		this.stock = stock;
		this.pEnrollDate = pEnrollDate;
		this.deliveryFee = deliveryFee;
		this.size = size;
		this.pName = pName;
		this.category = category;
	}

	public String getCateCode() {
		return cateCode;
	}

	public void setCateCode(String cateCode) {
		this.cateCode = cateCode;
	}

	public String getpCode() {
		return pCode;
	}

	public void setpCode(String pCode) {
		this.pCode = pCode;
	}

	public int getPrice() {
		return price;
	}

	public void setPrice(int price) {
		this.price = price;
	}

	public int getStock() {
		return stock;
	}

	public void setStock(int stock) {
		this.stock = stock;
	}

	public Date getpEnrollDate() {
		return pEnrollDate;
	}

	public void setpEnrollDate(Date pEnrollDate) {
		this.pEnrollDate = pEnrollDate;
	}

	public int getDeliveryFee() {
		return deliveryFee;
	}

	public void setDeliveryFee(int deliveryFee) {
		this.deliveryFee = deliveryFee;
	}

	public String getSize() {
		return size;
	}

	public void setSize(String size) {
		this.size = size;
	}

	public String getpName() {
		return pName;
	}

	public void setpName(String pName) {
		this.pName = pName;
	}

	public String getCategory() {
		return category;
	}

	public void setCategory(String category) {
		this.category = category;
	}

	@Override
	public String toString() {
		return "AdminMainInfo [cateCode=" + cateCode + ", pCode=" + pCode + ", price=" + price + ", stock=" + stock
				+ ", pEnrollDate=" + pEnrollDate + ", deliveryFee=" + deliveryFee + ", size=" + size + ", pName="
				+ pName + ", category=" + category + "]";
	}
	
	
	
	
}
