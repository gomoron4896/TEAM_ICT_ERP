package com.ict.erp.security;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.security.core.Authentication;
import org.springframework.security.web.authentication.logout.SimpleUrlLogoutSuccessHandler;
import org.springframework.stereotype.Component;

@Component
public class LogoutSuccessHandler extends SimpleUrlLogoutSuccessHandler{
 
 public void onLogoutSuccess(HttpServletRequest request, HttpServletResponse response,
      Authentication authentication)throws IOException, ServletException{
  System.out.println("LogoutSuccessHandler");
  if (authentication !=null){
   //do something
  }
  setDefaultTargetUrl("/url/clib:index");
  super.onLogoutSuccess(request, response, authentication);
 }
}
