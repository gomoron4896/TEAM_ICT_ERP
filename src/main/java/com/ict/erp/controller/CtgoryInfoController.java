package com.ict.erp.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.ict.erp.service.CtgoryInfoService;
import com.ict.erp.vo.CtgoryInfo;

@Controller
public class CtgoryInfoController {
	@Autowired
	private CtgoryInfoService uis;

	@RequestMapping(value = "/category", method = RequestMethod.POST)
	public @ResponseBody Integer putCtgory(@RequestBody CtgoryInfo ci) {
		return null;
	}
}
