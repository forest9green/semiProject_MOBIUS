package com.admin.main.model.dao;

import static com.common.JDBCTemplate.close;

import java.io.FileReader;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.Properties;

import com.admin.main.model.vo.AdminMainInfo;
import com.admin.user.model.dao.AdminUserDao;
import com.board.model.vo.Board;
import com.order.model.vo.Order;

public class AdminMainDao {
	
	private Properties prop = new Properties();
	
	public AdminMainDao() {
		String path=AdminUserDao.class.getResource("/sql/adminMain_sql.properties").getPath();
		try {
			prop.load(new FileReader(path));
		}catch(IOException e) {
			e.printStackTrace();
		}
	}
	
	public List<AdminMainInfo> ProductList(Connection conn){
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		List<AdminMainInfo> plist = new ArrayList();
		int num1 = 1;
		int num2 = 5;
		try {
			pstmt = conn.prepareStatement(prop.getProperty("productAll"));
			pstmt.setInt(1, num1);
			pstmt.setInt(2, num2);
			rs=pstmt.executeQuery();
			while(rs.next()) {
				AdminMainInfo info=new AdminMainInfo();
				info.setrNum(rs.getInt("rnum"));
				info.setCateCode(rs.getString("cate_code"));
				info.setpCode(rs.getString("p_code"));
				info.setPrice(rs.getInt("price"));
				info.setStock(rs.getInt("stock"));
				info.setpEnrollDate(rs.getDate("p_enroll_date"));
				info.setDeliveryFee(rs.getInt("delivery_fee"));
				info.setSize(rs.getString("size"));
				info.setpName(rs.getString("p_name"));
				info.setCategory(rs.getString("category"));
				plist.add(info);
				
			}
		}catch(SQLException e) {
			e.printStackTrace();
		}finally {
			close(rs);
			close(pstmt);
		}
		return plist;
	}
	
	public List<Order> OrderList(Connection conn){
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		List<Order> olist = new ArrayList();
		int num1 = 1;
		int num2 = 5;
		try {
			pstmt = conn.prepareStatement(prop.getProperty("orderToday"));
			pstmt.setInt(1, num1);
			pstmt.setInt(2, num2);
			rs=pstmt.executeQuery();
			while(rs.next()) {
				Order o = new Order();
				o.setOrderNo(rs.getString("order_no"));
				o.setUserId(rs.getString("user_id"));
				o.setAddrNo(rs.getInt("addr_no"));
				o.setOrderMemo(rs.getString("order_memo"));
				o.setoTotal(rs.getInt("o_total"));
				o.setoDelivery(rs.getInt("o_delivery"));
				o.setoDiscount(rs.getInt("o_discount"));
				o.setoPayment(rs.getInt("o_payment"));
				o.setoPaymethod(rs.getString("o_paymethod"));
				o.setOrderDate(rs.getDate("order_date"));
				o.setoPaystate(rs.getString("o_paystate"));
				olist.add(o);
			}
				
		}catch(SQLException e) {
			e.printStackTrace();
		}finally {
			close(rs);
			close(pstmt);
		}
		return olist;
	}
	
	public List<Board> BoardList(Connection conn){
		PreparedStatement pstmt=null;
		ResultSet rs = null;
		List<Board> blist = new ArrayList();
		int num1 = 1;
		int num2 = 5;
		try {
			pstmt=conn.prepareStatement(prop.getProperty("boardToday"));
			pstmt.setInt(1, num1);
			pstmt.setInt(2, num2);
			rs=pstmt.executeQuery();
			while(rs.next()) {
				Board b = new Board();
				b.setbNo(rs.getString("b_no"));
				b.setUserId(rs.getString("user_Id"));
				b.setpCode(rs.getString("p_code"));
				b.setbCategory(rs.getString("b_category"));
				b.setbTitle(rs.getString("b_title"));
				b.setbContent(rs.getString("b_content"));
				b.setbWriteDate(rs.getDate("b_writedate"));
				b.setbAnswer(rs.getString("b_answer"));
				b.setbAndate(rs.getDate("b_andate"));
				blist.add(b);
			}
		}catch(SQLException e) {
			e.printStackTrace();
		}finally {
			close(rs);
			close(pstmt);
		}
		return blist;
	}
	
	
}
