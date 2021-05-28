package com.board.controller;

import java.io.IOException;
import java.sql.Date;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.board.model.service.BoardService;
import com.board.model.vo.Board;

/**
 * Servlet implementation class BoardUpdateEndServlet
 */
@WebServlet("/myPage/board/boardupdateEnd")
public class BoardUpdateEndServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public BoardUpdateEndServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//문의사항 데이터를 받아옴
		String bNo=request.getParameter("bNo");
		String userId=request.getParameter("userId");
		String bTitle=request.getParameter("bTitle");
		String bContent=request.getParameter("bContent");
		String bCategory=request.getParameter("bCategory");
	
		
		Board b=new Board();
		b.setUserId(userId);
		b.setbNo(bNo);
		b.setbTitle(bTitle);
		b.setbContent(bContent);
		b.setbCategory(bCategory);
		
		int result=new BoardService().updateBoard(b, userId);
		
		String loc="/board/boardview?bNo="+b.getbNo();
		String msg=result>0?"문의사항 수정 완료":"문의사항 수정 실패";
		
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
