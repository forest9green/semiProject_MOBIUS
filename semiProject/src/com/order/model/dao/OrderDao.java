package com.order.model.dao;

import static com.common.JDBCTemplate.close;

import java.io.FileReader;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Properties;

import com.order.model.vo.Order;

public class OrderDao {
	
	private Properties prop=new Properties();
	
	
	public OrderDao() {
		String path=OrderDao.class.getResource("/sql/order_sql.properties").getPath();
		try {
			prop.load(new FileReader(path));
		} catch (IOException e) {
			e.printStackTrace();
		}
	}
	
	
	public int insertOrder(Connection conn, Order o) {
		PreparedStatement pstmt=null;
		int result=0;
		
		SimpleDateFormat format1=new SimpleDateFormat("yyyyMMdd");
		String today=format1.format(Calendar.getInstance().getTime());
		
		try {
			pstmt=conn.prepareStatement(prop.getProperty("insertOrder"));
			pstmt.setString(1, today);
			pstmt.setString(2, o.getUserId());
			pstmt.setString(3, o.getAddrNo());
			pstmt.setString(4, o.getOrderMemo());
			pstmt.setInt(5, o.getoTotal());
			pstmt.setInt(6, o.getoDelivery());
			pstmt.setInt(7, o.getoDiscount());
			pstmt.setInt(8, o.getoPayment());
			pstmt.setString(9, o.getoPaymethod());
			
			result=pstmt.executeUpdate();
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(pstmt);
		}
		
		return result;
	}
	
	
	public String selectOrderNo(Connection conn, String userId) {
		PreparedStatement pstmt=null;
		ResultSet rs=null;
		String orderNo=null;
		
		try {
			pstmt=conn.prepareStatement(prop.getProperty("selectOrderNo"));
			pstmt.setString(1, userId);
			
			rs=pstmt.executeQuery();
			if(rs.next()) orderNo=rs.getString(1);
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(pstmt);
			close(rs);
		}
		
		return orderNo;
	}
	
	
	public int insertOrderDetail(Connection conn, String orderNo, String pCode, int amount) {
		PreparedStatement pstmt=null;
		int result=0;
		
		try {
			pstmt=conn.prepareStatement(prop.getProperty("insertOrderDetail"));
			pstmt.setString(1, orderNo);
			
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		return result;
	}

}
