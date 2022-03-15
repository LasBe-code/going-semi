package model;


public class Review {
	private int revnum, bonum;
	private String email, content;
	private String checkin, checkout;
	private int picnum;
	
	public Review() {}

	public Review(int revnum, int bonum, String email, String content, String checkin, String checkout, int picnum) {
		super();
		this.revnum = revnum;
		this.bonum = bonum;
		this.email = email;
		this.content = content;
		this.checkin = checkin;
		this.checkout = checkout;
		this.picnum = picnum;
	}

	public int getRevnum() {
		return revnum;
	}

	public void setRevnum(int revnum) {
		this.revnum = revnum;
	}

	public int getBonum() {
		return bonum;
	}

	public void setBonum(int bonum) {
		this.bonum = bonum;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	public String getCheckin() {
		return checkin;
	}

	public void setCheckin(String checkin) {
		this.checkin = checkin;
	}

	public String getCheckout() {
		return checkout;
	}

	public void setCheckout(String checkout) {
		this.checkout = checkout;
	}

	public int getPicnum() {
		return picnum;
	}

	public void setPicnum(int picnum) {
		this.picnum = picnum;
	}
	
	
	
	
}
