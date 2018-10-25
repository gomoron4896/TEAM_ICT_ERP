package com.ict.erp.controller;

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

	@RequestMapping(value = "/login", method = RequestMethod.POST)
	public @ResponseBody Integer putUser(@RequestBody UserInfo ui) {
		return uis.putUserInfo(ui);
	}
}
	