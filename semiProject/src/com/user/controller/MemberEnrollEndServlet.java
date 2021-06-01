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
 * Servlet implementation class MemberEnrollEndServlet
 */
@WebServlet(name="enrollendservlet",urlPatterns="/user/memberenrollend")
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
		int emailSmsCk =0;
		if((request.getParameter("emailSmsCk")!=null)){
			emailSmsCk=1;
			System.out.println(emailSmsCk);
		}
		String cellPhone = request.getParameter("cellPhone");
		int phoneSmsCk=0;
		if(request.getParameter("phoneSmsCk")!=null) {
			phoneSmsCk=1;
		}
		String phone = request.getParameter("phone");
	
		User u = new User(userId,password,userName,email,emailSmsCk,cellPhone,phoneSmsCk,phone,null,null,0);
		
		int result = new UserService().insertMember(u);
		
		int result2=0;
		
		if(result>0) {
	
			String postCode = request.getParameter("zonecode");
			String addr = request.getParameter("address")+"-"+request.getParameter("addressSub");
			int defaultAddr = 0;
			if(request.getParameter("saveAdd")!=null) {
				defaultAddr=1;
			}
			
			Address adr = new Address(null,userId,null,userName,postCode,addr,defaultAddr,cellPhone,phone);
			
			result2 = new AddressService().insertAddress(adr);
		}
		
		String loc="/views/member/loginPage.jsp";
		String msg=result2>0?"회원가입 성공!":"회원가입 실패!";
		
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
