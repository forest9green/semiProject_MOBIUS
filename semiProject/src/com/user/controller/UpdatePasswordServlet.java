package com.user.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.user.model.service.UserService;

/**
 * Servlet implementation class UpdatePasswordServlet
 */
@WebServlet(name="updatepasswordservlet",urlPatterns="/user/updatePassword")
public class UpdatePasswordServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public UpdatePasswordServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String userId = request.getParameter("userId");
		String password = request.getParameter("password");
		
		int result = new UserService().updatePassword(userId, password);
			String msg="";
			String loc = "";
		if(result>0) {
			msg = "비밀번호 변경이 완료되었습니다.";
			loc = "/views/member/loginPage.jsp";
		}else {
			msg="비밀번호 변경이 실패했습니다.";
			loc="/views/member/findPassword.jsp";
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

		
	}

}
