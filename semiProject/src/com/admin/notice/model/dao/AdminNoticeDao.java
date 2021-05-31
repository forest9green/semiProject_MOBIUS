package com.admin.notice.model.dao;

import static com.common.JDBCTemplate.close;

import java.io.FileReader;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.Properties;

import com.notice.model.dao.NoticeDao;
import com.notice.model.vo.Notice;

public class AdminNoticeDao {
private Properties prop=new Properties();
	
	public AdminNoticeDao() {
		String path=AdminNoticeDao.class.getResource("/sql/adminNotice_sql.properties").getPath();
		try {
			prop.load(new FileReader(path));
		}catch(IOException e) {
			e.printStackTrace();
		}
	}
	
	public List<Notice> selectNoticeList(Connection conn, int cPage, int numPerpage){
		PreparedStatement pstmt=null;
		ResultSet rs=null;
		List<Notice> list=new ArrayList<>();
		try {
			pstmt=conn.prepareStatement(prop.getProperty("selectNoticeList"));
			pstmt.setInt(1, (cPage-1)*numPerpage+1);
			pstmt.setInt(2, cPage*numPerpage);
			rs=pstmt.executeQuery();
			while(rs.next()) {
				Notice n=new Notice();
				n.setnoticeNo(rs.getString("notice_No"));
				n.setnTitle(rs.getString("n_Title"));
				n.setnContent(rs.getString("n_Content"));
				n.setnImgPath(rs.getString("n_ImgPath"));
				n.setnDate(rs.getDate("n_Date"));
				list.add(n);
			}
		}catch(SQLException e) {
			e.printStackTrace();
		}finally {
			close(rs);
			close(pstmt);
		}
		return list;
	}
	
	public int selectNoticeCount(Connection conn) {
		PreparedStatement pstmt=null;
		ResultSet rs=null;
		int result=0;
		try {
			pstmt=conn.prepareStatement(prop.getProperty("selectNoticeCount"));
			rs=pstmt.executeQuery();
			if(rs.next()) result=rs.getInt(1);
		}catch(SQLException e) {
			e.printStackTrace();
		}finally {
			close(rs);
			close(pstmt);
		}return result;
	}
	
	public Notice selectNotice(Connection conn, String noticeNo) {
		PreparedStatement pstmt=null;
		ResultSet rs=null;
		Notice n=null;
		try {
			pstmt=conn.prepareStatement(prop.getProperty("selectNotice"));
			pstmt.setString(1, noticeNo);
			rs=pstmt.executeQuery();
			if(rs.next()) {
				n=new Notice();
				n.setnoticeNo(rs.getString("NOTICE_NO"));
				n.setnTitle(rs.getString("N_TITLE"));
				n.setnContent(rs.getString("N_CONTENT"));
				n.setnDate(rs.getDate("N_DATE"));
				n.setnImgPath(rs.getString("N_IMGPATH"));
			}
		}catch(SQLException e) {
			e.printStackTrace();
		}finally {
			close(rs);
			close(pstmt);
		}return n;
	}
	
	public int insertNotice(Connection conn, Notice n) {
		PreparedStatement pstmt=null;
		int result=0;
		try {
			pstmt=conn.prepareStatement(prop.getProperty("insertNotice"));
			pstmt.setString(1, n.getnTitle());
			pstmt.setString(2, n.getnContent());
			pstmt.setString(3, n.getnImgPath());
//			pstmt.setDate(5, n.getnDate());
			result=pstmt.executeUpdate();
		}catch(SQLException e) {
			e.printStackTrace();
		}finally {
			close(pstmt);
		}return result;
	}
	
	public int modifyNotice(Connection conn, Notice n) {
		PreparedStatement pstmt=null;
		int result=0;
		try {
			pstmt=conn.prepareStatement(prop.getProperty("modifyNotice"));
			pstmt.setString(1, n.getnTitle());
			pstmt.setString(2, n.getnContent());
			pstmt.setString(3, n.getnImgPath());
//			pstmt.setDate(4, n.getnDate());
			result=pstmt.executeUpdate();
		}catch(SQLException e) {
			e.printStackTrace();
		}finally {
			close(pstmt);
		}return result;
	}
	
	public int deleteNotice(Connection conn, String noticeNo) {
		PreparedStatement pstmt=null;
		int result=0;
		
		try {
			pstmt = conn.prepareStatement(prop.getProperty("deleteNotice"));
			pstmt.setString(1, noticeNo);
			result = pstmt.executeUpdate();
		}catch(SQLException e) {
			e.printStackTrace();
		}finally {
			close(pstmt);
		}
		return result;
		
	}
	
}
