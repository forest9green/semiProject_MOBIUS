package com.showroom.model.vo;

public class ShowRoomDetail {
	
	private String srImgPath;
	private String pCode;
	private String srMenu;
	private int price;
	private String pName;
	
	public ShowRoomDetail() {
		// TODO Auto-generated constructor stub
	}

	public ShowRoomDetail(String srImgPath, String pCode, String srMenu, int price, String pName) {
		super();
		this.srImgPath = srImgPath;
		this.pCode = pCode;
		this.srMenu = srMenu;
		this.price = price;
		this.pName = pName;
	}

	public String getSrImgPath() {
		return srImgPath;
	}

	public void setSrImgPath(String srImgPath) {
		this.srImgPath = srImgPath;
	}

	public String getpCode() {
		return pCode;
	}

	public void setpCode(String pCode) {
		this.pCode = pCode;
	}

	public String getSrMenu() {
		return srMenu;
	}

	public void setSrMenu(String srMenu) {
		this.srMenu = srMenu;
	}

	public int getPrice() {
		return price;
	}

	public void setPrice(int price) {
		this.price = price;
	}

	public String getpName() {
		return pName;
	}

	public void setpName(String pName) {
		this.pName = pName;
	}

	@Override
	public String toString() {
		return "ShowRoomDetail [srImgPath=" + srImgPath + ", pCode=" + pCode + ", srMenu=" + srMenu + ", price=" + price
				+ ", pName=" + pName + "]";
	}

	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + ((pCode == null) ? 0 : pCode.hashCode());
		result = prime * result + ((pName == null) ? 0 : pName.hashCode());
		result = prime * result + price;
		result = prime * result + ((srImgPath == null) ? 0 : srImgPath.hashCode());
		result = prime * result + ((srMenu == null) ? 0 : srMenu.hashCode());
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
		ShowRoomDetail other = (ShowRoomDetail) obj;
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
		if (srImgPath == null) {
			if (other.srImgPath != null)
				return false;
		} else if (!srImgPath.equals(other.srImgPath))
			return false;
		if (srMenu == null) {
			if (other.srMenu != null)
				return false;
		} else if (!srMenu.equals(other.srMenu))
			return false;
		return true;
	}

}
