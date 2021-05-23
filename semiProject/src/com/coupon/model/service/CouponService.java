package com.coupon.model.service;

import static com.common.JDBCTemplate.close;
import static com.common.JDBCTemplate.getConnection;

import java.sql.Connection;
import java.util.List;

import com.coupon.model.dao.CouponDao;
import com.coupon.model.vo.Coupon;

public class CouponService {
	
private CouponDao dao=new CouponDao();
	
	
	public List<Coupon> selectCouponList(String userId, int cPage, int numPerPage){
		Connection conn=getConnection();
		List<Coupon> list=dao.selectCouponList(conn,userId,cPage,numPerPage);
		close(conn);
		return list;
	}
	
	
	public int selectCouponCount(String userId) {
		Connection conn=getConnection();
		int result=dao.selectCouponCount(conn,userId);
		close(conn);
		return result;
	}

}
