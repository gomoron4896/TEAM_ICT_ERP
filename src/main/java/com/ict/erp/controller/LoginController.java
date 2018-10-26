package com.ict.erp.controller;

import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.ict.erp.service.UserInfoService;

@Controller
public class LoginController {

	/*@Autowired
	private UserInfoService uis;
	
	@RequestMapping(value = "/login", method = RequestMethod.POST)
	public Integer putUser(HttpSession session, HttpServletResponse response) {
		
		return uis.putUserInfo(null);
	}*/
} 
