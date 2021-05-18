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
	
	
	
	
	
	
	
}
