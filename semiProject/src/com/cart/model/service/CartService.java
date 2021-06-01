package com.cart.model.service;

import static com.common.JDBCTemplate.close;
import static com.common.JDBCTemplate.commit;
import static com.common.JDBCTemplate.getConnection;
import static com.common.JDBCTemplate.rollback;

import java.sql.Connection;
import java.util.List;

import com.cart.model.dao.CartDao;
import com.cart.model.vo.Cart;
import com.cart.model.vo.CartProduct;
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
	
	
	public List<CartProduct> selectCart(String userId){
		Connection conn=getConnection();
		List<CartProduct> list=dao.selectCart(conn,userId);
		close(conn);
		return list;
	}
	
	
	public CartProduct selectCart(String userId, String pCode){
		Connection conn=getConnection();
		CartProduct cp=dao.selectCart(conn,userId,pCode);
		close(conn);
		return cp;
	}
	
	
	public int changeAmount(Cart c) {
		Connection conn=getConnection();
		int result=dao.changeAmount(conn,c);
		if(result>0) commit(conn);
		else rollback(conn);
		return result;
	}
	
	
	public int deleteCart(WishList c) {
		Connection conn=getConnection();
		int result=dao.deleteCart(conn,c);
		if(result>0) commit(conn);
		else rollback(conn);
		return result;
	}

}
