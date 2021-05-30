package com.cart.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.cart.model.service.CartService;
import com.cart.model.vo.Cart;
import com.wish.model.vo.WishList;

/**
 * Servlet implementation class AddCartServlet
 */
@WebServlet("/myPage/addCart")
public class AddCartServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AddCartServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String userId=request.getParameter("userId");
		String pCode=request.getParameter("pCode");

		WishList cart=new WishList(userId,pCode);
		
		//장바구니에 추가되어있는지 확인하고, 없으면 추가, 있으면 수량+1
		Cart c=new CartService().checkCart(cart);
		int result=0;

		if(c!=null) {
			//장바구니에 이미 있으므로 수량 +1
			result=new CartService().addCartAmount(cart);
			
		}else {
			//장바구니에 없으므로 신규로 추가
			result=new CartService().addCart(cart);
		}
		
		response.setContentType("text/csv;charset=utf-8");
		response.getWriter().print(result);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
