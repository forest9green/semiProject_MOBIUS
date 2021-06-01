package com.admin.user.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.admin.user.model.service.AdminUserService;

/**
 * Servlet implementation class AdminUpdateOstate
 */
@WebServlet("/user/orderUpdate")
public class AdminUpdateOstate extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AdminUpdateOstate() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String orderNo = request.getParameter("orderNo");
		String oState = request.getParameter("oState");
		int result = new AdminUserService().updateOstate(orderNo,oState);
		String msg = "";
		String loc = "";
		if(result>0) {
			msg = "결제상태가 변경되었습니다.";
			loc = "/admin/adminMain";
		}else {
			msg = "결제상태 변경에 실패했습니다. 서비스업체에 문의주세요";
			loc = "/admin/adminMain";
		}
		
		request.setAttribute("msg", msg);
		request.setAttribute("loc", loc);
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
