package com.board.controller;

import java.io.IOException;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.board.model.service.BoardService;
import com.board.model.vo.Board;

/**
 * Servlet implementation class BoardInsertEnd
 */
@WebServlet("/myPage/board/boardinsertend")
public class BoardInsertEndServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public BoardInsertEndServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		String userId=request.getParameter("userId"); 
		String bNo=request.getParameter("bNo");
		String bContent=request.getParameter("bContent");
		String bTitle=request.getParameter("bTitle");
		String bCategory=request.getParameter("bCategory");
		Date bWriteDate= new Date();
		
		Board b = new Board();
		b.setUserId(userId);
		b.setbNo(bNo);
		b.setbContent(bContent);
		b.setbCategory(bCategory);
		b.setbTitle(bTitle);
		b.setbWriteDate(bWriteDate);
	
		BoardService boardService = new BoardService();		
		
		int result=boardService.insertBoard(b, userId);
		

		String loc="/board/boardview?bNo=B"+result;
		String msg=result>0?"문의사항 등록 완료":"문의사항 등록 실패";
		
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
