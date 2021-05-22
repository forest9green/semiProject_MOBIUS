package com.product.model.vo;

import java.util.Date;

public class Product {
	
	private String pCode;
	private String cateCode;
	private int price;
	private int stock;
	private Date pEnrollDate;
	private int deliveryFee;
	private String size;
	private String pName;
	
	public Product() {
		// TODO Auto-generated constructor stub
	}

	public Product(String pCode, String cateCode, int price, int stock, Date pEnrollDate, int deliveryFee, String size,
			String pName) {
		super();
		this.pCode = pCode;
		this.cateCode = cateCode;
		this.price = price;
		this.stock = stock;
		this.pEnrollDate = pEnrollDate;
		this.deliveryFee = deliveryFee;
		this.size = size;
		this.pName = pName;
	}

	public String getpCode() {
		return pCode;
	}

	public void setpCode(String pCode) {
		this.pCode = pCode;
	}

	public String getCateCode() {
		return cateCode;
	}

	public void setCateCode(String cateCode) {
		this.cateCode = cateCode;
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

}
