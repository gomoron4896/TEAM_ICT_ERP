package com.ict.erp.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.ict.erp.service.UpdateInfoService;
import com.ict.erp.vo.UpdateInfo;

public class UpdateController {
	@Autowired
	private UpdateInfoService upis;

	@RequestMapping(value = "/updatepj", method = RequestMethod.POST)
	public @ResponseBody Integer putUpdatePj(@RequestBody UpdateInfo upi) {
		return null;
	}
}
