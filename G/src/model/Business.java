package model;

public class Business {
	private String buemail, bupassword, butel, buname, buaddress;
	private int buid;
	private String butitle;
	private int picnum;
	
	public Business() {}
	public Business(String buemail, String bupassword, String butel, String buname, String buaddress, int buid,
			String butitle, int picnum) {
		super();
		this.buemail = buemail;
		this.bupassword = bupassword;
		this.butel = butel;
		this.buname = buname;
		this.buaddress = buaddress;
		this.buid = buid;
		this.butitle = butitle;
		this.picnum = picnum;
	}
	public String getBuemail() {
		return buemail;
	}
	public void setBuemail(String buemail) {
		this.buemail = buemail;
	}
	public String getBupassword() {
		return bupassword;
	}
	public void setBupassword(String bupassword) {
		this.bupassword = bupassword;
	}
	public String getButel() {
		return butel;
	}
	public void setButel(String butel) {
		this.butel = butel;
	}
	public String getBuname() {
		return buname;
	}
	public void setBuname(String buname) {
		this.buname = buname;
	}
	public String getBuaddress() {
		return buaddress;
	}
	public void setBuaddress(String buaddress) {
		this.buaddress = buaddress;
	}
	public int getBuid() {
		return buid;
	}
	public void setBuid(int buid) {
		this.buid = buid;
	}
	public String getButitle() {
		return butitle;
	}
	public void setButitle(String butitle) {
		this.butitle = butitle;
	}
	public int getPicnum() {
		return picnum;
	}
	public void setPicnum(int picnum) {
		this.picnum = picnum;
	}
	
	
	
}
