package com.ict.erp.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.ict.erp.service.UserInfoService;
import com.ict.erp.vo.UserInfo;

@Controller
public class UserInfoController {

	@Autowired
	private UserInfoService uis;

	@RequestMapping(value = "/login1", method = RequestMethod.POST)
	public @ResponseBody Integer putUser2(@RequestBody UserInfo ui) {
		return uis.putUserInfo(ui);
	}

	@RequestMapping(value = "/login", method = RequestMethod.POST)
	public String loginUser(HttpSession session, @RequestBody UserInfo ui) {
		UserInfo user = uis.getUserInfo(ui);
		if (user == null) {
			uis.putUserInfo(ui);
			user = uis.getUserInfo(ui);
		}
		if (session.getAttribute("login") != null) {
			session.removeAttribute("login");
		}
		session.setAttribute("login", user);
		return "main/index";
	}

	@RequestMapping(value = "/logout", method = RequestMethod.POST)
	public String logoutUser(HttpSession session, @RequestBody UserInfo ui) {
		session.invalidate();
		return "main/index";
	}
}
