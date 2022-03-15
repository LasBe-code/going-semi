package model;

public class Reserved {
	private int ronum;
	private String redate;
	
	public Reserved() {}

	public Reserved(int ronum, String redate) {
		super();
		this.ronum = ronum;
		this.redate = redate;
	}

	public int getRonum() {
		return ronum;
	}

	public void setRonum(int ronum) {
		this.ronum = ronum;
	}

	public String getRedate() {
		return redate;
	}

	public void setRedate(String redate) {
		this.redate = redate;
	}
	
}
