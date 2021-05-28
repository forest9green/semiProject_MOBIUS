package com.showroom.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.showroom.model.service.ShowRoomService;
import com.showroom.model.vo.ShowRoomDetail;

/**
 * Servlet implementation class showroomDetailServlet
 */
@WebServlet("/showroom/srDetail")
public class showroomDetailServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public showroomDetailServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String srMenu=request.getParameter("srMenu");
		
		List<ShowRoomDetail> list=new ShowRoomService().selectSR(srMenu);
		
		request.setAttribute("srMenu", srMenu);
		request.setAttribute("showrooms", list);
		request.getRequestDispatcher("/views/showroom/showroomView.jsp").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
