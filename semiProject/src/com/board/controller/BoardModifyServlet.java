package com.board.controller;

import java.io.IOException;
import java.util.Date;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.board.model.dao.BoardDao;
import com.board.model.vo.Board;

/**
 * Servlet implementation class BoardModifyServlet
 */
@WebServlet("/mypage/board/boardform/modify")
public class BoardModifyServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private BoardDao boardDao=null;
    /**
     * Default constructor. 
     */
    public BoardModifyServlet() {
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		int bNo = request.getParameter("board_no");
		String bTitle = request.getParameter("board_title");
		String bContent = request.getParameter("board_content");
		String userId = request.getParameter("user_id");
		// 모델
		Board boardModel = new Board();
		boardModel.setbNo(bNo);
		boardModel.setbTitle(bTitle);
		boardModel.setUserId(userId);
		// 게시물 상세 조회
		this.boardDao = new BoardDao();
		boardModel = this.boardDao.select(boardModel);
		// View 사용될 객체 설정
		request.setAttribute("boardModel", boardModel);
		// View 보내기
<<<<<<< HEAD
		RequestDispatcher requestDispatcher =
				request.getRequestDispatcher("/web/board/boardForm.jsp");
			requestDispatcher.forward(request, response);	}

	/**
	 * POST 접근 시 (수정처리 접근 시)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//POST 한글 파리미터 꺠짐
		request.setCharacterEncoding("UTF-8");
		// 파라미터
		int bNo = Integer.parseInt(request.getParameter("board_no"));
		String bTitle = request.getParameter("board_title");
		String userId = request.getParameter("user_id");
		String bContent = request.getParameter("board_content");
		Date bWriteDate = new Date(request.getParameter("board_writedate"));
		String bAnswer = request.getParameter("board_answer");
		Date bAndate = new Date(request.getParameter("board_answerdate"));
		// 모델
		Board boardModel = new Board();
		boardModel.setbNo(bNo);
		boardModel.setbTitle(bTitle);
		boardModel.setUserId(userId);
		boardModel.setbContent(bContent);
=======
		
		request.getRequestDispatcher("/web/board/boardForm.jsp")
		.forward(request, response);	
>>>>>>> branch 'master' of https://github.com/forest9green/semiProject_MOBIUS.git
		// 게시물 수정 처리
		this.boardDao = new BoardDao();
		this.boardDao.update(boardModel);
		// 페이지 이동	
		response.sendRedirect(
			"BoardviewServlet?board_no="+bNo+"&board_content="+bContent);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}
	

}
