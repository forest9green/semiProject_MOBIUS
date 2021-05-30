package com.cart.model.vo;

public class CartProduct {
	
	private String userId;
	private String pCode;
	private int amount;
	private String pName;
	private int price;
	private int deliveryFee;
	
	public CartProduct() {
		// TODO Auto-generated constructor stub
	}

	public CartProduct(String userId, String pCode, int amount, String pName, int price, int deliveryFee) {
		super();
		this.userId = userId;
		this.pCode = pCode;
		this.amount = amount;
		this.pName = pName;
		this.price = price;
		this.deliveryFee = deliveryFee;
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

	public int getAmount() {
		return amount;
	}

	public void setAmount(int amount) {
		this.amount = amount;
	}

	public String getpName() {
		return pName;
	}

	public void setpName(String pName) {
		this.pName = pName;
	}

	public int getPrice() {
		return price;
	}

	public void setPrice(int price) {
		this.price = price;
	}

	public int getDeliveryFee() {
		return deliveryFee;
	}

	public void setDeliveryFee(int deliveryFee) {
		this.deliveryFee = deliveryFee;
	}

	@Override
	public String toString() {
		return "CartProduct [userId=" + userId + ", pCode=" + pCode + ", amount=" + amount + ", pName=" + pName
				+ ", price=" + price + ", deliveryFee=" + deliveryFee + "]";
	}

	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + amount;
		result = prime * result + deliveryFee;
		result = prime * result + ((pCode == null) ? 0 : pCode.hashCode());
		result = prime * result + ((pName == null) ? 0 : pName.hashCode());
		result = prime * result + price;
		result = prime * result + ((userId == null) ? 0 : userId.hashCode());
		return result;
	}

	@Override
	public boolean equals(Object obj) {
		if (this == obj)
			return true;
		if (obj == null)
			return false;
		if (getClass() != obj.getClass())
			return false;
		CartProduct other = (CartProduct) obj;
		if (amount != other.amount)
			return false;
		if (deliveryFee != other.deliveryFee)
			return false;
		if (pCode == null) {
			if (other.pCode != null)
				return false;
		} else if (!pCode.equals(other.pCode))
			return false;
		if (pName == null) {
			if (other.pName != null)
				return false;
		} else if (!pName.equals(other.pName))
			return false;
		if (price != other.price)
			return false;
		if (userId == null) {
			if (other.userId != null)
				return false;
		} else if (!userId.equals(other.userId))
			return false;
		return true;
	}

}
