package com.ict.erp.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.ict.erp.service.CreerInfoService;
import com.ict.erp.vo.CreerInfo;
import com.ict.erp.vo.UserInfo;

@Controller
public class CreerInfoController {

	@Autowired
	private CreerInfoService cris;

	@RequestMapping(value = "/creer", method = RequestMethod.POST)
	public @ResponseBody Integer putCreer(@RequestBody CreerInfo cri) {
		return null;
	}
	
	@RequestMapping(value = "/creer/1", method = RequestMethod.GET)
	@ResponseBody public List<CreerInfo> getLevelInfo(@ModelAttribute CreerInfo ci) {
		System.out.println(ci.getUi_num());
		System.out.println(ci.getUi());
		
		return cris.getCreerUserInfoList(null, null);
	}
}

