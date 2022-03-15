package model;


public class Room {
	private int ronum;
	private String buemail;
	private int rocount;
	private String roname;
	private int roprice;
	private String checkin;
	private String checkout;
	private int picnum;
	
	public Room() {}

	public Room(int ronum, String buemail, int rocount, String roname, int roprice, String checkin, String checkout,
			int picnum) {
		super();
		this.ronum = ronum;
		this.buemail = buemail;
		this.rocount = rocount;
		this.roname = roname;
		this.roprice = roprice;
		this.checkin = checkin;
		this.checkout = checkout;
		this.picnum = picnum;
	}

	public int getRonum() {
		return ronum;
	}

	public void setRonum(int ronum) {
		this.ronum = ronum;
	}

	public String getBuemail() {
		return buemail;
	}

	public void setBuemail(String buemail) {
		this.buemail = buemail;
	}

	public int getRocount() {
		return rocount;
	}

	public void setRocount(int rocount) {
		this.rocount = rocount;
	}

	public String getRoname() {
		return roname;
	}

	public void setRoname(String roname) {
		this.roname = roname;
	}

	public int getRoprice() {
		return roprice;
	}

	public void setRoprice(int roprice) {
		this.roprice = roprice;
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
