package com.user.controller;

import javax.mail.Authenticator;
import javax.mail.PasswordAuthentication;

public class SMTPAuthenticator extends Authenticator{

	@Override
	protected PasswordAuthentication getPasswordAuthentication() {
		return new PasswordAuthentication("xogml6915@gmail.com", "slrkanjsep7");
		
		
	}
}
