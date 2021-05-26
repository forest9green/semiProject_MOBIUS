package com.user.model.service;

import java.sql.Connection;

import com.user.model.dao.UserDao;
import com.user.model.vo.User;
import static com.common.JDBCTemplate.getConnection;
import static com.common.JDBCTemplate.close;
import static com.common.JDBCTemplate.commit;
import static com.common.JDBCTemplate.rollback;

public class UserService {

	private UserDao dao = new UserDao();
	
	public User login(String userId, String userPw) {
		Connection conn=getConnection();
		User u = dao.login(conn,userId,userPw);
		
		close(conn);
		return u;
	}
	
	public User checkDuplicateId(String userId) {
		Connection conn = getConnection();
		User u = dao.checkDuplicateId(conn,userId);
		
		close(conn);
		return u;
	}
	
	public int insertMember(User u) {
		Connection conn = getConnection();
		int result=dao.insertMember(conn,u);
		
		if(result>0) commit(conn);
		else rollback(conn);
		
		close(conn);
		
		return result;
	}
	
	public User checkEmail(String userName,String email) {
		Connection conn = getConnection();
		User u = dao.checkEamil(conn,userName,email);
		
		close(conn);
		return u;
	}
	
	public int updateMember(User u) {
		Connection conn = getConnection();
		int result = dao.updateMember(conn,u);
		
		if(result>0) commit(conn);
		else rollback (conn);
		
		close(conn);
		return result;
	}
	
	public User checkPassword(String userId,String password) {
		Connection conn = getConnection();
		User u = dao.checkPassword(conn,userId,password);
		
		close(conn);
		return u;
	}
	
	
	public User checkPw(String userId, String userName, String email) {
		Connection conn = getConnection();
		User u = dao.checkPw(conn,userId,userName,email);
		close(conn);
		return u;
	}
	
	public int deleteMember(String userId) {
		Connection conn = getConnection();
		int result = dao.deleteMember(conn, userId);
		if (result>0) commit(conn);
		else rollback(conn);
		close(conn);
		return result;
	}
	
	
	
}
