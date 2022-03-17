package mybatis;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Select;

import model.Picture;
import model.Room;

public interface RoomMapperAnno {

	@Select("select * from room where bu_email = #{bu_email}  order by lpad(ro_price, 8, '0')")
	List<Room> roomList(String bu_email);
	
	@Select("select p.location from room r , picture p "
			+ "where r.pic_num = p.pic_num and r.bu_email = #{bu_email} order by lpad(ro_price, 10, '0')")
	List<Picture> picSelect(String bu_email);
	
	
	@Select("select picseq.nextval from dual")
	int nextPicNum();
	
	
	@Select("select roseq.nextval from dual")
	int nextRoNum();
	
	@Insert("insert into room (ro_num, bu_email, ro_count, ro_name, ro_price, checkin, checkout, ro_info, pic_num) "
			+ " values (#{ro_num}, #{bu_email}, #{ro_count}, #{ro_name}, #{ro_price}, #{checkin}, #{checkout}, #{ro_info}, #{pic_num}) ")
	int insertRoom(Room room);

	
	@Insert("insert into picture(pic_num, location) values(#{pic_num}, #{location})")
	void insertPicture(Picture p);
	
	
	@Select("select * from room where bu_email = #{bu_email} and pic_num = #{pic_num}")
	Room selectRoom(Map<String, Object> map);
	
	
	
	
}
