package com.order.controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.address.model.service.AddressService;
import com.address.model.vo.Address;
import com.cart.model.service.CartService;
import com.cart.model.vo.CartProduct;
import com.coupon.model.service.CouponService;
import com.coupon.model.vo.Coupon;

/**
 * Servlet implementation class OrderServlet
 */
@WebServlet("/myPage/order")
public class OrderServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public OrderServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//보내야 하는 정보: 구매 상품, 배송지, 쿠폰
		String userId=request.getParameter("userId");
		String pCode=request.getParameter("pCode");
		
		//구매 상품
		List<CartProduct> cps=new ArrayList<>();
		if(pCode==null) {
			String[] pCodes = request.getParameterValues("pCodes");
			
			if(pCodes==null) {
				//전체 주문
				cps=new CartService().selectCart(userId);
				
			} else {
				//선택 주문
				pCodes = request.getParameterValues("pCodes")[0].split(",");
				
				for(String pCode2 : pCodes) {
					CartProduct cp=new CartService().selectCart(userId, pCode2);
					cps.add(cp);
				}
			}
			
		} else {
			//개별 주문
			CartProduct cp=new CartService().selectCart(userId, pCode);
			cps.add(cp);
		}
		
		//배송지
		List<Address> addresses=new AddressService().selectAddress(userId);
		
		//쿠폰
		List<Coupon> coupons=new CouponService().selectCouponList(userId);
		
		String referer=request.getHeader("referer");
		String path=referer.substring(referer.indexOf("/",33));
		
		request.setAttribute("path", path);
		request.setAttribute("cartProducts", cps);
		request.setAttribute("addresses", addresses);
		request.setAttribute("coupons", coupons);
		request.getRequestDispatcher("/views/order/orderForm.jsp").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
