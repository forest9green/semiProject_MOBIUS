package com.admin.user.model.service;

import static com.common.JDBCTemplate.close;
import static com.common.JDBCTemplate.commit;
import static com.common.JDBCTemplate.getConnection;
import static com.common.JDBCTemplate.rollback;

import java.sql.Connection;
import java.util.List;

import com.admin.user.model.dao.AdminUserDao;
import com.admin.user.model.vo.AdminMileage;
import com.admin.user.model.vo.AdminOrder;
import com.admin.user.model.vo.AdminOrderInfo;
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
	
	public int insertCoupon(String userId, String cName,double cDiscount,int cFinishDate,int cLimit) {
		Connection conn = getConnection();
		int result = dao.insertCoupon(conn,userId,cName,cDiscount,cFinishDate,cLimit);
		if(result>0) commit(conn);
		else rollback(conn);
		close(conn);
		return result;
		
	}
	
	public List<AdminMileage> AdminMileageList(String userId){
		Connection conn = getConnection();
		List<AdminMileage> list = dao.AdminMileageList(conn,userId);
		close(conn);
		return list;
	}
	
	public List<AdminOrder> orderList(int cPage, int numPerpage, String userId){
		Connection conn = getConnection();
		List<AdminOrder> list = dao.orderList(conn,cPage,numPerpage,userId);
		close(conn);
		return list;
	}
	
	public int selectOrderCount(String userId) {
		Connection conn = getConnection();
		int result = dao.selectOrderCount(conn,userId);
		close(conn);
		return result;
	}
	
	public AdminOrderInfo adminOrderInfo(String orderNo) {
		Connection conn = getConnection();
		AdminOrderInfo aoi = dao.adminOrderInfo(conn,orderNo);
		close(conn);
		return aoi;
		
	}
	
	
	public int updateOstate(String orderNo, String oState) {
		Connection conn = getConnection();
		int result = dao.updateOstate(conn,orderNo,oState);
		if(result>0) commit(conn);
		else rollback(conn);
		close(conn);
		return result;
	}
	
	
	
	
}
