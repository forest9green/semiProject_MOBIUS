package com.notice.model.dao;

import java.io.FileReader;
import java.io.IOException;
import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.Properties;

import com.notice.model.vo.Notice;
import static com.common.JDBCTemplate.close;

public class NoticeDao {
		
	private Properties prop=new Properties();
		
	public NoticeDao() {
		String path=NoticeDao.class.getResource("/sql/notice_sql.properties").getPath();
		try {
			prop.load(new FileReader(path));
		}catch(IOException e) {
			e.printStackTrace();
		 }
	}
	
	public List<Notice> selectNoticeList(Connection conn) {
		PreparedStatement pstmt=null;
		ResultSet rs=null;
		List<Notice> list=new ArrayList<>();
		
		
		try {
			pstmt=conn.prepareStatement(prop.getProperty("selectNoticeList"));
			
			rs=pstmt.executeQuery();
			while(rs.next()) {
				Notice n=new Notice();
				n.setNotice_No(rs.getInt("notice_No"));
				n.setN_Title(rs.getString("n_Title"));
				n.setN_Content(rs.getString("n_Content"));
				n.setN_ImgPath(rs.getString("n_ImgPath"));
				n.setN_Date(rs.getDate("n_Date"));
				list.add(n);
			}
		} catch(SQLException e) {
			e.printStackTrace();
		} finally {
		  close(pstmt);
		  close(rs);
		}
		return list;
		
}


public int selectNotice(Connection conn, int notice_No) {
	PreparedStatement pstmt=null;
	ResultSet rs=null;
	int result=0;
	
	try {
		pstmt=conn.prepareStatement(prop.getProperty("selectNotice"));
		pstmt.setInt(1, notice_No);
		rs=pstmt.executeQuery();
		if(rs.next()) result=rs.getInt(1);
		
	}catch(SQLException e) {
		e.printStackTrace();
	}finally {
		close(rs);
		close(pstmt);
	}
	return result;			
	}

public int insertNotice(Connection conn,Notice n) {
	PreparedStatement pstmt=null;
	int result=0;
	try {
		pstmt=conn.prepareStatement(prop.getProperty("insertNotice"));
		pstmt.setString(1, n.getN_Title());
		pstmt.setString(2, n.getN_Content());
		pstmt.setDate(3, (Date) n.getN_Date());
		pstmt.setString(4, n.getN_ImgPath());
		result=pstmt.executeUpdate();
	}catch(SQLException e) {
		e.printStackTrace();
	}finally {
		close(pstmt);
	}return result;
}

public int noticeUpdate(Connection conn,Notice n) {
	PreparedStatement pstmt=null;
	int result=0;
	try {
		pstmt=conn.prepareStatement(prop.getProperty("noticeUpdate"));
		pstmt.setInt(1, n.getNotice_No());
		pstmt.setString(2, n.getN_Title());
		pstmt.setString(3, n.getN_Content());
		pstmt.setDate(4, (Date) n.getN_Date());
		pstmt.setString(5, n.getN_ImgPath());
		result=pstmt.executeUpdate();
	}catch(SQLException e) {
		e.printStackTrace();
	}finally {
		close(pstmt);
	}return result;
}





}








