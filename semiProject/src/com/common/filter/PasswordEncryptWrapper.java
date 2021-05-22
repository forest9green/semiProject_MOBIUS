package com.common.filter;

import java.io.UnsupportedEncodingException;
import java.nio.charset.Charset;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.Base64;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletRequestWrapper;

public class PasswordEncryptWrapper extends HttpServletRequestWrapper {

	public PasswordEncryptWrapper(HttpServletRequest request) {
		super(request);
	}
	
	//getParameter로 password를 호출하면 암호화해서 전송하기
	@Override
	public String getParameter(String name) {
		String value="";
		//매개변수로 들어오는 name의 값이 password일때 암호화 처리하자
		if(name.equals("password")||name.equals("password_new")) {
			//암호화시켜서 반환하자!
			value=getSHA512(super.getParameter(name));
		}else {
			value=super.getParameter(name);
		}
		
		
		return value;
	}
	
	private String getSHA512(String val) {
		
		String encPwd="";
		
		//암호화 처리 객체선언
		MessageDigest md = null;
		try {
			//암호화알고리즘을 선택해서 객체 생성
			md=MessageDigest.getInstance("SHA-512");
		
		}catch(NoSuchAlgorithmException e) {
			e.printStackTrace();
		}
		
		//암호화는 bit연산
		
		byte[] bytes=val.getBytes(Charset.forName("UTF-8"));
		md.update(bytes);
		
		//bit연산한것을 String값변환을 해야함.
		encPwd=Base64.getEncoder().encodeToString(md.digest());
		return encPwd;
		
	}
	
	
	
	
}
