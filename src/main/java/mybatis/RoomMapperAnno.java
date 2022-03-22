package mybatis;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;

import model.Booking;
import model.Business;
import model.Picture;
import model.Room;

public interface RoomMapperAnno {

	@Select("select substr(location ,0,INSTRB(location,',')-1) location, r.*  "
			+ " from room r, picture p where r.bu_email = #{bu_email} and r.pic_num = p.pic_num "
			+ " order by lpad(r.ro_price, 10, '0') ")
	List<Room> roomList(String bu_email);
	
	//roominfo 슬라이드에 나올 첫번째 사진
	@Select("select substr(location ,0,INSTRB(location,',')-1) location "
			+ "from room r, picture p where r.bu_email = #{bu_email} and r.pic_num = p.pic_num and r.ro_num = #{ro_num}")
	String picMain(Map<String, Object> map);
	
	@Select("select picseq.nextval from dual")
	int nextPicNum();
	
	
	@Select("select roseq.nextval from dual")
	int nextRoNum();
	
	@Insert("insert into room (ro_num, bu_email, ro_count, ro_name, ro_price, checkin, checkout, ro_info, pic_num) "
			+ " values (#{ro_num}, #{bu_email}, #{ro_count}, #{ro_name}, #{ro_price}, #{checkin}, #{checkout}, #{ro_info}, #{pic_num}) ")
	int insertRoom(Room room);

	
	@Insert("insert into picture(pic_num, location) values(#{pic_num}, #{location})")
	void insertPicture(Picture p);
	
	
	@Select("select * from room where bu_email = #{bu_email} and ro_num = #{ro_num}")
	Room selectRoom(Map<String, Object> map);
	
	@Select("select p.* from room r, picture p where r.bu_email = #{bu_email} and r.ro_num = #{ro_num} and r.pic_num = p.pic_num")
	Picture selectPic(Map<String, Object> map);

	
	
	@Update("update picture set location = #{location} where pic_num = #{pic_num}")
	int updatePicture(Picture p);

	
	@Update("update room set  bu_email = #{bu_email}, ro_count = #{ro_count}, ro_name = #{ro_name}, ro_price = #{ro_price}, "
			+ " checkin = #{checkin}, checkout = #{checkout}, ro_info = #{ro_info} where ro_num = #{ro_num}")
	int updateRoom(Room room);

	
	@Delete("delete from room where bu_email = #{bu_email} and ro_num = #{ro_num}")
	int deleteRoom(Map<String, Object> map);

	
	@Select("select b.bu_password from business b where b.bu_email = #{bu_email} ")
	Business selectBu(String bu_email);

	
	@Select("select * from (select bo.ro_name, ro.ro_count, bo.checkin, bo.checkout, m.name, m.tel, m.email "
			+ " from booking bo, room ro, member m, business bu "
			+ " where ro.bu_email = 'qqq@naver.com' and ro.ro_name = bo.ro_name and "
			+ " m.email = bo.email and ro.bu_email = bu.bu_email order by checkin) "
			+ " where checkin >= sysdate")
	List<Booking> selectBkList(Map<String, Object> map);

	
	@Select("select count(*) from booking bk, business bu where bk.bu_title = bu.bu_title and bu.bu_email = #{bu_email}")
	int countBoard(String bu_email);

	// roominfo 슬라이드에 나올 사진들(2번부터) 
	@Select("select substr(location ,INSTRB(location,',')+2) location "
			+ " from room r, picture p where r.bu_email = #{bu_email} and "
			+ " r.pic_num = p.pic_num and r.ro_num = #{ro_num}")
	String picList(Map<String, Object> map);

	
	
	
}
