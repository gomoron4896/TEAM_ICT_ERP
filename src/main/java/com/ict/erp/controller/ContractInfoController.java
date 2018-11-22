package com.ict.erp.controller;

import java.io.File;
import java.io.FileWriter;
import java.io.IOException;
import java.util.UUID;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.ict.erp.service.ContractInfoService;
import com.ict.erp.vo.ContractInfo;

@Controller
public class ContractInfoController {
	private static final String LINE_SEPARATOR = System.getProperty("line.separator");

	@Autowired
	private ContractInfoService ctis;

	@RequestMapping(value = "/contract", method = RequestMethod.POST)
	public @ResponseBody Integer putContract(@RequestBody ContractInfo cti) {
		return null;
	}

	@RequestMapping(value = "/saveText", method = RequestMethod.POST)
	public ModelAndView putContract1(@RequestBody String story) throws IOException {
		System.out.println(story);
		final String UUIDUserToken = UUID.randomUUID().toString();
		File file = new File("C:/jsp_study/workspace/git/ict1-erp1/src/main/webapp/resources/text/"+UUIDUserToken+".html");
		
		FileWriter fw = new FileWriter(file, true);
		fw.write("<%@ page language=\"java\" contentType=\"text/html; charset=UTF-8\" pageEncoding=\"UTF-8\"%>");
		fw.write(LINE_SEPARATOR);
		fw.write(story);
		fw.flush();
		fw.close();
		//insert 추가
		ModelAndView mv = new ModelAndView();
		mv.setViewName("/");
		mv.addObject("story",story);
		System.out.println(mv);
		return mv;
	}
}