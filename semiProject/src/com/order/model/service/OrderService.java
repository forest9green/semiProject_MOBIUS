package com.order.model.service;

import static com.common.JDBCTemplate.close;
import static com.common.JDBCTemplate.getConnection;
import static com.common.JDBCTemplate.commit;
import static com.common.JDBCTemplate.rollback;

import java.sql.Connection;

import com.order.model.dao.OrderDao;
import com.order.model.vo.Order;

public class OrderService {
	
	private OrderDao dao=new OrderDao();
	
	
	public int insertOrder(Order o) {
		Connection conn=getConnection();
		int result=dao.insertOrder(conn,o);
		if(result>0) commit(conn);
		else rollback(conn);
		close(conn);
		return result;
	}
	
	
	public String selectOrderNo(String userId) {
		Connection conn=getConnection();
		String orderNo=dao.selectOrderNo(conn,userId);
		close(conn);
		return orderNo;
	}
	
	
	public int insertOrderDetail(String orderNo, String pCode, int amount) {
		Connection conn=getConnection();
		int result=dao.insertOrderDetail(conn,orderNo,pCode,amount);
		if(result>0) commit(conn);
		else rollback(conn);
		return result;
	}

}
