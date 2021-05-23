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
	public List<Board> selectBoardList(Connection conn, int cPage, int numPerpage){
		PreparedStatement pstmt=null;
		ResultSet rs=null;
		List<Board> list=new ArrayList();
		try {
			pstmt=conn.prepareStatement(prop.getProperty("selectBoardList"));
			pstmt.setInt(1, (cPage-1)*numPerpage+1);
			pstmt.setInt(2, cPage*numPerpage);
			rs=pstmt.executeQuery();
			while(rs.next()){
				Board b=new Board();
				b.setbNo(rs.getString("board_no"));
				b.setbTitle(rs.getString("board_title"));
				b.setUserId(rs.getString("board_writer"));
				b.setbContent(rs.getString("board_content"));
				b.setbWriteDate(rs.getDate("board_date"));
				list.add(b);
			}
		}catch(SQLException e) {
			e.printStackTrace();
		}finally {
			close(rs);
			close(pstmt);
		}return list;
		
	}
	
	public int selectBoardCount(Connection conn) {
		PreparedStatement pstmt=null;
		ResultSet rs=null;
		int result=0;
		try {
			pstmt=conn.prepareStatement(prop.getProperty("selectBoardCount"));
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
		try {
			pstmt=conn.prepareStatement(prop.getProperty("selectBoard"));
			pstmt.setString(1, bNo);
			rs=pstmt.executeQuery();
			if(rs.next()) {
				b=new Board();
				b.setbNo(rs.getString("bNo"));
				b.setbTitle(rs.getString("bTitle"));
				b.setUserId(rs.getString("userId"));
				b.setbContent(rs.getString("bContent"));
				b.setbWriteDate(rs.getDate("bWriteDate"));
			}
		}catch(SQLException e) {
			e.printStackTrace();
		}finally {
			close(rs);
			close(pstmt);
		}return b;
	}
	public int insertBoard(Connection conn, Board b) {
		PreparedStatement pstmt=null;
		int result=0;
		try {
			pstmt=conn.prepareStatement(prop.getProperty("insertBoard"));
			pstmt.setString(1, b.getbTitle());
			pstmt.setString(2, b.getUserId());
			pstmt.setString(3, b.getbContent());
			result=pstmt.executeUpdate();
		}catch(SQLException e) {
			e.printStackTrace();
		}finally {
			close(pstmt);
		}return result;
		
	}
}
