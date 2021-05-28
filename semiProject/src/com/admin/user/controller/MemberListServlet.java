package com.admin.user.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.admin.main.model.service.AdminMainService;
import com.admin.main.vo.TotalInfo;

/**
 * Servlet implementation class MemberListServlet
 */
@WebServlet("/admin/user/memberList")
public class MemberListServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public MemberListServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
			int cPage;
			try {
				cPage=Integer.parseInt(request.getParameter("cPage"));
			}catch(NumberFormatException e) {
				cPage=1;
			}
			
			int numPerpage = 10;
			
			List<TotalInfo> list = new AdminMainService().memberList(cPage,numPerpage);
			
			
			int totalData = new AdminMainService().selectUserCount();
			int totalPage = (int)Math.ceil((double)totalData/numPerpage);
			
			int pageBarSize = 10;
			
			int pageNo = ((cPage-1)/pageBarSize)*pageBarSize+1;
			
			int pageEnd = pageNo+pageBarSize-1;
			
			String pageBar = "";
			
			while(!(pageNo>pageEnd||pageNo>totalPage)) {
				if(cPage==pageNo) {
					pageBar+="<span>"+pageNo+"</span>";
				}else {
					pageBar+="<a href='"+request.getContextPath()
					+"/admin/memberList?cPage="+pageNo
					+"'>"+pageNo+"</a>";
				}
				pageNo++;
			}
			
			
			request.setAttribute("pageBar", pageBar);
			request.setAttribute("users", list);
			
			request.getRequestDispatcher("/views/admin/user/manageUserMain.jsp")
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
