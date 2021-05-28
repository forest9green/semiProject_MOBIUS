package com.admin.notice.model.service;

import static com.common.JDBCTemplate.close;
import static com.common.JDBCTemplate.getConnection;

import java.sql.Connection;
import java.util.List;

import com.admin.notice.model.dao.AdminNoticeDao;
import com.notice.model.vo.Notice;

import static com.common.JDBCTemplate.commit;
import static com.common.JDBCTemplate.rollback;

public class AdminNoticeService {
	
	private AdminNoticeDao dao=new AdminNoticeDao();

	public List<Notice> selectNoticeList(int cPage, int numPerpage){
		Connection conn=getConnection();
		List<Notice> list=dao.selectNoticeList(conn,cPage,numPerpage);
		close(conn);
		return list;
	}
	
	public int selectNoticeCount() {
		Connection conn=getConnection();
		int result=dao.selectNoticeCount(conn);
		close(conn);
		return result;
	}

	
	
	
}
