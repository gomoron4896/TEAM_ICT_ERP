package com.ict.erp.security;

import java.io.IOException;
import java.io.OutputStream;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.authentication.BadCredentialsException;
import org.springframework.security.core.AuthenticationException;
import org.springframework.security.web.authentication.AuthenticationFailureHandler;
import org.springframework.stereotype.Component;

import com.fasterxml.jackson.databind.ObjectMapper;
import com.ict.erp.service.UserInfoService;
@Component("loginFailureHandler")
public class LoginFailureHandler implements AuthenticationFailureHandler {
	
	@Autowired
	private UserInfoService uis;
	
	@Override
	public void onAuthenticationFailure(HttpServletRequest request,
		HttpServletResponse response, AuthenticationException exception)
		throws IOException, ServletException {
		try {
		ObjectMapper om = new ObjectMapper();
		
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("success", false);
		
		if (exception.getMessage() == "Bad credentials") {
			map.put("message", "등록된 정보가 없습니다. 회원가입을 시작합니다.");
			
		}
		System.out.println("로그인 실패");
		// {"success" : false, "message" : "..."}
		String jsonString = om.writeValueAsString(map);
		
		OutputStream out = response.getOutputStream();
		out.write(jsonString.getBytes());
		} catch (BadCredentialsException e) {
			System.out.println("회원정보가 없습니다.");
		}
	}
	

}