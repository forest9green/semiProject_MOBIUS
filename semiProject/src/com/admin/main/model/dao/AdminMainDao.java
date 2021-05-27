package com.admin.main.model.dao;

import java.io.FileReader;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.Properties;

import com.user.model.vo.User;
import static com.common.JDBCTemplate.close;

public class AdminMainDao {

private Properties prop=new Properties();
	
	public AdminMainDao() {
		String path=AdminMainDao.class.getResource("/sql/adminUser_sql.properties").getPath();
		try {
			prop.load(new FileReader(path));
		}catch(IOException e) {
			e.printStackTrace();
		}
	}
	
	public List<User> memberList(Connection conn, int cPage, int numPerpage){
		PreparedStatement pstmt=null;
		ResultSet rs = null;
		List<User> list = new ArrayList();
		try {
			pstmt=conn.prepareStatement(prop.getProperty("selectMemberAll"));
			pstmt.setInt(1, (cPage-1)*numPerpage+1);
			pstmt.setInt(2, cPage*numPerpage);
			rs=pstmt.executeQuery();
			while(rs.next()) {
				User u = new User();
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
				list.add(u);
			}
		}catch(SQLException e) {
			e.printStackTrace();
		}finally {
			close(rs);
			close(pstmt);
		}

		return list;
		
	}
	
	
	public int selectUserCount(Connection conn) {
		PreparedStatement pstmt=null;
		ResultSet rs=null;
		int result=0;
		try {
			pstmt=conn.prepareStatement(prop.getProperty("selectUserCount"));
			rs=pstmt.executeQuery();
			if(rs.next()) {
				result=rs.getInt(1);
			}
		}catch(SQLException e) {
			e.printStackTrace();
		}finally {
			close(rs);
			close(pstmt);
		}
		System.out.println(result);
		return result;
	}

	
	
	
	
	
	
	
}
