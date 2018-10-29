package com.ict.erp.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.ict.erp.service.PjBodyInfoService;
import com.ict.erp.vo.PjBodyInfo;


public class PjBodyInfoController {
	@Autowired
	private PjBodyInfoService pbis;

	@RequestMapping(value = "/pjbody", method = RequestMethod.POST)
	public @ResponseBody List<PjBodyInfo> putUser2(@RequestBody PjBodyInfo pbi) {
		return pbis.getPjBodyInfoList(pbi);
	}
}
