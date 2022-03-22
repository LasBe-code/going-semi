package service;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.apache.ibatis.session.SqlSession;

import model.Reserved;
import model.Room;
import mybatis.ReservedMapperAnno;
import mybatis.RoomMapperAnno;
import util.MybatisConnection;

public class ReserveDao {
	public List<Room> roomList(Map map) {
			
		SqlSession sqlSession = MybatisConnection.getConnection();
		try {
			
			List<Room> list = sqlSession.getMapper(ReservedMapperAnno.class).roomList(map);
			return list;
			
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			MybatisConnection.close(sqlSession);
		}
		
		return null;
	}
	
	public Reserved reserveCheck(Map map) {
		
		SqlSession sqlSession = MybatisConnection.getConnection();
		try {
			
			Reserved reserved = sqlSession.getMapper(ReservedMapperAnno.class).reserveCheck(map);
			return reserved;
			
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			MybatisConnection.close(sqlSession);
		}
		
		return null;
	}
	
}
