package com.board.model.dao;

import static com.common.JDBCTemplate.close;

import java.io.FileReader;
import java.io.IOException;
import java.sql.Connection;
import java.sql.Date;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.Properties;

import com.board.model.vo.Board;

public class BoardDao {
	//사용할 객체 초기화
	private Connection conn=null;
	private PreparedStatement pstmt=null;
	private ResultSet rs=null;
	//데이터베이스 접속 설정 정보
	//jdbc driver 패키지 정보
	private final String JDBC_DRIVER="oracle.jdbc.driver.OracleDriver";
	//데이터베이스 url
	private final String DB_URL="jdbc:oracle:thin:@localhost:1521:xe";
	//데이터베이스 아이디
	private final String DB_ID="MOBIUS";
	//데이터베이스 비밀번호
	private final String DB_PWD="MOBIUS";
	private Properties prop= new Properties();

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
				b.setbNo(rs.getInt("board_no"));
				b.setUserId(rs.getString("user_id"));
				b.setbCategory(rs.getString("board_category"));
				b.setpCode(rs.getString("product_code"));
				b.setbTitle(rs.getString("board_title"));
				b.setbContent(rs.getString("board_content"));
				b.setbWriteDate(rs.getDate("board_writedate"));
				b.setbAnswer(rs.getString("board_answer"));
				b.setbAndate(rs.getDate("board_answerdate"));
				list.add(b);
			}
		}catch(SQLException e) {
			e.printStackTrace();
		}finally {
			close(rs, pstmt, conn);
		}return list;
		
	}
	/**
	 * 게시판 목록 조회
	 * @param board
	 * @return
	 */
	public List<Board> selectList(Board boardModel) {
		int pageNum =boardModel.getbNo();
		String searchType = boardModel.getbTitle();
		String searchText = boardModel.getbContent();
		String whereSQL = "";
		List<Board> boardList = null;
		try {
			// 검색어 쿼리문 생성
			if (!"".equals(searchText)) {
				if ("ALL".equals(searchType)) {
					whereSQL = " WHERE B_TITLE LIKE CONCAT('%',?,'%') OR B_CONTENT LIKE CONCAT('%',?,'%') ";
				} else if ("SUBJECT".equals(searchType)) {
					whereSQL = " WHERE B_TITLE LIKE CONCAT('%',?,'%') ";
				} else if ("CONTENTS".equals(searchType)) {
					whereSQL = " WHERE B_CONTENT LIKE CONCAT('%',?,'%') ";
				}
			}
			// 데이터베이스 객체 생성
			Class.forName(this.JDBC_DRIVER);
			this.conn = DriverManager.getConnection(this.DB_URL, this.DB_ID, this.DB_PWD);
			// 게시물 목록 조회
			this.pstmt = this.conn.prepareStatement("SELECT B_NO, B_TITLE, USER_ID, B_WRITEDATE, FROM BOARD "+whereSQL+" ORDER BY B_NO DESC LIMIT ?, ?");
			if (!"".equals(whereSQL)) {
				// 전체검색일시
				if ("ALL".equals(searchType)) {
					this.pstmt.setString(1, searchText);
					this.pstmt.setString(2, searchText);
					this.pstmt.setString(3, searchText);
//					this.pstmt.setInt(4, listCount * (pageNum-1));
//					this.pstmt.setInt(5, listCount);			
				} else {
					this.pstmt.setString(1, searchText);
//					this.pstmt.setInt(2, listCount * (pageNum-1));
//					this.pstmt.setInt(3, listCount);			
				}
			} else {	
//				this.pstmt.setInt(1, listCount * (pageNum-1));
//				this.pstmt.setInt(2, listCount);
			}
			// 조회
			this.rs = this.pstmt.executeQuery();
			boardList = new ArrayList<Board>();
			// LIST 객체에 담음
			while(this.rs.next()) {
				boardModel = new Board();
				boardModel.setbNo(rs.getInt("board_no"));
				boardModel.setUserId(rs.getString("user_id"));
				boardModel.setbCategory(rs.getString("board_category"));
				boardModel.setpCode(rs.getString("product_code"));
				boardModel.setbTitle(rs.getString("board_title"));
				boardModel.setbContent(rs.getString("board_content"));
				boardModel.setbWriteDate(rs.getDate("board_writedate"));
				boardModel.setbAnswer(rs.getString("board_answer"));
				boardModel.setbAndate(rs.getDate("board_answerdate"));
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			// 사용한 객체 종료
			close(this.rs, this.pstmt, this.conn);
		}
		return boardList;
	}
	
	
	
	/**
	 * 게시판 상세 조회
	 * @param boardModel
	 * @return
	 */
	public Board select(Board boardModel) {
		try {
			// 데이터베이스 객체 생성
			Class.forName(this.JDBC_DRIVER);
			this.conn = DriverManager.getConnection(this.DB_URL, this.DB_ID, this.DB_PWD);
			// 게시물 상세 조회 쿼리 실행 
			this.pstmt = this.conn.prepareStatement(
				"SELECT B_NO, B_ID, B_CATEGORY, P_CODE, B_TITLE, B_CONTENT, B_WRITEDATE, B_ANSWER, B_ANDATE FROM BOARD "+ 
				"WHERE NUM = ?");
			this.pstmt.setInt(1, boardModel.getbNo());
			this.rs = this.pstmt.executeQuery();
			// 값이 존재한다면 
			if (this.rs.next()) {
				boardModel.setbNo(rs.getInt("board_no"));
				boardModel.setUserId(rs.getString("user_id"));
				boardModel.setbCategory(rs.getString("board_category"));
				boardModel.setpCode(rs.getString("product_code"));
				boardModel.setbTitle(rs.getString("board_title"));
				boardModel.setbContent(rs.getString("board_content"));
				boardModel.setbWriteDate(rs.getDate("board_writedate"));
				boardModel.setbAnswer(rs.getString("board_answer"));
				boardModel.setbAndate(rs.getDate("board_answerdate"));
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			// 사용한 객체 종료
			close(this.rs, this.pstmt, this.conn);
		}
		return boardModel;
	}
	
	/**
	 * 게시판 등록 처리
	 * @param boardModel
	 */
	public void insert(Board boardModel) {
		try {
			// 데이터베이스 객체 생성
			Class.forName(this.JDBC_DRIVER);
			this.conn = DriverManager.getConnection(this.DB_URL, this.DB_ID, this.DB_PWD);
			this.pstmt = this.conn.prepareStatement(
				"INSERT INTO BOARD (B_TITLE, B_CONTENT, B_WRITEDATE, B_ANSWER, B_ANDATE) "+
				"VALUES (?, ?, NOW(), ?, NOW())");
			this.pstmt.setString(1, boardModel.getbTitle());
			this.pstmt.setString(2, boardModel.getbContent());
			this.pstmt.setDate(3, (Date) boardModel.getbWriteDate());
			this.pstmt.setString(4, boardModel.getbAnswer());
			this.pstmt.setDate(5, (Date) boardModel.getbAndate());
			this.pstmt.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			// 사용한 객체 종료
			close(null, this.pstmt, this.conn);
		}
	}
	
	/**
	 * 게시판 수정 처리
	 * @param boardModel
	 */
	public void update(Board boardModel) {
		try {
			// 데이터베이스 객체 생성
			Class.forName(this.JDBC_DRIVER);
			this.conn = DriverManager.getConnection(this.DB_URL, this.DB_ID, this.DB_PWD);
			this.pstmt = this.conn.prepareStatement(
				"UPDATE BOARD SET B_TITLE = ?, B_CONTENT = ?, B_WRITEDATE = ?, B_ANSWER = ? "+
				"WHERE B_NO = ?");
			this.pstmt.setString(1, boardModel.getbTitle());
			this.pstmt.setString(2, boardModel.getbContent());
			this.pstmt.setDate(3, (Date) boardModel.getbWriteDate());
			this.pstmt.setString(4, boardModel.getbAnswer());
			this.pstmt.setDate(5, (Date) boardModel.getbAndate());
			this.pstmt.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			// 사용한 객체 종료
			close(null, this.pstmt, this.conn);
		}
	}
	
	
	/**
	 * 게시판 삭제 처리
	 * @param boardModel
	 */
	public void delete(Board boardModel) {
		try {
			// 데이터베이스 객체 생성
			Class.forName(this.JDBC_DRIVER);
			this.conn = DriverManager.getConnection(this.DB_URL, this.DB_ID, this.DB_PWD);
			// 조회수 증가 쿼리 실행
			this.pstmt = this.conn.prepareStatement("DELETE FROM BOARD WHERE B_NO = ?");
			this.pstmt.setInt(1, boardModel.getbNo());
			this.pstmt.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			// 사용한 객체 종료
			close(null, this.pstmt, this.conn);
		}
	}
	
	/**
	 * 사용한 객체를 닫음
	 * @param rs
	 * @param pstmt
	 * @param conn
	 */
	public void close(ResultSet rs, PreparedStatement pstmt, Connection conn) {
		if (rs != null) {
			try {
				rs.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
		if (pstmt != null) {
			try {
				pstmt.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
		if (conn != null) {
			try {
				conn.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
	}

}



