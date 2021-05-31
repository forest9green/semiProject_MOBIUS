package com.coupon.model.dao;

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

import com.coupon.model.vo.Coupon;

public class CouponDao {
	
private Properties prop=new Properties();
	
	
	public CouponDao() {
		String path=CouponDao.class.getResource("/sql/coupon_sql.properties").getPath();
		try {
			prop.load(new FileReader(path));
		} catch (IOException e) {
			e.printStackTrace();
		}
	}
	
	
	public List<Coupon> selectCouponList(Connection conn, String userId, int cPage, int numPerPage){
		PreparedStatement pstmt=null;
		ResultSet rs=null;
		List<Coupon> list=new ArrayList<>();
		
		try {
			pstmt=conn.prepareStatement(prop.getProperty("selectCouponList"));
			pstmt.setString(1, userId);
			pstmt.setInt(2, (cPage-1)*numPerPage+1);
			pstmt.setInt(3, cPage*numPerPage);
			
			rs=pstmt.executeQuery();
			while(rs.next()) {
				Coupon c=new Coupon();
				c.setcNo(rs.getString("c_no"));
				c.setUserId(rs.getString("user_id"));
				c.setcName(rs.getString("c_name"));
				c.setcDiscount(rs.getDouble("c_discount"));
				c.setcIssueDate(rs.getDate("c_issue_date"));
				c.setcFinishDate(rs.getDate("c_finish_date"));
				c.setcLimit(rs.getInt("c_limit"));
				c.setcUse(rs.getInt("c_use"));
				list.add(c);
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			close(pstmt);
			close(rs);
		}
		
		return list;
	}
	
	
	public int selectCouponCount(Connection conn, String userId) {
		PreparedStatement pstmt=null;
		ResultSet rs=null;
		int result=0;
		
		try {
			pstmt=conn.prepareStatement(prop.getProperty("selectCouponCount"));
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
