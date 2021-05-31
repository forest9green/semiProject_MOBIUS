package com.admin.notice.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.admin.notice.model.service.AdminNoticeService;
import com.notice.model.vo.Notice;

/**
 * Servlet implementation class AdminDeleteNoticeServlet
 */
@WebServlet("/admin/notice/deleteNotice")
public class AdminDeleteNoticeServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AdminDeleteNoticeServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		String noticeNo = request.getParameter("noticeNo");
		
		int result =new AdminNoticeService().deleteNotice(noticeNo);
		
		
		String msg = "";
		String loc = "";
		
		if(result>0) {
			msg = "삭제가 완료되었습니다.";	
			loc = "/admin/notice/manageNotice";
		}
		else {
			msg = "삭제에 실패하였습니다.";
			loc = "/admin/notice/manageNotice";
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
