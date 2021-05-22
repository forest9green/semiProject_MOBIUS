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
	
	public List<Board> selectBoardList(int cPage, int numPerpage){
		Connection conn=getConnection();
		List<Board> list=dao.selectBoardList(conn,cPage,numPerpage);
		close(conn);
		return list;
	}
	
	public List<Board> searchBoard(String searchType, String bTitle){
		Connection conn=getConnection();
		List<Board> list=dao.selectBoardList(conn, searchType,bTitle);
		close(conn);
		return list;
	}
	
	public int insertBoard(Board boardModel) {
		Connection conn=getConnection();
		int result=dao.insertBoard(boardModel);
		if(result>0) commit(conn);
		else rollback(conn);
		close(conn);
		return result;
	}
	
	public int insertBoardComment(BoardComment bc) {
		Connection conn=getConnection();
		int result=dao.insertBoardComment(conn,bc);
		if(result>0) commit(conn);
		else rollback(conn);
		close(conn);
		return result;
	}
	
	
	public List<BoardComment> selectBoardComment(int boardRef){
		Connection conn=getConnection();
		List<BoardComment> list=dao.selectBoardComment(conn,boardRef);
		close(conn);
		return list;
	}
	
}
