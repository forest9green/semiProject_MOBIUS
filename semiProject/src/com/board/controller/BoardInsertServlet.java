package com.board.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.tomcat.util.http.fileupload.servlet.ServletFileUpload;

import com.board.model.service.BoardService;
import com.board.model.vo.Board;
import com.oreilly.servlet.MultipartRequest;

/**
 * Servlet implementation class BoardInsertServlet
 */
@WebServlet("/board/boardinsert")
public class BoardInsertServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public BoardInsertServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		if(!ServletFileUpload.isMultipartContent(request)) {
			request.setAttribute("msg","잘못된 방식으로 요청되었습니다.");
			request.setAttribute("loc","/board/boardList");
			request.getRequestDispatcher("/views/common/msg.jsp")
			.forward(request, response);
			return;
		}
		
		String path=getServletContext().getRealPath("/upload/board/");
		
		MultipartRequest mr=new MultipartRequest(request,path,(1024*1024*10),
				"UTF-8");
		
		Board b=new Board();
		b.setbTitle(mr.getParameter("boardTitle"));
		b.setUserId(mr.getParameter("boardWriter"));
		b.setbContent(mr.getParameter("content"));
		
		
		int result=new BoardService().insertBoard(b);
		
		String msg="";
		String loc="";
		if(result>0) {
			msg="게시글 등록 성공";
			loc="/board/boardList";
		}else {
			msg="게시글 등록 실패";
			loc="/board/boardForm";
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
