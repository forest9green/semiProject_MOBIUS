package com.board.model.dao;

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
import java.sql.Date;

import com.board.model.vo.Board;

public class BoardDao {
	
	private Properties prop=new Properties();
	
	public BoardDao() {
		String path=BoardDao.class.getResource("/sql/board_sql.properties").getPath();
		try {
			prop.load(new FileReader(path));
		}catch(IOException e) {
			e.printStackTrace();
		}
	} 
	public List<Board> selectBoardList(Connection conn, int cPage, int numPerpage, String userId){
		PreparedStatement pstmt=null;
		ResultSet rs=null;
		List<Board> list=new ArrayList();
		try {
			pstmt=conn.prepareStatement(prop.getProperty("selectBoardList"));
			pstmt.setString(1, userId);
			pstmt.setInt(2, (cPage-1)*numPerpage+1);
			pstmt.setInt(3, cPage*numPerpage);
			rs=pstmt.executeQuery();
			while(rs.next()){
				Board b=new Board();
				b.setbNo(rs.getString("B_NO"));
				b.setbTitle(rs.getString("B_TITLE"));
				b.setUserId(rs.getString("USER_ID"));
				b.setbContent(rs.getString("B_CONTENT"));
				b.setbWriteDate(rs.getDate("B_WRITEDATE"));
				list.add(b);
			}
		}catch(SQLException e) {
			e.printStackTrace();
		}finally {
			close(rs);
			close(pstmt);
		}return list;
		
	}
	
	public int selectBoardCount(Connection conn, String userId) {
		PreparedStatement pstmt=null;
		ResultSet rs=null;
		int result=0;
		try {
			pstmt=conn.prepareStatement(prop.getProperty("selectBoardCount"));
			pstmt.setString(1,userId);
			rs=pstmt.executeQuery();
			if(rs.next()) result=rs.getInt(1);
		}catch(SQLException e) {
			e.printStackTrace();
		}finally {
			close(rs);
			close(pstmt);
		}return result;
	}
	
	public Board selectBoard(Connection conn, String bNo) {
		PreparedStatement pstmt=null;
		ResultSet rs=null;
		Board b=null;
		System.out.println(bNo);
		try {
			pstmt=conn.prepareStatement(prop.getProperty("selectBoard"));
			pstmt.setString(1, bNo);
			rs=pstmt.executeQuery();
			if(rs.next()) {
				b=new Board();
				b.setbNo(rs.getString("B_NO"));
				b.setbTitle(rs.getString("B_TITLE"));
				b.setUserId(rs.getString("USER_ID"));
				b.setbCategory(rs.getString("B_CATEGORY"));
				b.setbContent(rs.getString("B_CONTENT"));
				b.setbWriteDate(rs.getDate("B_WRITEDATE"));
				System.out.println(b);
			}
		}catch(SQLException e) {
			e.printStackTrace();
		}finally {
			close(rs);
			close(pstmt);
		}return b;
	}
	public int insertBoard(Connection conn, Board b, String userId) {
		PreparedStatement pstmt=null;
		int result=0;
		try {
			pstmt=conn.prepareStatement(prop.getProperty("insertBoard"));
			pstmt.setString(1, b.getbTitle());
			pstmt.setString(2, b.getbContent());
			pstmt.setString(3, b.getUserId());
			result = pstmt.executeUpdate();
		}catch(SQLException e) {
			e.printStackTrace();
		}finally {
			close(pstmt);
		}return result;
		
	}
	public int updateBoard(Connection conn, Board b, String userId) {
		PreparedStatement pstmt=null;
		int result=0;
		try {
			pstmt=conn.prepareStatement(prop.getProperty("updateBoard"));
			pstmt.setString(1, b.getbNo());
			pstmt.setString(2, b.getUserId());
			pstmt.setString(3, b.getbTitle());
			pstmt.setString(4, b.getbContent());
			pstmt.setString(5, b.getbCategory());
		}catch(SQLException e) {
			e.printStackTrace();
		}finally {
			close(pstmt);
		}return result;
	}
}

