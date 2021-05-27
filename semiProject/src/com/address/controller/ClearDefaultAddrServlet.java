package com.address.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.address.model.service.AddressService;

/**
 * Servlet implementation class SetDefaultAddrServlet
 */
@WebServlet("/myPage/clearDefaultAddr")
public class ClearDefaultAddrServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ClearDefaultAddrServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String userId=request.getParameter("userId");
		String addrNo=request.getParameter("addrNo");
		
		int result=new AddressService().clearDefaultAddr(addrNo);
		
		String msg="";
		if(result>0) {
			msg="기본 배송지로 설정되었습니다.";
		}else {
			msg="기본 배송지 설정에 실패하였습니다.";
		}
		
		request.setAttribute("queryString", "?userId="+userId);
		request.setAttribute("msg", msg);
		request.setAttribute("loc", "/myPage/addressView");
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
