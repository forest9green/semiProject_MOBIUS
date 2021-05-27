package com.board.model.service;

import static com.common.JDBCTemplate.close;
import static com.common.JDBCTemplate.commit;
import static com.common.JDBCTemplate.getConnection;
import static com.common.JDBCTemplate.rollback;

import java.sql.Connection;
import java.util.List;

import com.board.model.dao.BoardDao;
import com.board.model.vo.Board;

public class BoardService {
	
	private BoardDao dao=new BoardDao();
	
	public List<Board> selectBoardList(int cPage, int numPerpage, String userId){
		Connection conn=getConnection();
		List<Board> list=dao.selectBoardList(conn,cPage,numPerpage, userId);
		close(conn);
		return list;
	}
	
	public int selectBoardCount(String userId) {
		Connection conn=getConnection();
		int result=dao.selectBoardCount(conn, userId);
		close(conn);
		return result;
	}

	public Board selectBoard(String bNo) {
		Connection conn=getConnection();
		Board b=dao.selectBoard(conn, bNo);
		close(conn);
		return b;
	}
	public int insertBoard(Board b,  String userId) {
		Connection conn=getConnection();
		int result=dao.insertBoard(conn, b, userId);
		if(result>0) commit(conn);
		else rollback(conn);
		close(conn);
		return result;
	}
	public int updateBoard(Board b, String userId) {
		Connection conn=getConnection();
		int result=dao.updateBoard(conn, b, userId);
		if(result>0) commit(conn);
		close(conn);
		return result;
	}

	
	}



