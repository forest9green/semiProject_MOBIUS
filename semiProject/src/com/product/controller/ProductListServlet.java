package com.product.controller;

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
 * Servlet implementation class ProductListServlet
 */
@WebServlet("/product/productList")
public class ProductListServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ProductListServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//세일 메뉴 일때는 걍 list를 null로 보내버려라!
		String category=request.getParameter("category");
		String orderBy=request.getParameter("pListSelect");
		String cateCode="";
		List<Product> list=new ArrayList<>();
		int cPage;
		int numPerPage=9;
		try {
			cPage=Integer.parseInt(request.getParameter("cPage"));
		}catch(NumberFormatException e) {
			cPage=1;
		}
		
		int totalData=0;
		
		if(category!=null) {
			if(category.equals("세일")) {
				list=null;
			}else {
				cateCode=new ProductService().searchCateCode(category);
				list=new ProductService().selectProductList(cateCode,orderBy,cPage,numPerPage);
				totalData=new ProductService().selectProductCount(cateCode);
			}
			request.setAttribute("category", category);
			
		} else{
			//카테고리가 전체임
			request.setAttribute("category", "전체");
			list=new ProductService().selectProductList(orderBy,cPage,numPerPage);
			totalData=new ProductService().selectProductCount();
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
				pageBar+="<a href='"+request.getContextPath()+"/product/productList?cPage="+pageNo+"&orderBy="+orderBy+"'>"+pageNo+"</a>";
			}
			pageNo++;
		}
		
		request.setAttribute("products", list);
		request.setAttribute("pageBar", pageBar);
		request.getRequestDispatcher("/views/product/productList.jsp").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
