package com.user.controller;

import javax.mail.Authenticator;
import javax.mail.PasswordAuthentication;

public class MyAuthenticator extends Authenticator{
	PasswordAuthentication pa;
	
	public MyAuthenticator() {
		String id = "xogml6915@gmail.com";
		String pw = "sjnqsrchtrnlatvb";
		
		pa = new PasswordAuthentication(id,pw);
	}
	
	protected PasswordAuthentication getPasswordAuthentication() {
		return pa;
	}
	
}
