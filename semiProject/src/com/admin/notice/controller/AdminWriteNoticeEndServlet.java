package com.admin.notice.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.tomcat.util.http.fileupload.servlet.ServletFileUpload;

import com.admin.notice.model.service.AdminNoticeService;
import com.notice.model.service.NoticeService;
import com.notice.model.vo.Notice;
import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

/**
 * Servlet implementation class AdminWriteNoticeEndServlet
 */
@WebServlet("/admin/notice/noticeWriteEnd")
public class AdminWriteNoticeEndServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AdminWriteNoticeEndServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//파일업로드 처리하기
		if(!ServletFileUpload.isMultipartContent(request)) {
			request.setAttribute("msg", "공지사항 작성오류 [form:enctype] 관리자에게 문의하세요 :(");
			request.setAttribute("loc", "/admin/notice/manageNotice");
			request.getRequestDispatcher("/views/common/msg.jsp")
			.forward(request, response);
			return;
		}
		
		String path=request.getServletContext().getRealPath("/upload/notice/");
		System.out.println("경로 : "+path);
		int maxSize=1024*1024*10;
		String encode="utf-8";
		
		MultipartRequest mr=new MultipartRequest(request,path,maxSize,
				encode,new DefaultFileRenamePolicy());
		
		Notice n=new Notice();
		n.setnoticeNo(mr.getParameter("NOTICE_NO"));
		n.setnTitle(mr.getParameter("n_Title"));
		n.setnContent(mr.getParameter("n_Content"));
		n.setnImgPath(mr.getFilesystemName("upfile"));
		
		int result=new AdminNoticeService().insertNotice(n);
//		n.setnDate(mr.getParameter("N_DATE"));
		
		String msg="";
		String loc="";
		if(result>0) {
			msg="공지사항등록 성공";
			loc="/admin/notice/manageNotice";
		}else {
			msg="공지사항등록 실패";
			loc="/admin/notice/writeNotice";
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
