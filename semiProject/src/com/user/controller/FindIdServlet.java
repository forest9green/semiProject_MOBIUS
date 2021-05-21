package com.user.controller;

import java.io.IOException;
import java.util.Date;
import java.util.Properties;

import javax.activation.CommandMap;
import javax.activation.MailcapCommandMap;
import javax.mail.Authenticator;
import javax.mail.Message;
import javax.mail.Message.RecipientType;
import javax.mail.Multipart;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeBodyPart;
import javax.mail.internet.MimeMessage;
import javax.mail.internet.MimeMultipart;
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
		
		if(u!=null) {
			String subject ="메일 발송 테스트";
			String fromEmail="xogml6915@gmail.com";
			String fromUserName=u.getUserName();
			String toEmail=u.getEmail();
			
			final String bodyEncoding = "UTF-8";
			
			final String username="xogml6915@gmail.com";
			final String password="atfcyqmsgfykmfzz";
			
			StringBuffer sb = new StringBuffer();
			sb.append("<h3>EEEE3333</h3>");
			
			String html=sb.toString();
			
			Properties props = new Properties();
			props.put("mail.transport.protocol", "smtp");
		    props.put("mail.smtp.host", "smtp.gmail.com");
		    props.put("mail.smtp.port", "465");
		    props.put("mail.smtp.auth", "true");
		 
		    props.put("mail.smtp.quitwait", "false");
		    props.put("mail.smtp.socketFactory.port", "465");
		    props.put("mail.smtp.socketFactory.class", "javax.net.ssl.SSLSocketFactory");
		    props.put("mail.smtp.socketFactory.fallback", "false");
			
		    try {
		        // 메일 서버  인증 계정 설정
		        Authenticator auth = new Authenticator() {
		          protected PasswordAuthentication getPasswordAuthentication() {
		            return new PasswordAuthentication(username, password);
		          }
		        };
		        
		        // 메일 세션 생성
		        Session session = Session.getInstance(props, auth);
		        
		        // 메일 송/수신 옵션 설정
		        Message message = new MimeMessage(session);
		        message.setFrom(new InternetAddress(fromEmail, fromUserName));
		        message.setRecipients(RecipientType.TO, InternetAddress.parse(toEmail, false));
		        message.setSubject(subject);
		        message.setSentDate(new Date());
		        
		        // 메일 콘텐츠 설정
		        Multipart mParts = new MimeMultipart();
		        MimeBodyPart mTextPart = new MimeBodyPart();
		        MimeBodyPart mFilePart = null;
		   
		        // 메일 콘텐츠 - 내용
		        mTextPart.setText(html, bodyEncoding, "html");
		        mParts.addBodyPart(mTextPart);
		              
		        // 메일 콘텐츠 설정
		        message.setContent(mParts);
		        
		        // MIME 타입 설정
		        MailcapCommandMap MailcapCmdMap = (MailcapCommandMap) CommandMap.getDefaultCommandMap();
		        MailcapCmdMap.addMailcap("text/html;; x-java-content-handler=com.sun.mail.handlers.text_html");
		        MailcapCmdMap.addMailcap("text/xml;; x-java-content-handler=com.sun.mail.handlers.text_xml");
		        MailcapCmdMap.addMailcap("text/plain;; x-java-content-handler=com.sun.mail.handlers.text_plain");
		        MailcapCmdMap.addMailcap("multipart/*;; x-java-content-handler=com.sun.mail.handlers.multipart_mixed");
		        MailcapCmdMap.addMailcap("message/rfc822;; x-java-content-handler=com.sun.mail.handlers.message_rfc822");
		        CommandMap.setDefaultCommandMap(MailcapCmdMap);
		   
		        // 메일 발송
		        Transport.send( message );
		        
		      } catch ( Exception e ) {
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
