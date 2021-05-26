package com.user.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.address.model.service.AddressService;
import com.address.model.vo.Address;
import com.user.model.service.UserService;
import com.user.model.vo.User;

/**
 * Servlet implementation class UpdateMemberServlet
 */
@WebServlet(
		name="updatememberservlet",urlPatterns="/myPage/user/updateMember"
		)
public class UpdateMemberServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public UpdateMemberServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub

		String userId = request.getParameter("memId");
		String password = request.getParameter("password");
		String userName = request.getParameter("newUserName");
		String email = request.getParameter("newEmail");
		int emailSmsCk =0;
		if((request.getParameter("maillingFl")!=null)){
			emailSmsCk=1;
		}
		
		String cellPhone = request.getParameter("newCellPhone");
		int phoneSmsCk = 0;
		if(request.getParameter("smsFl")!=null) {
			phoneSmsCk=1;
		}
	
		String phone = request.getParameter("newPhone");
		
		User u = new User(userId,password,userName,email,emailSmsCk,cellPhone,phoneSmsCk,phone,null,null,0);
		
		int result = new UserService().updateMember(u);
		
		String msg = "";
		String loc="";
		

		
		if(result>0) {
			
			msg="회원정보 수정완료!";
			loc="/index.jsp";
		}else {
			msg="회원정보 수정실패!";
			loc="/views/member/updateMember.jsp";
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
