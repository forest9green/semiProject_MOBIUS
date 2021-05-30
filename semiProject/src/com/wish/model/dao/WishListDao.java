package com.wish.model.dao;

import static com.common.JDBCTemplate.close;

import java.io.FileReader;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.Properties;

import com.wish.model.vo.WishList;

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

}
