package com.notice.model.dao;

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

import com.notice.model.vo.Notice;

import oracle.net.aso.n;

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
				n.setnoticeNo(rs.getString("NOTICE_NO"));
				n.setnTitle(rs.getString("N_TITLE"));
				n.setnContent(rs.getString("N_CONTENT"));
				n.setnImgPath(rs.getString("N_IMGPATH"));
				n.setnDate(rs.getDate("N_DATE"));
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
			n.setnImgPath(rs.getString("N_IMGPATH"));
			n.setnDate(rs.getDate("N_DATE"));
		}
		
	}catch(SQLException e) {
		e.printStackTrace();
	}finally {
		close(rs);
		close(pstmt);
	}
	return n;			
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

public int insertNotice(Connection conn, Notice n) {
	
	PreparedStatement pstmt=null;
	int result=0;
	System.out.println(prop.getProperty("insertNotice"));
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
}
	










