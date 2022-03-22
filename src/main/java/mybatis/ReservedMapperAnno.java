package mybatis;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.*;
import model.Reserved;
import model.Room;

public interface ReservedMapperAnno {
	@Select("select * from room where bu_email = #{bu_email} and ro_count >= #{ro_count}")
	List<Room> roomList(Map map);
	
	@Select("select * from reserved where ro_num = #{ro_num} and ( re_date between #{checkin} and #{checkout} ) ")
	Reserved reserveCheck(Map map);
}
