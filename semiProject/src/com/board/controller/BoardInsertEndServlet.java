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
		
		Board board = new Board();
		board.setUserId(userId);
		board.setbNo(bNo);
		board.setbContent(bContent);
		board.setbCategory(bCategory);
		board.setbTitle(bTitle);
		board.setbWriteDate(bWriteDate);
	
		BoardService boardService = new BoardService();		
		boardService.insertBoard(board, userId);
		int result=0;
		//등록성공하면 등록성공 메세지출력 후 리스트화면으로 이동
		//등록실패하면 등록실패 메세지출력 후 등록화면으로 이동
		String msg="";
		String loc="";
		if(result>0) {
			msg="문의사항등록 성공";
			loc="myPage/board/boardList";
		}else {
			msg="문의사항등록 실패";
			loc="myPage/board/boardForm";
		}
		request.setAttribute("msg",msg);
		request.setAttribute("loc",loc);
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
