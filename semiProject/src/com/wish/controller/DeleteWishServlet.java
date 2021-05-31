package com.wish.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.wish.model.service.WishListService;
import com.wish.model.vo.WishList;

/**
 * Servlet implementation class DeleteWishServlet
 */
@WebServlet("/myPage/deleteWish")
public class DeleteWishServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public DeleteWishServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String userId=request.getParameter("userId");
		String pCode=request.getParameter("pCode");
		int result=0;
		
		if(pCode==null) {
			//여러 개 삭제 로직
			String[] pCodes = request.getParameterValues("pCodes")[0].split(",");
			for(String pCode2 : pCodes) {
				WishList w=new WishList(userId,pCode2);
				result=new WishListService().deleteWish(w);
				if(result!=1) {
					break;
				}
			}
			
		} else {
			//개별 삭제 로직
			WishList w=new WishList(userId,pCode);
			result=new WishListService().deleteWish(w);
		}
		
		String msg="";
		if(result>0) {
			msg="삭제되었습니다.";
		}else {
			msg="삭제에 실패했습니다.";
		}
		
		request.setAttribute("msg", msg);
		request.setAttribute("loc", "/myPage/wishList");
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
