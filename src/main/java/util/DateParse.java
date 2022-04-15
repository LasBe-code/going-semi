package util;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.time.LocalDate;
import java.time.format.DateTimeFormatter;
import java.util.Calendar;
import java.util.Date;

public class DateParse {
	SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd");
	SimpleDateFormat strFormat = new SimpleDateFormat("yyyyMMdd");
	// yyyy-MM-dd -> yyyyMMdd	=>	DB에 넣기 위해 사용
	public String dateToStr(String date) {
		return date.replaceAll("-", "");
	}
	
	// yyyyMMdd -> yyyy-MM-dd	=>	input date value로 넣기 위해 사용
	public String strToDate(String str) throws ParseException {
		Date date = strFormat.parse(str);
		return dateFormat.format(date);
	}
	
	public String getTodayPlus(int plus) {
		// =========== 현재 시간 ==============
		LocalDate now = LocalDate.now();
		now = now.plusDays(plus);
		// 포맷 정의
		DateTimeFormatter formatter = DateTimeFormatter.ofPattern("yyyyMMdd");
		// 포맷 적용
		return now.format(formatter);
	}
}
