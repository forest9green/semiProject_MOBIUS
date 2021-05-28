package com.admin.user.model.dao;

import java.io.FileReader;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.Properties;

import com.admin.user.vo.TotalInfo;

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
	
	public List<TotalInfo> memberList(Connection conn, int cPage, int numPerpage){
		PreparedStatement pstmt=null;
		ResultSet rs = null;
		List<TotalInfo> list = new ArrayList();
		try {
			pstmt=conn.prepareStatement(prop.getProperty("selectMemberAll"));
			pstmt.setInt(1, (cPage-1)*numPerpage+1);
			pstmt.setInt(2, cPage*numPerpage);
			rs=pstmt.executeQuery();
			while(rs.next()) {
				TotalInfo info = new TotalInfo();
				info.setUserId(rs.getString("user_Id"));
				info.setUserPwd(rs.getString("user_Pwd"));
				info.setUserName(rs.getString("user_Name"));
				info.setEmail(rs.getString("email"));
				info.setEmailSmsCk(rs.getInt("email_Sms_Ck"));
				info.setCellPhone(rs.getString("cellPhone"));
				info.setPhoneSmsCk(rs.getInt("phone_Sms_Ck"));
				info.setPhone(rs.getString("phone"));
				info.setJoinDate(rs.getDate("join_Date"));
				info.setRecentDate(rs.getDate("recent_Date"));
				info.setMileage(rs.getInt("mileage"));
				info.setSum(rs.getInt("sum"));
				list.add(info);
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
		return result;
	}

	
	
	
	
	
	
	
}
