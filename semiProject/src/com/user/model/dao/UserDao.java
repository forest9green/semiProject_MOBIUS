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
	
		
	public int insertMember(Connection conn, User u) {
		PreparedStatement pstmt= null;
		int result=0;
		
		try {
			pstmt=conn.prepareStatement(prop.getProperty("insertMember"));
			pstmt.setString(1, u.getUserId());
			pstmt.setString(2, u.getUserPwd());
			pstmt.setString(3, u.getUserName());
			pstmt.setString(4, u.getEmail());
			pstmt.setInt(5, u.getEmailSmsCk());
			pstmt.setString(6, u.getCellPhone());
			pstmt.setInt(7, u.getPhoneSmsCk());
			pstmt.setString(8, u.getPhone());
			
			result = pstmt.executeUpdate();
		}catch(SQLException e) {
			e.printStackTrace();
		}finally {
			close(pstmt);
		}
		return result;
	}
	
	
	public User checkEamil(Connection conn, String userName,String email) {
		
		PreparedStatement pstmt=null;
		ResultSet rs = null;
		User u = null;
		try {
			pstmt=conn.prepareStatement(prop.getProperty("checkEmail"));
			pstmt.setString(1, userName);
			pstmt.setString(2, email);
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
	
	
	public int updateMember(Connection conn, User u) {
		PreparedStatement pstmt =null;
		int result=0;
		try {
			pstmt=conn.prepareStatement(prop.getProperty("updateMember"));
			pstmt.setString(1, u.getUserPwd());
			pstmt.setString(2, u.getUserName());
			pstmt.setInt(3, u.getEmailSmsCk());
			pstmt.setString(4, u.getCellPhone());
			pstmt.setInt(5, u.getPhoneSmsCk());
			pstmt.setString(6, u.getPhone());
			pstmt.setString(7, u.getUserId());
			
			result = pstmt.executeUpdate();
		}catch(SQLException e) {
			e.printStackTrace();
		}finally{
			close(pstmt);
		}
		return result;
	}
	
	public User checkPassword(Connection conn, String userId,String password) {
		PreparedStatement pstmt=null;
		ResultSet rs=null;
		User u = null;
		
		try {
			pstmt= conn.prepareStatement(prop.getProperty("selectUser"));
			pstmt.setString(1, userId);
			pstmt.setString(2, password);
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
			close(conn);
		}
		return u;
	}
	
	
	
	
}
