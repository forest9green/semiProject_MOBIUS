package com.user.controller;

import java.io.UnsupportedEncodingException;
import java.util.Date;
import java.util.Properties;
import javax.mail.Authenticator;
import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.AddressException;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
import javax.swing.JOptionPane;



public class GmailSend {
	 public void GmailSet(){
	    
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
