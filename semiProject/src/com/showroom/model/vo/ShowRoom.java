package com.showroom.model.vo;

public class ShowRoom {
	
	private String srImgPath;
	private String pCode;
	private String srMenu;
	
	public ShowRoom() {
		// TODO Auto-generated constructor stub
	}

	public ShowRoom(String srImgPath, String pCode, String srMenu) {
		super();
		this.srImgPath = srImgPath;
		this.pCode = pCode;
		this.srMenu = srMenu;
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

	@Override
	public String toString() {
		return "ShowRoom [srImgPath=" + srImgPath + ", pCode=" + pCode + ", srMenu=" + srMenu + "]";
	}

	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + ((pCode == null) ? 0 : pCode.hashCode());
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
		ShowRoom other = (ShowRoom) obj;
		if (pCode == null) {
			if (other.pCode != null)
				return false;
		} else if (!pCode.equals(other.pCode))
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
