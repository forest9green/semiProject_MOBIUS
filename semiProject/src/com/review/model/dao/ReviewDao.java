package com.review.model.dao;

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

import com.review.model.vo.Review;

public class ReviewDao {
	
	private Properties prop= new Properties();
	
	public ReviewDao() {
		String path=ReviewDao.class.getResource("/sql/Review_sql.properties").getPath();
		try {
			prop.load(new FileReader(path));
		}catch(IOException e){
			e.printStackTrace();
		}
	}
	public List<Review> selectReviewList(Connection conn, int cPage, int numPerpage){
		PreparedStatement pstmt= null;
		ResultSet rs=null;
		List<Review> list=new ArrayList();
		try {
			pstmt=conn.prepareStatement(prop.getProperty("selectReviewList"));
			pstmt.setInt(1, (cPage -1)*numPerpage+1);
			pstmt.setInt(2, cPage*numPerpage);
			rs=pstmt.executeQuery();
			while(rs.next()) {
				Review r=new Review();
				r.setOrderNo(rs.getString("review_no"));
				r.setrTitle(rs.getString("review_title"));
				r.setrStar(rs.getInt("review_star"));
				r.setrDate(rs.getDate("review_date"));
				list.add(r);
			}
		}catch(SQLException e){
			e.printStackTrace();
		}finally {
			close(rs);
			close(pstmt);
		}return list;
	
	
		}
	public int selectReviewCount(Connection conn) {
		PreparedStatement pstmt= null;
		ResultSet rs=null;
		int result=0;
		try {
			pstmt=conn.prepareStatement(prop.getProperty("selectReivewCount"));
			rs=pstmt.executeQuery();
			if(rs.next()) result=rs.getInt(1);
		}catch(SQLException e) {
			e.printStackTrace();
		}finally {
			close(rs);
			close(pstmt);
		}return result;
	}
	public Review selectReview(Connection conn, int reviewNo) {
		PreparedStatement pstmt=null;
		ResultSet rs=null;
		Review r= null;
		try {
			pstmt=conn.prepareStatement(prop.getProperty("selectReview"));
			pstmt.setInt(1,reviewNo);
			rs=pstmt.executeQuery();
			if(rs.next()) {
				r=new Review();
				r.setOrderNo(rs.getString("review_no"));
				r.setrTitle(rs.getString("review_title"));
				r.setrStar(rs.getInt("review_star"));
				r.setrDate(rs.getDate("review_date"));
			}
			
		}catch(SQLException e) {
			e.printStackTrace();
		}finally {
			close(rs);
			close(pstmt);
		}return r;
		 
	}
}

