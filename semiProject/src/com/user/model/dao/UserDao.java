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
				u.setUserId(rs.getString("user_Id"));
				u.setUserPwd(rs.getString("user_Pwd"));
				u.setUserName(rs.getString("user_Name"));
				u.setEmail(rs.getString("email"));
				u.setEmailSmsCk(rs.getInt("email_Sms_Ck"));
				u.setCellPhone(rs.getString("cellPhone"));
				u.setPhoneSmsCk(rs.getInt("phone_Sms_Ck"));
				u.setPhone(rs.getString("phone"));
				u.setJoinDate(rs.getDate("join_Date"));
				u.setRecentDate(rs.getDate("recent_Date"));
				u.setMileage(rs.getInt("mileage"));
				
				
			}
		}catch(SQLException e) {
			e.printStackTrace();
		}finally {
			close(rs);
			close(pstmt);
		}
		return u;
		
	}
	
	public User checkDuplicateId(Connection conn, String userId) {
		PreparedStatement pstmt=null;
		ResultSet rs = null;
		User u = null;
		try {
			pstmt=conn.prepareStatement(prop.getProperty("selectUserId"));
			pstmt.setString(1, userId);
			rs=pstmt.executeQuery();
			if(rs.next()) {
				u = new User();
				u.setUserId(rs.getString("user_Id"));
				u.setUserPwd(rs.getString("user_Pwd"));
				u.setUserName(rs.getString("user_Name"));
				u.setEmail(rs.getString("email"));
				u.setEmailSmsCk(rs.getInt("email_Sms_Ck"));
				u.setCellPhone(rs.getString("cellPhone"));
				u.setPhoneSmsCk(rs.getInt("phone_Sms_Ck"));
				u.setPhone(rs.getString("phone"));
				u.setJoinDate(rs.getDate("join_Date"));
				u.setRecentDate(rs.getDate("recent_Date"));
				u.setMileage(rs.getInt("mileage"));
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
