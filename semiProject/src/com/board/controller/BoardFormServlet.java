package com.board.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.board.model.dao.BoardDao;
import com.board.model.vo.Board;

/**
 * Servlet implementation class BoardFormServlet
 */
@WebServlet("/mypage/board/boardform")
public class BoardFormServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	//BOARD DAO
	private BoardDao boardDao=null;
    /**
     * @see HttpServlet#HttpServlet()
     */
    public BoardFormServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//  한글 파라미터 깨짐 처리
		request.setCharacterEncoding("UTF-8");
		// 파라미터
		String bTitle = request.getParameter("board_title");
		String userId = request.getParameter("user_id");
		String bContent = request.getParameter("board_content");
		// 모델
		Board boardModel = new Board();
		boardModel.setbTitle(bTitle);
		boardModel.setUserId(userId);
		boardModel.setbContent(bContent);
		// 게시물 등록
		this.boardDao = new BoardDao();
		this.boardDao.insertBoard(boardModel);
		// 페이지 이동
		response.sendRedirect("BoardlistViewServlet");
} 
	

	/**
	 * post 접근시 (등록처리 접근시)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);

	}
}