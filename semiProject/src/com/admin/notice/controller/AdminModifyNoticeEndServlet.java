package com.admin.notice.controller;

import java.io.File;
import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.tomcat.util.http.fileupload.servlet.ServletFileUpload;

import com.admin.notice.model.service.AdminNoticeService;
import com.notice.model.vo.Notice;
import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

/**
 * Servlet implementation class AdminModifyNoticeEndServlet
 */
@WebServlet("/admin/notice/noticeModifyEnd")
public class AdminModifyNoticeEndServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AdminModifyNoticeEndServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		if(!ServletFileUpload.isMultipartContent(request)) {
			request.setAttribute("msg",  "잘못된 접근입니다");
			request.setAttribute("loc",  "admin/notice/modifyNotice?no="+request.getParameter("noticeNo"));
			request.getRequestDispatcher("/views/common/msg.jsp")
			.forward(request, response);
			return;
		}
		
		String path=getServletContext().getRealPath("/upload/notice/");
		int maxSize=1024*1024*10;
		MultipartRequest mr=new MultipartRequest(request,path,maxSize,"UTF-8"
				,new DefaultFileRenamePolicy()); 
		
		Notice n=new Notice();
		n.setnoticeNo(mr.getParameter("NOTICE_NO"));
		n.setnTitle(mr.getParameter("N_TITLE"));
		n.setnContent(mr.getParameter("N_CONTENT"));
		n.setnImgPath(mr.getFilesystemName("upfile"));
		
		String filePath=mr.getFilesystemName("upfile");
		
		File f=mr.getFile("upfile");
		
		if(f!=null&f.length()>0) {
			File deleteFile=new File(path+mr.getParameter("oriFile"));
				System.out.println(deleteFile.delete());
		}else {
			filePath=mr.getParameter("oriFile");
		}
		n.setnImgPath(filePath);
		n.setnoticeNo(mr.getParameter("noticeNo"));
		
		int result=new AdminNoticeService().modifyNotice(n);
		String msg="";
		String loc="";
		if(result>0) {
			msg="공지사항 수정 성공";
			loc="/admin/notice/manageNotice";
		}else {
			msg="공지사항 수정 실패";
			loc="/admin/notice/modifyNotice?no="+n.getnoticeNo();
		}
		request.setAttribute("msg",msg);
		request.setAttribute("loc", loc);
		
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
