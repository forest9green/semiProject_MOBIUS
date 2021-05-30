package com.cart.model.dao;

import static com.common.JDBCTemplate.close;

import java.io.FileReader;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Properties;

import com.cart.model.vo.Cart;
import com.wish.model.vo.WishList;

public class CartDao {
	
	private Properties prop=new Properties();
	
	
	public CartDao() {
		String path=CartDao.class.getResource("/sql/cart_sql.properties").getPath();
		try {
			prop.load(new FileReader(path));
		} catch(IOException e) {
			e.printStackTrace();
		}
	}
	
	
	public Cart checkCart(Connection conn, WishList cart) {
		PreparedStatement pstmt=null;
		ResultSet rs=null;
		Cart c=null;
		
		try {
			pstmt=conn.prepareStatement(prop.getProperty("checkCart"));
			pstmt.setString(1, cart.getUserId());
			pstmt.setString(2, cart.getpCode());
			
			rs=pstmt.executeQuery();
			if(rs.next()) {
				c=new Cart();
				c.setUserId(rs.getString("user_id"));
				c.setpCode(rs.getString("p_code"));
				c.setAmount(rs.getInt("amount"));
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(pstmt);
			close(rs);
		}
		
		return c;
	}
	
	
	public int addCartAmount(Connection conn, WishList cart) {
		PreparedStatement pstmt=null;
		int result=0;
		
		try {
			pstmt=conn.prepareStatement(prop.getProperty("addCartAmount"));
			pstmt.setString(1, cart.getUserId());
			pstmt.setString(2, cart.getpCode());
			
			result=pstmt.executeUpdate();
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(pstmt);
		}
		
		return result;
	}
	
	
	public int addCart(Connection conn, WishList cart) {
		PreparedStatement pstmt=null;
		int result=0;
		
		try {
			pstmt=conn.prepareStatement(prop.getProperty("addCart"));
			pstmt.setString(1, cart.getUserId());
			pstmt.setString(2, cart.getpCode());
			
			result=pstmt.executeUpdate();
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(pstmt);
		}
		
		return result;
	}

}
