package com.cart.model.service;

import static com.common.JDBCTemplate.close;
import static com.common.JDBCTemplate.commit;
import static com.common.JDBCTemplate.getConnection;
import static com.common.JDBCTemplate.rollback;

import java.sql.Connection;

import com.cart.model.dao.CartDao;
import com.cart.model.vo.Cart;
import com.wish.model.vo.WishList;

public class CartService {
	
	private CartDao dao=new CartDao();
	
	
	public Cart checkCart(WishList cart) {
		Connection conn=getConnection();
		Cart c=dao.checkCart(conn,cart);
		close(conn);
		return c;
	}
	
	
	public int addCartAmount(WishList cart) {
		Connection conn=getConnection();
		int result=dao.addCartAmount(conn,cart);
		if(result>0) commit(conn);
		else rollback(conn);
		return result;
	}
	
	
	public int addCart(WishList cart) {
		Connection conn=getConnection();
		int result=dao.addCart(conn, cart);
		if(result>0) commit(conn);
		else rollback(conn);
		return result;
	}

}
