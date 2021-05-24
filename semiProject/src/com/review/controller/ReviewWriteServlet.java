package com.review.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.tomcat.util.http.fileupload.servlet.ServletFileUpload;

import com.oreilly.servlet.MultipartRequest;
import com.review.model.vo.Review;

/**
 * Servlet implementation class ReviewWriteServlet
 */
@WebServlet("/review/write")
public class ReviewWriteServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

    /**
     * Default constructor. 
     */
    public ReviewWriteServlet() {
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		if(!ServletFileUpload.isMultipartContent(request)) {
			request.setAttribute("msg", "잘못된 방식으로 요청되었습니다.");
			request.setAttribute("loc", "/review/revieListView.jsp");
			request.getRequestDispatcher("views/common/msg.jsp")
			.forward(request, response);
			return;
		}
		String path=getServletContext().getRealPath("/upload/review/");
		
		MultipartRequest mr=new MultipartRequest(request,path,(1024*1024*10),
				"UTF-8");
		
		Review r=new Review();
		r.setrTitle(mr.getParameter("reviewTitle"));
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
