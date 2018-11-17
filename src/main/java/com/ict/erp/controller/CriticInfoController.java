package com.ict.erp.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.ict.erp.service.CriticInfoService;
import com.ict.erp.vo.CriticInfo;

@Controller
public class CriticInfoController {
	
	@Autowired
	private CriticInfoService crts;

	@RequestMapping(value = "/critic", method = RequestMethod.POST)
	public @ResponseBody Integer putCritic(@RequestBody CriticInfo crt) {
		return 1;
	}
}
