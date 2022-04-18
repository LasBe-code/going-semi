package mybatis;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.*;

import model.Booking;
import model.Business;
import model.Picture;
import model.Reserved;
import model.Room;

public interface ReservedMapperAnno {
	
	// business(인원 수, 숙소 이름, 숙소 주소) + room(최저가, 인원 수 제한) + picture(숙소 사진 첫번째)
	@Select(
			"SELECT "
					+"b.*, r.min_price as minPrice, p.location as picLocation "
					+"FROM "
					+"    (select * from business where bu_id = #{bu_id} and ( bu_address like '%${bu_address}%' or bu_title like '%${bu_address}%')) b "
					+"LEFT OUTER JOIN "
					+"    (select bu_email, min(to_number(ro_price)) as min_price from room where ro_count >= #{ro_count} group by bu_email) r "
					+"ON b.bu_email = r.bu_email "
					+"LEFT OUTER JOIN "
					+"    (select DISTINCT pic_num, FIRST_VALUE(location) OVER(partition by pic_num) as location from picture) p "
					+"ON b.pic_num = p.pic_num "
					+"ORDER BY 2"
			)
	List<Business> searchBusinessList(Map map);
	
	@Select("select * from room where bu_email = #{bu_email} and ro_count >= #{ro_count}")
	List<Room> roomList(Map map);
	
	@Select("select * from reserved where ro_num = #{ro_num} and ( re_date between #{checkin} and #{checkout} ) ")
	List<Reserved> reserveCheck(Map map);
	
	@Select("SELECT a.*, nvl(r.overlap, 0) as overlap "
			+ "FROM (select * from room where bu_email = #{bu_email} and ro_count >= #{ro_count}) a "
			+ "LEFT OUTER JOIN "
			+ "(select ro_num, count(*) as overlap from reserved where re_date BETWEEN #{checkin} and #{checkout} group by ro_num) r "
			+ "ON a.ro_num = r.ro_num "
			+ "ORDER BY a.ro_price")
	List<Room> overlapRoomList(Map map);
	
	@Select("select boseq.nextval from dual")
	int nextBoNum();
	
	@Insert("insert into booking(bo_num, email, payment, price, bu_title, ro_name, checkin, checkout, ro_num, reg_date, status) values(#{bo_num}, #{email}, #{payment}, #{price}, #{bu_title}, #{ro_name}, #{checkin}, #{checkout}, #{ro_num}, #{reg_date}, #{status})")
	int insertBooking(Booking b);
	
	@Insert("insert into reserved values(#{ro_num}, #{re_date})")
	int insertReserved(Reserved r);
	
	@Select("select * from business where bu_id = #{bu_id} and ( bu_address like '%${bu_address}%' or bu_title like '%${bu_address}%')")
	List<Business> businessList(Map map);
	
	@Select("select * from picture where pic_num = #{pic_num}")
	List<Picture> sbPicList(int pic_num);
	
	
	@Select("select min(to_number(ro_price)) from room where bu_email = #{bu_email} group by #{bu_email}")
	String roomMinPrice(String bu_email);
	
	@Delete("delete from reserved where ro_num=#{ro_num} and re_date between #{checkin} and #{checkout}")
	int cancelReserveList(Booking b);
	
	@Select("select * from business where bu_id = #{bu_id}")
	List<Business> buidList(Map map);
}
