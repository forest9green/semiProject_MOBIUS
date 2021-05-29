package com.admin.user.model.service;

import static com.common.JDBCTemplate.close;
import static com.common.JDBCTemplate.getConnection;

import java.sql.Connection;
import java.util.List;

import com.admin.user.model.dao.AdminUserDao;
import com.admin.user.model.vo.AdminUserInfo;
import com.admin.user.model.vo.TotalInfo;
import com.coupon.model.vo.Coupon;

public class AdminUserService {
	
	private AdminUserDao dao = new AdminUserDao();
	

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
	
	
	public AdminUserInfo UserInfo(String userId) {
		Connection conn= getConnection();
		AdminUserInfo user = dao.UserInfo(conn,userId);
		close(conn);
		return user;
	}
	
	public List<Coupon> CouponList(String userId){
		Connection conn = getConnection();
		List<Coupon> clist = dao.CouponList(conn,userId);
		close(conn);
		return clist;
	}
	
	
	
}
