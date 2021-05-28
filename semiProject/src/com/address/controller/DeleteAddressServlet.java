package com.address.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.address.model.service.AddressService;

/**
 * Servlet implementation class DeleteAddressServlet
 */
@WebServlet("/myPage/deleteAddress")
public class DeleteAddressServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public DeleteAddressServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String userId=request.getParameter("userId");
		String[] checkAddrNos=request.getParameterValues("checkAddrNos")[0].split(",");
		
		int result=0;
		for(String addrNo : checkAddrNos) {
			result=new AddressService().deleteAddress(addrNo);
			if(result!=1) {
				break;
			}
		}
		
		String msg="";
		if(result>0) {
			msg="삭제되었습니다.";
		}else {
			msg="삭제에 실패했습니다.";
		}
		
		request.setAttribute("msg", msg);
		request.setAttribute("loc", "/myPage/addressView");
		request.setAttribute("queryString", "?userId="+userId);
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
