package com.address.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class InsertAddressServlet
 */
@WebServlet("/myPage/insertAddress")
public class InsertAddressServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public InsertAddressServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String userId=request.getParameter("userId");
		String addName=request.getParameter("addName");
		String receiverName=request.getParameter("receiverName");
		String postCode=request.getParameter("zonecode");
		String addr=request.getParameter("address")+" "+request.getParameter("addressSub");
		String addCellPhone=request.getParameter("addCellPhone");
		String addPhone=request.getParameter("addPhone");
		int defaultAddr=0;
		if(request.getParameter("DefaultAddr")!=null) {
			defaultAddr=1;
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
