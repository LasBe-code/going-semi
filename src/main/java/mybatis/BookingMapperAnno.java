package mybatis;

import java.util.List;

import org.apache.ibatis.annotations.*;
import model.Booking;
import model.Member;

public interface BookingMapperAnno {
	
	@Select("select * from booking where email = #{email}")
	//반환형 메서드이름(매개변수);
	List<Booking> getBookingSelectList(String email);
	
	@Select ("select * from booking where bo_num = #{bo_num}")
	Booking getBookingSelectDetail(int bo_num);
	
	@Update("update booking set status = 2 where bo_num = #{bo_num}")
	void updateBookingStatus(int bo_num);
	
	
	
	
	
	

}
