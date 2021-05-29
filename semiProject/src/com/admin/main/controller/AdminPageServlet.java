package com.admin.main.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.admin.main.model.service.AdminMainService;
import com.admin.main.model.vo.AdminMainInfo;
import com.board.model.vo.Board;
import com.order.model.vo.Order;

/**
 * Servlet implementation class AdminPageServlet
 */
@WebServlet("/admin/adminMain")
public class AdminPageServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AdminPageServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub

		
		List<AdminMainInfo> plist = new AdminMainService().ProductList();
		
		List<Order> olist = new AdminMainService().OrderList();
		
		List<Board> blist = new AdminMainService().BoardList();
		
		request.setAttribute("blist", blist);
		request.setAttribute("olist", olist);
		request.setAttribute("plist", plist);
		request.getRequestDispatcher("/views/admin/adminMain.jsp")
		.forward(request, response);
		
		
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
