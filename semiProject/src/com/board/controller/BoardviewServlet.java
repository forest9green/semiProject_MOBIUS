package com.board.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.board.model.dao.BoardDao;
import com.board.model.vo.Board;
import java.net.URLEncoder;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
/**
 * Servlet implementation class BoardlviewServlet
 */
@WebServlet("/mypage/board/boardview")
public class BoardviewServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
	//BOARD DAO
	private BoardDao boardDao=null;
    public BoardviewServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		// 파라미터
				int bNo = Integer.parseInt(request.getParameter("board_no"));
				String bTitle = request.getParameter("board_title");
				String bContent = request.getParameter("board_content");
				String searchTextUTF8 = new String(bContent.getBytes("ISO-8859-1"), "UTF-8");
				// 모델
				Board boardModel = new Board();
				boardModel.setbNo(bNo);
				boardModel.setbTitle(bTitle);
				boardModel.setbContent(searchTextUTF8);
				// 게시물 상세 조회
				this.boardDao = new BoardDao();
				boardModel = this.boardDao.select(boardModel);
				// 게시물 조회수 증가
//				this.boardDao.updateHit(boardModel);
				// View 사용될 객체 설정
				request.setAttribute("boardModel", boardModel);
				// View 보내기
				RequestDispatcher requestDispatcher =
					request.getRequestDispatcher("/web/views/board/boardView.jsp");
				requestDispatcher.forward(request, response);
			}

	

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
