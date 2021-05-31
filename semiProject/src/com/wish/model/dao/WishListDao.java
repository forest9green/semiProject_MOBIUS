package com.wish.model.dao;

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

import com.wish.model.vo.WishList;
import com.wish.model.vo.WishProduct;

public class WishListDao {
	
	private Properties prop=new Properties();
	
	
	public WishListDao() {
		String path=WishListDao.class.getResource("/sql/wishList_sql.properties").getPath();
		try {
			prop.load(new FileReader(path));
		} catch (IOException e) {
			e.printStackTrace();
		}
	}
	
	
	public int addWish(Connection conn, WishList w) {
		PreparedStatement pstmt=null;
		int result=0;
		
		try {
			pstmt=conn.prepareStatement(prop.getProperty("addWish"));
			pstmt.setString(1, w.getUserId());
			pstmt.setString(2, w.getpCode());
			
			result=pstmt.executeUpdate();
			
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			close(pstmt);
		}
		
		return result;
	}
	
	
	public List<WishProduct> selectWish(Connection conn, String userId){
		PreparedStatement pstmt=null;
		ResultSet rs=null;
		List<WishProduct> list=new ArrayList<>();
		
		try {
			pstmt=conn.prepareStatement(prop.getProperty("selectWish"));
			pstmt.setString(1, userId);
			
			rs=pstmt.executeQuery();
			while(rs.next()) {
				WishProduct wp=new WishProduct();
				wp.setUserId(rs.getString("user_id"));
				wp.setpCode(rs.getString("p_code"));
				wp.setpName(rs.getString("p_name"));
				wp.setPrice(rs.getInt("price"));
				
				list.add(wp);
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(pstmt);
			close(rs);
		}
		
		return list;
	}
	
	
	public int selectWishCount(Connection conn, String userId) {
		PreparedStatement pstmt=null;
		ResultSet rs=null;
		int result=0;
		
		try {
			pstmt=conn.prepareStatement(prop.getProperty("selectWishCount"));
			pstmt.setString(1, userId);
			
			rs=pstmt.executeQuery();
			if(rs.next()) result=rs.getInt(1);
			
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			close(rs);
			close(pstmt);
		}
		
		return result;
	}

}
