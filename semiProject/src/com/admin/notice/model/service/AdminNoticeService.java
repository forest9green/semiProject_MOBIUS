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
	
	public Notice selectNotice(String NOTICE_NO) {
		Connection conn=getConnection();
		Notice n=dao.selectNotice(conn, NOTICE_NO);
		close(conn);
		return n;
		
	}

	public int insertNotice(Notice n) {
		Connection conn=getConnection();
		int result=dao.insertNotice(conn, n);
		
		if(result>0) commit(conn);
		else rollback(conn);
		
		close(conn);
		return result;
	}
	
	public int modifyNotice(Notice n) {
		Connection conn=getConnection();
		int result=dao.modifyNotice(conn, n);
		if(result>0) commit(conn);
		else rollback(conn);
		close(conn);
		return result;
	}
	
	public int deleteNotice(String noticeNo) {
		Connection conn = getConnection();
		int result = dao.deleteNotice(conn,noticeNo);
		if(result>0) commit(conn);
		else rollback(conn);
		close(conn);
		return result;
	}
	
}
