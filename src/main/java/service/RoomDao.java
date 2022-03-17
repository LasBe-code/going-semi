package service;


import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;

import model.Picture;
import model.Room;
import mybatis.RoomMapperAnno;
import util.MybatisConnection;

public class RoomDao {

	public List<Room> roomList(String bu_email) {
		
		SqlSession sqlSession = MybatisConnection.getConnection();
		try {
			
			List<Room> list = sqlSession.getMapper(RoomMapperAnno.class).roomList(bu_email);
			return list;
			
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			MybatisConnection.close(sqlSession);
		}
		
		return null;
	}
	
	public List<Picture> picSelect(String bu_email) {
		
			SqlSession sqlSession = MybatisConnection.getConnection();
		
		try {
			
			List<Picture> mainPic = sqlSession.getMapper(RoomMapperAnno.class).picSelect(bu_email);
			return mainPic;
			
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			MybatisConnection.close(sqlSession);
		}
		
		return null;
	}

	public int nextPicNum() {
		
		SqlSession sqlSession = MybatisConnection.getConnection();
		
		try {
			
			int nextNum = sqlSession.getMapper(RoomMapperAnno.class).nextPicNum();
			return nextNum;
			
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			MybatisConnection.close(sqlSession);
		}
		
		return 0;
	}
	
	public int nextRoNum() {
		
		SqlSession sqlSession = MybatisConnection.getConnection();
		
		try {
			
			int nextNum = sqlSession.getMapper(RoomMapperAnno.class).nextRoNum();
			return nextNum;
			
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			MybatisConnection.close(sqlSession);
		}
		
		return 0;
	}

	public int insertRoom(Room room) {

		SqlSession sqlSession = MybatisConnection.getConnection();
		
		try {
			
			int nextNum = sqlSession.getMapper(RoomMapperAnno.class).insertRoom(room);
			return nextNum;
			
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			MybatisConnection.close(sqlSession);
		}
		
		return 0;
	}

	public void insertPicture(Picture p) {
		
		
		SqlSession sqlSession = MybatisConnection.getConnection();
		
		try {
			
			sqlSession.getMapper(RoomMapperAnno.class).insertPicture(p);
			
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			MybatisConnection.close(sqlSession);
		}
		
	}

	public Room selectRoom(Map<String, Object> map) {

		SqlSession sqlSession = MybatisConnection.getConnection();
		
		try {
			
			Room room = sqlSession.getMapper(RoomMapperAnno.class).selectRoom(map);
			return room;
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			MybatisConnection.close(sqlSession);
		}
		
		
		return null;
	}

	

	
}
