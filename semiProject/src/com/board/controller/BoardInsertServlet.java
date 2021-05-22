package com.board.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.tomcat.util.http.fileupload.servlet.ServletFileUpload;

import com.board.model.dao.BoardDao;
import com.board.model.service.BoardService;
import com.board.model.vo.Board;
import com.oreilly.servlet.MultipartRequest;

/**
 * Servlet implementation class BoardInsertServlet
 */
@WebServlet("/mypage/board/insert")
public class BoardInsertServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private BoardDao boardDao=null;
    /**
     * Default constructor. 
     */
    public BoardInsertServlet() {
    	super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @param <RequestDispatcher>
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		// View 보내기
		RequestDispatcher requestDispatcher =
			request.getRequestDispatcher("/web/views/board/boardForm.jsp");
		requestDispatcher.forward(request, response);

		//  한글 파라미터 깨짐 처리
		request.setCharacterEncoding("UTF-8");
		// 파라미터
		String bTitle = request.getParameter("board_title");
		String userId = request.getParameter("userId");
		String bContent = request.getParameter("bContent");
		// 모델
		Board boardModel = new Board();
		boardModel.setbTitle(bTitle);
		boardModel.setUserId(userId);
		boardModel.setbContent(bContent);
		// 게시물 등록
		this.boardDao = new BoardDao();
		this.boardDao.insertBoard(boardModel);
		// 페이지 이동
		response.sendRedirect("boardListServlet");
		
	}
//		int result=new BoardService().insertBoard(boardModel);
//		
//		String msg="";
//		String loc="";
//		if(result>0) {
//			msg="게시글 등록 성공";
//			loc="/board/boardList";
//		}else {
//			msg="게시글 등록 실패";
//			loc="/board/boardForm";
//		}
//		request.setAttribute("msg", msg);
//		request.setAttribute("loc", loc);
//		
//		request.getRequestDispatcher("/views/common/msg.jsp")
//		.forward(request, response);
//	}


	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
