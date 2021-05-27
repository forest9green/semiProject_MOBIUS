package com.admin.model.service;

import static com.common.JDBCTemplate.getConnection;
import static com.common.JDBCTemplate.close;

import java.sql.Connection;
import java.util.List;

import com.admin.model.dao.AdminDao;
import com.notice.model.vo.Notice;
import static com.common.JDBCTemplate.commit;
import static com.common.JDBCTemplate.rollback;

public class AdminService {
	
	private AdminDao dao=new AdminDao();

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
