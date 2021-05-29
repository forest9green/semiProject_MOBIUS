package com.admin.main.model.service;

import static com.common.JDBCTemplate.close;
import static com.common.JDBCTemplate.getConnection;

import java.sql.Connection;
import java.util.List;

import com.admin.main.model.dao.AdminMainDao;
import com.admin.main.model.vo.AdminMainInfo;
import com.board.model.vo.Board;
import com.order.model.vo.Order;

public class AdminMainService {

	private AdminMainDao dao = new AdminMainDao();
	
	public List<AdminMainInfo> ProductList(){
		Connection conn = getConnection();
		List<AdminMainInfo> plist = dao.ProductList(conn);
		close(conn);
		return plist;
	}
	
	public List<Order> OrderList(){
		Connection conn = getConnection();
		List<Order> olist = dao.OrderList(conn);
		close(conn);
		return olist;
	}
	
	public List<Board> BoardList(){
		Connection conn = getConnection();
		List<Board> blist = dao.BoardList(conn);
		close(conn);
		return blist;
	}
	
	
	
	
	
}
