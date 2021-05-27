package com.address.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.address.model.service.AddressService;
import com.address.model.vo.Address;
import com.coupon.model.service.CouponService;

/**
 * Servlet implementation class AddressViewServlet
 */
@WebServlet("/myPage/addressView")
public class AddressViewServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AddressViewServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String userId=request.getParameter("userId");
		
		int cPage;
		int numPerPage=10;
		try {
			cPage=Integer.parseInt(request.getParameter("cPage"));
		}catch(NumberFormatException e) {
			cPage=1;
		}
		
		List<Address> list=new AddressService().selectAddress(userId,cPage,numPerPage);
		
		int totalData=new AddressService().selectAddressCount(userId);
		int totalPage=(int)Math.ceil((double)totalData/numPerPage);
		
		int pageBarSize=10;
		int pageNo=((cPage-1)/pageBarSize)*pageBarSize+1;
		int pageEnd=pageNo+pageBarSize-1;
		
		String pageBar="";
		while(!(pageNo>pageEnd||pageNo>totalPage)) {
			if(pageNo==cPage) {
				pageBar+="<span>"+pageNo+"</span>";
			}else {
				pageBar+="<a href='"+request.getContextPath()+"/myPage/addressView?userId="+userId+"&cPage="+pageNo+"'>"+pageNo+"</a>";
			}
			pageNo++;
		}
		
		request.setAttribute("addresses", list);
		request.setAttribute("pageBar", pageBar);
		request.getRequestDispatcher("/views/myPage/addressView.jsp").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
