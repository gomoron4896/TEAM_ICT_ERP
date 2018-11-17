package com.ict.erp.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
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

	@RequestMapping(value = "/logincheck", method = RequestMethod.POST)
	public @ResponseBody Integer loginUser(HttpSession session, @RequestBody UserInfo ui) {
		UserInfo user = uis.getUserInfo(ui);
		System.out.println("로그인 체크 컨트롤러");
		System.out.println(user);
		if (user == null) {
			System.out.println("인서트");
			int a =  uis.putUserInfo(ui);
			System.out.println("인서트 결과는? "+ a);
			return a;
		} else {
			return 0;
		}
	}

	/*@RequestMapping(value = "/logout", method = RequestMethod.GET)
=======
		return "login";
=======
>>>>>>> branch 'master' of https://github.com/gomoron4896/ict1-erp1.git
	}

	@RequestMapping(value = "/logout.do", method = RequestMethod.POST)
>>>>>>> branch 'master' of https://github.com/gomoron4896/ict1-erp1.git
	public String logoutUser(HttpSession session, @RequestBody UserInfo ui) {
		session.invalidate();
		return "clib/index";
	}*/
}
