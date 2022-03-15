package model;


public class Booking {
	private int bonum;
	private String email, name, tel, payment;
	private int price;
	private String butitle;
	private String rname;
	private String checkin, checkout;
	private int ronum;
	
	public Booking() {}

	public Booking(int bonum, String email, String name, String tel, String payment, int price, String butitle,
			String rname, String checkin, String checkout, int ronum) {
		super();
		this.bonum = bonum;
		this.email = email;
		this.name = name;
		this.tel = tel;
		this.payment = payment;
		this.price = price;
		this.butitle = butitle;
		this.rname = rname;
		this.checkin = checkin;
		this.checkout = checkout;
		this.ronum = ronum;
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

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getTel() {
		return tel;
	}

	public void setTel(String tel) {
		this.tel = tel;
	}

	public String getPayment() {
		return payment;
	}

	public void setPayment(String payment) {
		this.payment = payment;
	}

	public int getPrice() {
		return price;
	}

	public void setPrice(int price) {
		this.price = price;
	}

	public String getButitle() {
		return butitle;
	}

	public void setButitle(String butitle) {
		this.butitle = butitle;
	}

	public String getRname() {
		return rname;
	}

	public void setRname(String rname) {
		this.rname = rname;
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

	public int getRonum() {
		return ronum;
	}

	public void setRonum(int ronum) {
		this.ronum = ronum;
	}
	
	
	
	
}
