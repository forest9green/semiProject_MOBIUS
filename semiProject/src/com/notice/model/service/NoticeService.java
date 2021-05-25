package com.notice.model.service;

import static com.common.JDBCTemplate.getConnection;
import static com.common.JDBCTemplate.close;

import java.sql.Connection;
import java.util.List;

import com.notice.model.vo.Notice;
import com.notice.model.dao.NoticeDao;
import static com.common.JDBCTemplate.commit;
import static com.common.JDBCTemplate.rollback;

public class NoticeService {
	
	private NoticeDao dao=new NoticeDao();
	
	public List<Notice> selectNoticeList(){
		Connection conn=getConnection();
		List<Notice> list = dao.selectNoticeList(conn);
		close(conn);
		return list;
		
	
	}

}
