package com.cart.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.cart.model.service.CartService;
import com.cart.model.vo.Cart;

/**
 * Servlet implementation class ChangeAmountServlet
 */
@WebServlet("/myPage/changeAmount")
public class ChangeAmountServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ChangeAmountServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String userId=request.getParameter("userId");
		String pCode=request.getParameter("pCode");
		int amount=Integer.parseInt(request.getParameter("amount"));
		
		Cart c=new Cart(userId,pCode,amount);
		
		int result=new CartService().changeAmount(c);
		
		String msg="";
		if(result>0) {
			msg="변경되었습니다.";
		}else {
			msg="변경에 실패했습니다.";
		}
		
		request.setAttribute("msg", msg);
		request.setAttribute("loc", "/myPage/cart");
		request.setAttribute("queryString", "?userId="+userId);
		request.getRequestDispatcher("/views/common/msg.jsp").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
