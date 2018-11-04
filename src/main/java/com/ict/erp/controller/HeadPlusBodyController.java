package com.ict.erp.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.ict.erp.service.HeadPlusBodyService;
import com.ict.erp.vo.HeadPlusBody;
import com.ict.erp.vo.PjBodyInfo;
import com.ict.erp.vo.PjHeadInfo;
@Controller
public class HeadPlusBodyController {
	@Autowired
	private HeadPlusBodyService hpbs;
	@Autowired
	private PjHeadInfo pjh;
	@Autowired
	private PjBodyInfo pjb;
	
	
	@RequestMapping(value = "/headbody/{pjh_num}", method = RequestMethod.GET)
	public @ResponseBody HeadPlusBody getViewPage(@PathVariable int pjh_num) {
		pjh.setPjh_num(pjh_num);
		pjb.setPjh_num(pjh_num);
		return hpbs.getHeadPlusBody(pjh, pjb);
	}
}
