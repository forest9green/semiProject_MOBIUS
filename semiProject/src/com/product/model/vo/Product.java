package com.product.model.vo;

import java.util.Date;

public class Product {
	
	private String pCode;
	private String cateCode;
	private int price;
	private int stock;
	private Date pEnrollDate;
	private int deleveryFee;
	private String size;
	
	public Product() {
		// TODO Auto-generated constructor stub
	}

	public Product(String pCode, String cateCode, int price, int stock, Date pEnrollDate, int deleveryFee,
			String size) {
		super();
		this.pCode = pCode;
		this.cateCode = cateCode;
		this.price = price;
		this.stock = stock;
		this.pEnrollDate = pEnrollDate;
		this.deleveryFee = deleveryFee;
		this.size = size;
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

	public int getDeleveryFee() {
		return deleveryFee;
	}

	public void setDeleveryFee(int deleveryFee) {
		this.deleveryFee = deleveryFee;
	}

	public String getSize() {
		return size;
	}

	public void setSize(String size) {
		this.size = size;
	}

}
