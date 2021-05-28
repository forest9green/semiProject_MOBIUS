package com.wish.model.service;

import static com.common.JDBCTemplate.close;
import static com.common.JDBCTemplate.commit;
import static com.common.JDBCTemplate.getConnection;
import static com.common.JDBCTemplate.rollback;

import java.sql.Connection;

import com.wish.model.dao.WishListDao;
import com.wish.model.vo.WishList;

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

}
