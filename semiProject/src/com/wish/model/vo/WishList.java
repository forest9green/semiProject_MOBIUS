package com.wish.model.vo;

public class WishList {
	
	private String userId;
	private String pCode;
	
	public WishList() {
		// TODO Auto-generated constructor stub
	}

	public WishList(String userId, String pCode) {
		super();
		this.userId = userId;
		this.pCode = pCode;
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

	@Override
	public String toString() {
		return "WishList [userId=" + userId + ", pCode=" + pCode + "]";
	}

	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + ((pCode == null) ? 0 : pCode.hashCode());
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
		WishList other = (WishList) obj;
		if (pCode == null) {
			if (other.pCode != null)
				return false;
		} else if (!pCode.equals(other.pCode))
			return false;
		if (userId == null) {
			if (other.userId != null)
				return false;
		} else if (!userId.equals(other.userId))
			return false;
		return true;
	}

}
