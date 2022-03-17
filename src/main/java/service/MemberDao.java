package service;

import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.apache.ibatis.session.SqlSession;

import model.Business;
import model.Member;
import mybatis.MemberMapperAnno;
import util.MybatisConnection;

public class MemberDao {
	private Map<String, Object> map = new HashMap<>();
	
	public int insertMember(HttpServletRequest request) {
		
		SqlSession sqlSession = MybatisConnection.getConnection();
		
		Member m = new Member(
				request.getParameter("email"),
				request.getParameter("password"),
				request.getParameter("tel"),
				request.getParameter("name")
				);
				
		try {
			return sqlSession.getMapper(MemberMapperAnno.class).insertMember(m);
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			MybatisConnection.close(sqlSession);
		}
		return 0;
	}
	
	public int insertBusiness(HttpServletRequest request) {
		
		SqlSession sqlSession = MybatisConnection.getConnection();
		RoomDao rd = new RoomDao();
		
		Business b = new Business(
				request.getParameter("bu_email"),
				request.getParameter("bu_password"),
				request.getParameter("bu_tel"),
				request.getParameter("bu_name"),
				request.getParameter("bu_address"),
				request.getParameter("bu_id"),
				request.getParameter("bu_title"),
				rd.nextPicNum()
				);
				
		try {
			return sqlSession.getMapper(MemberMapperAnno.class).insertBusiness(b);
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			MybatisConnection.close(sqlSession);
		}
		return 0;
	}
	
	public Business selectBusinessOne(String bu_email) {
		SqlSession sqlSession = MybatisConnection.getConnection();
		try {
			return sqlSession.getMapper(MemberMapperAnno.class).selectBusinessOne(bu_email);
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			MybatisConnection.close(sqlSession);
		}
		return null;
	}
}
