package com.admin.board.model.service;

import static com.common.JDBCTemplate.close;
import static com.common.JDBCTemplate.getConnection;

import java.sql.Connection;
import java.util.List;

import com.admin.board.model.dao.AdminBoardDao;
import com.admin.board.model.vo.AdminBoard;

public class AdminBoardService {

	private AdminBoardDao dao=new AdminBoardDao();
	public List<AdminBoard> selectAdminBoardList(int cPage, int numPerpage) {
		Connection conn=getConnection();
		List<AdminBoard> list=dao.selectAdminBoardList(conn, cPage, numPerpage);
		close(conn);
		return list;
	}
	public int selectAdminBoardCount() {
		Connection conn=getConnection();
		int result=dao.selectAdminBoardCount(conn);
		close(conn);
		return result;
	}
}
