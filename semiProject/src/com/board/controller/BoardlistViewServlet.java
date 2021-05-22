package com.board.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.board.model.dao.BoardDao;
import com.board.model.vo.Board;

/**
 * Servlet implementation class BoardlistViewServlet
 */
@WebServlet("/mypage/board")
public class BoardlistViewServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
	//BoardDao
	private BoardDao boardDao= null;
    
	public BoardlistViewServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		int bNo=Integer.parseInt(request.getParameter("board_no"));
		String bTitle= request.getParameter("board_title");
		String bContent= request.getParameter("board_content");
		if(bNo==0) {
			bNo=1;
		}
		if(bTitle==null) {
			bTitle="";
			bContent="";
		}
		
		String searchTextUTF8=new String(bContent.getBytes("ISO-8859-1"),"UTF-8");
		//모델
		Board boardModel= new Board();
		boardModel.setbNo(bNo);
		boardModel.setbTitle(searchTextUTF8);
		//DAO
		this.boardDao=new BoardDao();
		//게시물 목록을 얻는 쿼리 실행
		List<Board> boardlist= this.boardDao.selectList(boardModel);
		//View 사용될 객체 설정
		request.setAttribute("board_no", bNo);
		request.setAttribute("board_title", bTitle);
		request.setAttribute("board_content",bContent);
		// View 보내기
		RequestDispatcher requestDispatcher =
			request.getRequestDispatcher("/web/board/boardlistView.jsp");
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
