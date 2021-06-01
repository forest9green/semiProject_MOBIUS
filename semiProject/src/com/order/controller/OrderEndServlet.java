package com.order.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.coupon.model.service.CouponService;
import com.mileage.model.service.MileageService;
import com.newAddress.model.service.NewAddressService;
import com.newAddress.model.vo.NewAddress;
import com.order.model.service.OrderService;
import com.order.model.vo.Order;
import com.user.model.service.UserService;

/**
 * Servlet implementation class OrderEndServlet
 */
@WebServlet("/myPage/orderEnd")
public class OrderEndServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public OrderEndServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String userId=request.getParameter("userId");
		
		String[] pCodes=request.getParameterValues("pCode");
		String[] amounts=request.getParameterValues("amount");
		
		String orderName=request.getParameter("orderName");
		String orderCellPhone=request.getParameter("orderCellPhone");
		String orderPhone=request.getParameter("orderPhone");
		
		String selectAdd=request.getParameter("selectAdd");
		String receiverName="";
		String postCode="";
		String addr="";
		String deliveryCellPhone="";
		String deliveryPhone="";
		if(selectAdd.equals("null")) {
			selectAdd=null;
			receiverName=request.getParameter("receiverName");
			postCode=request.getParameter("zonecode");
			addr=request.getParameter("address")+"-"+request.getParameter("addressSub");
			deliveryCellPhone=request.getParameter("deliveryCellPhone");
			deliveryPhone=request.getParameter("delieveryPhone");
		}
		String orderMemo=request.getParameter("orderMemo");
		
		int oPPrice=Integer.parseInt(request.getParameter("oPPrice"));
		int oDeliveryFee=Integer.parseInt(request.getParameter("oDeliveryFee"));
		int oDC=0;
		if(request.getParameter("oDC")!="") {
			oDC=Integer.parseInt(request.getParameter("oDC"));
		}
		int oTotalPrice=oPPrice+oDeliveryFee-oDC;
		
		int useMileage=0;
		if(request.getParameter("useMileage")!="") {
			useMileage=Integer.parseInt(request.getParameter("useMileage"));
		}
		String useCoupon=request.getParameter("useCoupon");
		
		//네이버페이,카카오페이,신용카드 api를 연결하지 않았기 때문에, 분기처리하지 않고 그냥 무통장입금으로만 받음
		String payWay=request.getParameter("payWay");
		
		
		String msg="주문 실패";
		String loc="/";
		String queryString=null;
		
		//1. 주문내역 테이블에 데이터 삽입
		Order o=new Order(null,userId,selectAdd,orderMemo,oPPrice,oDeliveryFee,oDC,oTotalPrice,payWay,null,null);
		int result1=new OrderService().insertOrder(o);
		
		//2. 주문내역 상세 테이블에 데이터 삽입
		if(result1>0) {
			int result2=0;
			String orderNo=new OrderService().selectOrderNo(userId);
			
			for(int i=0;i<pCodes.length;i++) {
				result2=new OrderService().insertOrderDetail(orderNo,pCodes[i],Integer.parseInt(amounts[i]));
				if(result2==0) {
					break;
				}
			}
			
			
			if(result2>0) {
				//3. 적립금 테이블에 데이터 삽입
				
				////3-1. 구매로 인해 적립된 적립금 플러스 처리
				int result3=new MileageService().insertPlus(orderNo,userId,(int)(oPPrice*0.01));
				
				if(useMileage!=0) {
					////3-2. 구매할 때 사용한 적립금 마이너스 처리
					result3=new MileageService().insertMinus(orderNo,userId,useMileage);
				}
				
				////3-3 회원 테이블 적립금 컬럼 수정
				result3=new UserService().updateMileage(userId,(int)(oPPrice*0.01),useMileage);
				
				
				if(result3>0) {
					//4. 신규 배송지일 경우 신규배송지 테이블에 데이터 삽입
					int result4=0;
					if(selectAdd==null) {
						NewAddress na=new NewAddress(orderNo,receiverName,postCode,addr,deliveryCellPhone,deliveryPhone);
						result4=new NewAddressService().insertNewAddr(na);
					}else {
						result4=1;
					}
					
					if(result4>0) {
						int result5=0;
						
						//5. 사용한 쿠폰이 있을 경우 사용여부를 사용(1)로 update
						if(!useCoupon.equals("null")) {
							result5=new CouponService().updateCouponUse(useCoupon);
						}else {
							result5=1;
						}
						System.out.println("result5"+result5);
						if(result5>0) {
							//6. 무통장 결제일 경우 무통장결제 테이블에 데이터 삽입
							System.out.println(payWay.equals("무통장입금"));
							if(payWay.equals("무통장입금")) {
								int result6=new OrderService().insertNoBookPay(orderNo,orderName);
								
								if(result6>0) {
									msg="주문이 완료되었습니다.";
									loc="/myPage/completePayNoBook";
									queryString="?orderNo="+orderNo;
								}
							}//무통장 결제 이외의 결제방법 처리(api 적용한 후 가능함)
						}
					}
				}
			}
		}
		
		request.setAttribute("msg", msg);
		request.setAttribute("loc", loc);
		request.setAttribute("queryString", queryString);
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
