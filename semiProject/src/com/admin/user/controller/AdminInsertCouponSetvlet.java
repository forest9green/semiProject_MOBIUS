package com.admin.user.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.admin.user.model.service.AdminUserService;

/**
 * Servlet implementation class AdminInsertCouponSetvlet
 */
@WebServlet("/admin/user/insertCoupon")
public class AdminInsertCouponSetvlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AdminInsertCouponSetvlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		String userId = request.getParameter("userId");
		String cName = request.getParameter("cName");
		double cDiscount = Double.parseDouble(request.getParameter("cDiscount"));
		int cFinishDate = Integer.parseInt(request.getParameter("cFinishDate"));
		int cLimit = Integer.parseInt(request.getParameter("cLimit"));
	
		int result = new AdminUserService().insertCoupon(userId,cName,cDiscount,cFinishDate,cLimit);
		
		String msg = "";
		String loc = "";
		if(result>0) {
			msg="쿠폰등록 성공!";
			loc="/views/admin/user/insertCoupon.jsp";
		}else {
			msg="쿠폰등록 실패!";
			loc="/views/admin/user/manageUserCoupon.jsp";
		}
		
		request.setAttribute("msg", msg);
		request.setAttribute("loc", loc);
		request.getRequestDispatcher("/views/common/msg.jsp")
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
