package com.user.model.dao;

import java.io.FileReader;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Properties;

import com.user.model.vo.User;
import static com.common.JDBCTemplate.close;


public class UserDao {
	private Properties prop = new Properties();
	
	public UserDao() {
		try {
			String filePath=UserDao.class.getResource("/sql/user_sql.properties").getPath();
			prop.load(new FileReader(filePath));
		}catch(Exception e) {
			e.printStackTrace();
		}
	}
	
	public User login(Connection conn,String userId,String userPw) {
		PreparedStatement pstmt=null;
		ResultSet rs = null;
		User u = null;
		
		try {
			pstmt=conn.prepareStatement(prop.getProperty("selectUser"));
			pstmt.setString(1, userId);
			pstmt.setString(2, userPw);
			
			rs=pstmt.executeQuery();
			
			if(rs.next()) {
				u=new User();
				u.setUserId(rs.getString("userId"));
				u.setUserPwd(rs.getString("userPw"));
				u.setUserName(rs.getString("userName"));
			}
		}catch(SQLException e) {
			e.printStackTrace();
		}finally {
			close(rs);
			close(pstmt);
		}
		return u;
		
	}
}
