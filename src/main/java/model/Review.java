package model;


public class Review {
	
	private int rev_num, bo_num, ro_num, score;
	private String email, content, review_date, review_check;
	
	private String ro_name;
	
	public Review() {};
	
	
	public Review(int rev_num, int bo_num, int ro_num, int score, String email, String content, String review_date,
			String review_check, String ro_name) {
		super();
		this.rev_num = rev_num;
		this.bo_num = bo_num;
		this.ro_num = ro_num;
		this.score = score;
		this.email = email;
		this.content = content;
		this.review_date = review_date;
		this.review_check = review_check;
		this.ro_name = ro_name;
	}


	public int getRev_num() {
		return rev_num;
	}

	public void setRev_num(int rev_num) {
		this.rev_num = rev_num;
	}

	public int getBo_num() {
		return bo_num;
	}

	public void setBo_num(int bo_num) {
		this.bo_num = bo_num;
	}

	public int getRo_num() {
		return ro_num;
	}

	public void setRo_num(int ro_num) {
		this.ro_num = ro_num;
	}

	public int getScore() {
		return score;
	}

	public void setScore(int score) {
		this.score = score;
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

	public String getReview_date() {
		return review_date;
	}

	public void setReview_date(String review_date) {
		this.review_date = review_date;
	}

	public String getReview_check() {
		return review_check;
	}

	public void setReview_check(String review_check) {
		this.review_check = review_check;
	}

	public String getRo_name() {
		return ro_name;
	}

	public void setRo_name(String ro_name) {
		this.ro_name = ro_name;
	}

	@Override
	public String toString() {
		return "{\"rev_num\":\"" + rev_num + "\", \"bo_num\":\"" + bo_num + "\", \"ro_num\":\"" + ro_num
				+ "\", \"score\":\"" + score + "\", \"email\":\"" + email + "\", \"content\":\"" + content
				+ "\", \"review_date\":\"" + review_date + "\", \"review_check\":\"" + review_check
				+ "\", \"ro_name\":\"" + ro_name + "\"}";
	}
	
}
