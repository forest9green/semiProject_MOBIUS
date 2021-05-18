package com.user.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.user.model.service.UserService;
import com.user.model.vo.User;

/**
 * Servlet implementation class LoginServlet
 */
@WebServlet("/user/login")
public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public LoginServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	
		String userId=request.getParameter("userId");
		String userPw=request.getParameter("userPw");
		
		User u = new UserService().login(userId,userPw);
		
		String saveId=request.getParameter("saveId");
		
		if(saveId!=null) {
			Cookie c = new Cookie("saveId",userId);
			c.setMaxAge(7*24*60*60);
			response.addCookie(c);
		}else {
			Cookie c = new Cookie("saveId","");
			c.setMaxAge(0);
			response.addCookie(c);
		}
	
	
		if(u!=null) {
			HttpSession session=request.getSession();
			session.setAttribute("loginUser",u);
			response.sendRedirect(request.getContextPath());
			
		}else {
			
			request.setAttribute("msg","로그인 실패, 아이디/패스워드를 확인해주세요");
			request.setAttribute("loc", "/");
			
			request.getRequestDispatcher("/views/common/msg.jsp")
			.forward(request, response);
		}
		

		
	
	
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
