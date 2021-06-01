package com.wish.model.service;

import static com.common.JDBCTemplate.close;
import static com.common.JDBCTemplate.commit;
import static com.common.JDBCTemplate.getConnection;
import static com.common.JDBCTemplate.rollback;

import java.sql.Connection;
import java.util.List;

import com.wish.model.dao.WishListDao;
import com.wish.model.vo.WishList;
import com.wish.model.vo.WishProduct;

public class WishListService {
	
	private WishListDao dao=new WishListDao();
	
	
	public int addWish(WishList w) {
		Connection conn=getConnection();
		int result=dao.addWish(conn,w);
		if(result>0) commit(conn);
		else rollback(conn);
		close(conn);
		return result;
	}
	
	
	public List<WishProduct> selectWish(String userId, int cPage, int numPerPage){
		Connection conn=getConnection();
		List<WishProduct> list=dao.selectWish(conn, userId, cPage, numPerPage);
		close(conn);
		return list;
	}
	
	
	public int selectWishCount(String userId) {
		Connection conn=getConnection();
		int result=dao.selectWishCount(conn,userId);
		if(result>0) commit(conn);
		else rollback(conn);
		close(conn);
		return result;
	}
	
	
	public int deleteWish(WishList w) {
		Connection conn=getConnection();
		int result=dao.deleteWish(conn,w);
		if(result>0) commit(conn);
		else rollback(conn);
		return result;
	}

}
