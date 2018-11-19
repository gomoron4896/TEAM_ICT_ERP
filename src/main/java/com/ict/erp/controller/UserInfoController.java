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
	private static final String PATH = "C:\\jsp_study\\workspace\\git\\ict1-erp1\\src\\main\\webapp\\resources";

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
			int a = uis.putUserInfo(ui);
			System.out.println("인서트 결과는? " + a);
			return a;
		} else {
			return 0;
		}
	}
	public static String currentUserName() { Authentication authentication = SecurityContextHolder.getContext().getAuthentication(); User user = (User) authentication.getPrincipal(); return user.getUsername(); }

	@RequestMapping(value = "/userCheck", method = RequestMethod.GET)
	public @ResponseBody UserInfo getUser(HttpSession session, UserInfo ui) {

		Authentication auth = SecurityContextHolder.getContext().getAuthentication();
		String name = auth.getName(); // get logged in username
		session.setAttribute("username", name);
		ui.setUi_email(name);
		return uis.getUserInfo(ui);
	}

	@RequestMapping(value = "/updateUser", method = RequestMethod.POST)
	public @ResponseBody Integer action(@RequestParam("ui_up_img") MultipartFile upFile, HttpServletRequest request,
			@ModelAttribute UserInfo ui) throws Exception {
		request.setCharacterEncoding("utf-8");
		UUID uuid = UUID.randomUUID();

		System.out.println(ui);
		System.out.println(upFile.getOriginalFilename());
		System.out.println("종료");

		File oldFile = new File(PATH + ui.getUi_img());
		String thumbFileName = ui.getUi_img();

		System.out.println(thumbFileName);
		int point;
		String str = "s_";
		point = thumbFileName.lastIndexOf("/");
		System.out.println(point);
		if (point != -1) {
			String front = thumbFileName.substring(0, point+1);
			System.out.println("난프론트 "+front);
			String rear = thumbFileName.substring(point+1, thumbFileName.length());
			System.out.println("난리어 "+rear);
			File thumbOldFile = new File(PATH + front + str + rear);
			System.out.println("d1   "+PATH +front+str+rear);

			if (thumbOldFile.exists() == true) {
				thumbOldFile.delete();
			}
		}
		if (oldFile.exists() == true) {
			System.out.println("d2   "+PATH + ui.getUi_img());
			oldFile.delete();
		}

		new File(PATH).mkdir();
		String fName = "/img/" + uuid  + upFile.getOriginalFilename();
		String thFName = "/img/" + "s_" +uuid + upFile.getOriginalFilename();
		ui.setUi_img(fName);
		upFile.transferTo(new File(PATH + fName));
		makeThumbnail(fName, thFName, upFile);
		uis.setUserInfo(ui);
		return 1;
	}

	public void makeThumbnail(String fileName, String thFileName, MultipartFile upFile) {
		try {
			File originalFileNm = new File(PATH + fileName);
			File thumbnailFileNm = new File(PATH + thFileName);
			int width = 50;
			int height = 50; // 썸네일 이미지 생성
			BufferedImage originalImg = ImageIO.read(originalFileNm);
			BufferedImage thumbnailImg = new BufferedImage(width, height, BufferedImage.TYPE_3BYTE_BGR); // 썸네일 그리기
			Graphics2D g = thumbnailImg.createGraphics();
			g.drawImage(originalImg, 0, 0, width, height, null); // 파일생성
			ImageIO.write(thumbnailImg,"png", thumbnailFileNm);
		} catch (Exception e) {
			e.printStackTrace();
		}
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
