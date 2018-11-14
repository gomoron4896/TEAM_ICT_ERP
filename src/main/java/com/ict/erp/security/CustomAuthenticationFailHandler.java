package com.ict.erp.security;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
 
import org.springframework.security.core.AuthenticationException;
import org.springframework.security.web.authentication.AuthenticationFailureHandler;
 
public class CustomAuthenticationFailHandler implements AuthenticationFailureHandler {
    
    
    @Override
    public void onAuthenticationFailure(HttpServletRequest req, HttpServletResponse res, AuthenticationException arg2)
            throws IOException, ServletException {
    	System.out.println("로그인실패");
        req.setAttribute("loginid", req.getParameter("bId"));
        /*req.getRequestDispatcher("/login?error=true").forward(req, res);*/
        //req.getRequestDispatcher("/url/main:fail").forward(req, res);
    }
 
    
}
