package model;

public class Picture {
	private int picnum;
	private String location;
	
	public Picture() {}

	public Picture(int picnum, String location) {
		super();
		this.picnum = picnum;
		this.location = location;
	}

	public int getPicnum() {
		return picnum;
	}

	public void setPicnum(int picnum) {
		this.picnum = picnum;
	}

	public String getLocation() {
		return location;
	}

	public void setLocation(String location) {
		this.location = location;
	}
	
}
