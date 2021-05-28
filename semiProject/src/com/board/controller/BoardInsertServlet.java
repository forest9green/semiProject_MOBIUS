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
@WebServlet("/myPage/board/boardinsert")
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
		String userId=request.getParameter("userId");
		
		Board b=new Board();
		b.setbNo("bNo");
		b.setbTitle("bTitle");
		b.setbContent("bContent");

		
		BoardService boardService = new BoardService();	
		boardService.insertBoard(b,userId);
		
		request.setAttribute("board", b);
		
		request.getRequestDispatcher("/views/board/boardForm.jsp")
		.forward(request, response);
		
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
			loc="/board/boardForm";
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
