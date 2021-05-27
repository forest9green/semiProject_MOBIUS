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
 * Servlet implementation class modifyAddressEndServlet
 */
@WebServlet("/myPage/modifyAddressEnd")
public class modifyAddressEndServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public modifyAddressEndServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String addrNo=request.getParameter("addrNo");
		String userId=request.getParameter("userId");
		String addName=request.getParameter("addName");
		String receiverName=request.getParameter("receiverName");
		String postCode=request.getParameter("zonecode");
		String addr=request.getParameter("address")+" "+request.getParameter("addressSub");
		String addCellPhone=request.getParameter("addCellPhone");
		String addPhone=request.getParameter("addPhone");
		
		int defaultAddr=0;
		if(request.getParameter("defaultAddr")!=null) {
			//'기본 배송지로 지정' 체크
			
			//기존의 기본배송지가 있는지 확인
			String oldAddrNo=new AddressService().selectDefaultAddr(userId);
			if(oldAddrNo!=null) {
				//기존 기본 배송지가 있음
				
				//기존 기본 배송지가 addrNo이었는지(같은 배송지번호인지) 확인
				if(!addrNo.equals(oldAddrNo)) {
					//둘이 다른 배송지이므로 addrNo를 새로운 기본 배송지로 설정하기 위해 oldAddrNo의 default_addr을 0으로 수정
					int result=new AddressService().clearDefaultAddr(oldAddrNo);//기존 기본 배송지 삭제
				}//같은 배송지이므로, oldAddrNo의 default_addr을 0으로 바꿀 필요가 없음
			}//기존 기본 배송지가 없음
			
			defaultAddr=1;
		}//'기본 배송지로 지정' 체크 해제
		
		Address a=new Address(addrNo,userId,addName,receiverName,postCode,addr,defaultAddr,addCellPhone,addPhone);
		
		int result2=new AddressService().updateAddress(a);
		
		String msg="";
		if(result2>0) {
			msg="배송지 정보가 수정되었습니다.";
		}else {
			msg="배송지 정보 수정에 실패하였습니다.";
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
