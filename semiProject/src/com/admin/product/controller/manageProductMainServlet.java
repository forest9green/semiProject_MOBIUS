package com.admin.product.controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.product.model.service.ProductService;
import com.product.model.vo.Product;

/**
 * Servlet implementation class AdminProductListServlet
 */
@WebServlet("/admin/manageProductMain")
public class manageProductMainServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public manageProductMainServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String category=request.getParameter("category");
		String pKeyword=request.getParameter("pKeyword");
		if(category==null) {
			category="전체";
		}
		String cateCode="";
		List<Product> list=new ArrayList<>();
		
		int cPage;
		int numPerPage=10;
		try {
			cPage=Integer.parseInt(request.getParameter("cPage"));
		}catch(NumberFormatException e) {
			cPage=1;
		}
		
		int totalData=0;
		
		if(!category.equals("전체")) {
			//카테고리가 전체가 아님
			if(pKeyword==null) {
				//검색어가 없음
				
			}else {
				//검색어가 있음
			}
			
		} else {
			//카테고리가 전체
			if(pKeyword==null) {
				//검색어가 없음
				list=new ProductService().selectProductList("P_ENROLL_DATE DESC",cPage,numPerPage);
				totalData=new ProductService().selectProductCount();
				
			}else {
				//검색어가 있음
			}
		}
		
		int totalPage=(int)Math.ceil((double)totalData/numPerPage);
		
		int pageBarSize=10;
		int pageNo=((cPage-1)/pageBarSize)*pageBarSize+1;
		int pageEnd=pageNo+pageBarSize-1;
		
		String pageBar="";
		
		while(!(pageNo>pageEnd||pageNo>totalPage)) {
			if(pageNo==cPage) {
				pageBar+="<span>"+pageNo+"</span>";
			}else {
				pageBar+="<a href='"+request.getContextPath()+"/admin/manageProductMain?cPage="+pageNo+"&category="+category+"'>"+pageNo+"</a>";
			}
			pageNo++;
		}
		
		request.setAttribute("products",list);
		request.setAttribute("pageBar", pageBar);
		request.getRequestDispatcher("/views/admin/product/manageProduct.jsp").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
