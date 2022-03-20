package model;

import java.sql.Date;

public class Booking {
	private int bo_num;
	private String email, name, tel, payment;
	private String price;
	private String bu_title;
	private String ro_name;
	private String checkin, checkout;
	private int ro_num;
	private Date reg_date; // 예약한 날짜확인 
	private int status;//예약 상태 확인
	
	
	public Booking() {
	}
	
	public Booking(int bo_num, String email, String name, String tel, String payment, String price, String bu_title,
			String ro_name, String checkin, String checkout, int ro_num, Date reg_date, int status) {
		super();
		this.bo_num = bo_num;
		this.email = email;
		this.name = name;
		this.tel = tel;
		this.payment = payment;
		this.price = price;
		this.bu_title = bu_title;
		this.ro_name = ro_name;
		this.checkin = checkin;
		this.checkout = checkout;
		this.ro_num = ro_num;
		this.reg_date = reg_date;
		this.status = status;
	}

	
	
	public int getBo_num() {
		return bo_num;
	}

	public void setBo_num(int bo_num) {
		this.bo_num = bo_num;
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

	public String getPrice() {
		return price;
	}

	public void setPrice(String price) {
		this.price = price;
	}

	public String getBu_title() {
		return bu_title;
	}

	public void setBu_title(String bu_title) {
		this.bu_title = bu_title;
	}

	public String getRo_name() {
		return ro_name;
	}

	public void setRo_name(String ro_name) {
		this.ro_name = ro_name;
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

	public int getRo_num() {
		return ro_num;
	}

	public void setRo_num(int ro_num) {
		this.ro_num = ro_num;
	}

	public Date getReg_date() {
		return reg_date;
	}

	public void setReg_date(Date reg_date) {
		this.reg_date = reg_date;
	}

	public int getStatus() {
		return status;
	}

	public void setStatus(int status) {
		this.status = status;
	}

	@Override
	public String toString() {
		return "{\"bo_num\":\"" + bo_num + "\", \"email\":\"" + email + "\", \"name\":\"" + name + "\", \"tel\":\""
				+ tel + "\", \"payment\":\"" + payment + "\", \"price\":\"" + price + "\", \"bu_title\":\"" + bu_title
				+ "\", \"ro_name\":\"" + ro_name + "\", \"checkin\":\"" + checkin + "\", \"checkout\":\"" + checkout
				+ "\", \"ro_num\":\"" + ro_num + "\", \"reg_date\":\"" + reg_date + "\", \"status\":\"" + status
				+ "\"}";
	}
}
