package com.admin.user.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.admin.user.model.service.AdminUserService;
import com.admin.user.model.vo.AdminOrderInfo;

/**
 * Servlet implementation class AdminOrderInfoServlet
 */
@WebServlet("/admin/order")
public class AdminOrderInfoServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AdminOrderInfoServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	
		String orderNo = request.getParameter("orderNo");
		
		AdminOrderInfo aoi = new AdminUserService().adminOrderInfo(orderNo);

		request.setAttribute("aoi", aoi);
		request.getRequestDispatcher("/views/admin/order/manageOrderInfoDetail.jsp")
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
