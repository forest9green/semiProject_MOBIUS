package com.review.model.service;

import java.sql.Connection;
import java.util.List;

import com.review.model.dao.ReviewDao;
import com.review.model.vo.Review;
import static com.common.JDBCTemplate.close;
import static com.common.JDBCTemplate.getConnection;

public class ReviewService {
	
	private ReviewDao dao=new ReviewDao();
	
	public List<Review> selectReviewList(int cPage, int numPerpage){
		Connection conn=getConnection();
		List<Review> list=dao.selectReviewList(conn, cPage, numPerpage);
			close(conn);
			return list;
		}
	
		public int selectReviewCount() {
		Connection conn=getConnection();
		int result=dao.selectReviewCount(conn);
		close(conn);
		return result;
	}
	
	public Review selectReview(int reviewNo) {
		Connection conn=getConnection();
		Review r=dao.selectReview(conn,reviewNo);
		close(conn);
		return r;
	}
}
