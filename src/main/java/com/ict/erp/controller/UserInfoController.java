package com.ict.erp.controller;

import java.awt.Graphics2D;
import java.awt.image.BufferedImage;
import java.io.File;
import java.util.UUID;

import javax.imageio.ImageIO;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.core.userdetails.User;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

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

	@RequestMapping(value = "/profileImg", method = RequestMethod.POST)
	public @ResponseBody UserInfo getUserImg(@RequestBody UserInfo ui) {
		UserInfo uimg = uis.getUserImg(ui);
		String proImg = uimg.getUi_img();
		String str = "s_";
		int point = proImg.lastIndexOf("/");
		String front = proImg.substring(0, point + 1);
		String rear = proImg.substring(point + 1, proImg.length());
		String thumbName = front + str + rear;
		uimg.setUi_img(thumbName);
		return uimg;
	}

	@RequestMapping(value = "/logincheck", method = RequestMethod.POST)
	public @ResponseBody Integer loginUser(HttpSession session, @RequestBody UserInfo ui) {
		UserInfo user = uis.getUserInfo(ui);
		System.out.println("로그인 체크 컨트롤러");
		System.out.println(user);
		if (user == null) {
			int a = uis.putUserInfo(ui);
			return a;
		} else {
			return null;
		}
	}

	public static String currentUserName() {
		Authentication authentication = SecurityContextHolder.getContext().getAuthentication();
		User user = (User) authentication.getPrincipal();
		return user.getUsername();
	}

	@RequestMapping(value = "/userCheck", method = RequestMethod.GET)
	public @ResponseBody UserInfo getUser(HttpSession session, UserInfo ui) {

		Authentication auth = SecurityContextHolder.getContext().getAuthentication();
		String name = auth.getName(); // get logged in username
		session.setAttribute("username", name);
		ui.setUi_email(name);
		return uis.getUserInfo(ui);
	}

	/*
	 * @RequestMapping(value = "/logout", method = RequestMethod.GET) ======= return
	 * "login"; ======= >>>>>>> branch 'master' of
	 * https://github.com/gomoron4896/ict1-erp1.git }
	 * 
	 * @RequestMapping(value = "/logout.do", method = RequestMethod.POST) >>>>>>>
	 * branch 'master' of https://github.com/gomoron4896/ict1-erp1.git public String
	 * logoutUser(HttpSession session, @RequestBody UserInfo ui) {
	 * session.invalidate(); return "clib/index"; }
	 */
}
