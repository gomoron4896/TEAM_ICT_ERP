package com.ict.erp.controller;

import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.ict.erp.service.FileUploadService;
import com.ict.erp.service.UserInfoService;
import com.ict.erp.vo.PjBodyInfo;
import com.ict.erp.vo.UserInfo;

@Controller
public class FileUploadController {
	private static final String PATH = "C:\\jsp_study\\workspace\\git\\ict1-erp1\\src\\main\\webapp\\resources";
	private static final String LINE_SEPARATOR = System.getProperty("line.separator");

	@Autowired
	private FileUploadService fus;

	@Autowired
	private UserInfoService uis;

	@RequestMapping(value = "/saveText", method = RequestMethod.POST)
	public ModelAndView putContract1(@RequestBody String story) throws IOException {
		System.out.println(story);
		String str = story;
		fus.putStory(str);
		// insert 추가
		ModelAndView mv = new ModelAndView();
		mv.addObject("story", story);
		return mv;
	}

	@RequestMapping(value = "/updateUser", method = RequestMethod.POST)
	public @ResponseBody Integer action(@RequestParam("ui_up_img") MultipartFile upFile, HttpServletRequest request,
			@ModelAttribute UserInfo ui) throws Exception {
		request.setCharacterEncoding("utf-8");
		fus.updateUserProfile(upFile, ui);
		return uis.setUserInfo(ui);
	}

	@RequestMapping(value = "/test", method = RequestMethod.POST)
	public void communityImageUpload(HttpServletRequest request, HttpServletResponse response,
			@RequestParam MultipartFile upload) {
		response.setCharacterEncoding("utf-8");
		response.setContentType("text/html;charset=utf-8");
	}

	@RequestMapping(value = "/Content", method = RequestMethod.GET)
	public @ResponseBody String parseContents(@RequestBody PjBodyInfo pjb) {
		return fus.parseContent(pjb.getPjb_text());
	}
}
