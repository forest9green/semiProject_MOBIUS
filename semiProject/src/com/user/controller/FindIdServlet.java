package com.user.controller;

import java.io.IOException;
import java.util.Date;
import java.util.Properties;

import javax.mail.Address;
import javax.mail.Authenticator;
import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.AddressException;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.user.model.service.UserService;
import com.user.model.vo.User;

/**
 * Servlet implementation class FindIdServlet
 */
@WebServlet("/user/findId")
public class FindIdServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public FindIdServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		
		
		
		String userName= request.getParameter("userName");
		String email = request.getParameter("userEmail");
		
		User u = new UserService().checkEmail(userName,email);
		
		request.setCharacterEncoding("UTF-8");
		
		
		
		
		if(u!=null) {
			String mailServer = "smtp.gmail.com";
			 Properties props = new Properties();
			 props.put("mail.smtp.host", mailServer);
			 props.put("mail.smtp.auth", "true");
			 
			 Authenticator myAuth = new MyAuthenticator();
			 
			 Session sess = Session.getInstance(props,myAuth);
			 
			 try {
				 String to = "xogml6915@naver.com";
				 String from = "xogml6915@gmail.com";
				 String subject = "테스트";
				 String content = "테스트용 메일입니다.";
			 
				 Message msg = new MimeMessage(sess);
				 InternetAddress address = new InternetAddress(to);
				 
				 msg.setRecipient(Message.RecipientType.TO, address);
				 msg.setFrom(new InternetAddress(from));
				 msg.setSubject(content);
				 msg.setContent(content,"text/html;charset=UTF-8");
				 msg.setSentDate(new Date());
				 Transport.send(msg);
			 }catch(Exception e) {
				 e.printStackTrace();
			 }
			 

			
			
			
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
