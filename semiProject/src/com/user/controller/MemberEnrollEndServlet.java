package com.user.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.user.model.service.UserService;
import com.user.model.vo.User;

/**
 * Servlet implementation class MemberEnrollEndServlet
 */
@WebServlet("/user/memberenrollend")
public class MemberEnrollEndServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public MemberEnrollEndServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub

		String userId= request.getParameter("userId");
		String password = request.getParameter("password");
		String userName= request.getParameter("userName");
		String email = request.getParameter("email");
		int emailSmsCk = Integer.parseInt(request.getParameter("emailSmsCk"));
		String cellPhone = request.getParameter("cellPhone");
		int phoneSmsCk = Integer.parseInt(request.getParameter("phoneSmsCk"));
		String phone = request.getParameter("phone");
	
		User u = new User(userId,password,userName,email,emailSmsCk,cellPhone,phoneSmsCk,phone,null,null,0);
		
		int result = new UserService().insertMember(u);
		
		String loc="/";
		String msg=result>0?"회원가입 성공!":"회원가입 실패!";
		
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
