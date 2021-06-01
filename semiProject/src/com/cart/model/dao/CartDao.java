package com.cart.model.dao;

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

import com.cart.model.vo.Cart;
import com.cart.model.vo.CartProduct;
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
	
	
	public List<CartProduct> selectCart(Connection conn, String userId){
		PreparedStatement pstmt=null;
		ResultSet rs=null;
		List<CartProduct> list=new ArrayList<>();
		
		try {
			pstmt=conn.prepareStatement(prop.getProperty("selectCart"));
			pstmt.setString(1, userId);
			
			rs=pstmt.executeQuery();
			while(rs.next()) {
				CartProduct cp=new CartProduct();
				cp.setUserId(rs.getString("user_id"));
				cp.setpCode(rs.getString("p_code"));
				cp.setAmount(rs.getInt("amount"));
				cp.setpName(rs.getString("p_name"));
				cp.setPrice(rs.getInt("price"));
				cp.setDeliveryFee(rs.getInt("delivery_fee"));
				
				list.add(cp);
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(pstmt);
			close(rs);
		}
		
		return list;
	}
	
	
	public CartProduct selectCart(Connection conn, String userId, String pCode){
		PreparedStatement pstmt=null;
		ResultSet rs=null;
		CartProduct cp=null;
		
		try {
			pstmt=conn.prepareStatement(prop.getProperty("selectCartOne"));
			pstmt.setString(1, userId);
			pstmt.setString(2, pCode);
			
			rs=pstmt.executeQuery();
			if(rs.next()) {
				cp=new CartProduct();
				cp.setUserId(rs.getString("user_id"));
				cp.setpCode(rs.getString("p_code"));
				cp.setAmount(rs.getInt("amount"));
				cp.setpName(rs.getString("p_name"));
				cp.setPrice(rs.getInt("price"));
				cp.setDeliveryFee(rs.getInt("delivery_fee"));
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(pstmt);
			close(rs);
		}
		
		return cp;
	}
	
	
	public int changeAmount(Connection conn, Cart c) {
		PreparedStatement pstmt=null;
		int result=0;
		
		try {
			pstmt=conn.prepareStatement(prop.getProperty("changeAmount"));
			pstmt.setInt(1, c.getAmount());
			pstmt.setString(2, c.getUserId());
			pstmt.setString(3, c.getpCode());
			
			result=pstmt.executeUpdate();
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(pstmt);
		}
		
		return result;
	}
	
	
	public int deleteCart(Connection conn, WishList c) {
		PreparedStatement pstmt=null;
		int result=0;
		
		try {
			pstmt=conn.prepareStatement(prop.getProperty("deleteCart"));
			pstmt.setString(1, c.getUserId());
			pstmt.setString(2, c.getpCode());
			
			result=pstmt.executeUpdate();
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(pstmt);
		}
		
		return result;
	}

}
