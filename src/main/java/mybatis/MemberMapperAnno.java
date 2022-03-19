package mybatis;

import org.apache.ibatis.annotations.*;

import model.Business;
import model.Member;

public interface MemberMapperAnno {
	
	@Insert("insert into member values(#{email}, #{password}, #{tel}, #{name})")
	int insertMember(Member member);
	
	@Insert("insert into business values(#{bu_email}, #{bu_password},#{bu_tel},#{bu_name},#{bu_address},#{bu_id},#{bu_title},#{pic_num})")
	int insertBusiness(Business business);
	
	@Select("select * from member where email=#{email}")
	Member selectMemberOne(String email);
	
	@Select("select * from business where bu_email=#{bu_email}")
	Business selectBusinessOne(String bu_email);
}