package com.address.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.address.model.service.AddressService;
import com.address.model.vo.Address;

/**
 * Servlet implementation class InsertAddressServlet
 */
@WebServlet("/myPage/insertAddress")
public class InsertAddressServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public InsertAddressServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String userId=request.getParameter("userId");
		String addName=request.getParameter("addName");
		String receiverName=request.getParameter("receiverName");
		String postCode=request.getParameter("zonecode");
		String addr=request.getParameter("address")+"-"+request.getParameter("addressSub");
		String addCellPhone=request.getParameter("addCellPhone");
		String addPhone=request.getParameter("addPhone");
		int defaultAddr=0;
		if(request.getParameter("defaultAddr")!=null) {
			//기본 배송지로 지정 체크
			
			//기존의 기본배송지가 있는지 확인
			String oldAddrNo=new AddressService().selectDefaultAddr(userId);
			if(oldAddrNo!=null) {
				//기존 기본 배송지가 있음
				int result=new AddressService().clearDefaultAddr(oldAddrNo);//기존 기본 배송지 삭제
			}//기존 기본 배송지가 없음
			
			defaultAddr=1;
		}
		
		Address a=new Address(null,userId,addName,receiverName,postCode,addr,defaultAddr,addCellPhone,addPhone);
		
		int result2=new AddressService().insertAnotherAddress(a);
		String msg="";
		if(result2>0) {
			msg="신규 배송지 등록 성공";
		}else {
			msg="신규 배송지 등록 실패";
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
