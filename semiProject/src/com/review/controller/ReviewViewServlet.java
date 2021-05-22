package com.review.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.review.model.service.ReviewService;
import com.review.model.vo.Review;

/**
 * Servlet implementation class ReviewViewServlet
 */
@WebServlet("/review/view")
public class ReviewViewServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

    /**
     * Default constructor. 
     */
    public ReviewViewServlet() {
        // TODO Auto-generated constructor stub
    	super();
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int ReviewNo= Integer.parseInt(request.getParamenter("no"));
		
		Review r= new ReviewService().selectReview(ReviewNo);
		request.setAttribute("Review",r);
		
		request.getRequestDispatcher("/views/review/ReviewView.jsp")
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
