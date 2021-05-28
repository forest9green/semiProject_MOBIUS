package com.admin.main.model.service;

import static com.common.JDBCTemplate.close;
import static com.common.JDBCTemplate.getConnection;

import java.sql.Connection;
import java.util.List;

import com.admin.main.model.dao.AdminMainDao;
import com.admin.main.vo.TotalInfo;
import com.user.model.vo.User;

public class AdminMainService {
	
	private AdminMainDao dao = new AdminMainDao();
	

	public List<TotalInfo> memberList(int cPage,int numPerpage){
		Connection conn = getConnection();
		List<TotalInfo> list = dao.memberList(conn,cPage,numPerpage);
		close(conn);
		return list;
		
	}
	
	
	public int selectUserCount() {
		Connection conn = getConnection();
		int result = dao.selectUserCount(conn);
		close(conn);
		return result;
	}
	
	
	
	
	
	
	
	
}
