package com.order.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.order.model.service.OrderService;
import com.order.model.vo.NoBookPay;

/**
 * Servlet implementation class CompletePayNoBookServlet
 */
@WebServlet("/myPage/completePayNoBook")
public class CompletePayNoBookServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public CompletePayNoBookServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String orderNo=request.getParameter("orderNo");
		NoBookPay nbp=new OrderService().selectNBP(orderNo);
		int totalPay=new OrderService().selectTotalPay(orderNo);
		
		request.setAttribute("noBookPay", nbp);
		request.setAttribute("totalPay", totalPay);
		request.getRequestDispatcher("/views/order/noBookPayComplete.jsp").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
