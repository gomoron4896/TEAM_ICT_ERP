package com.ict.erp.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.ict.erp.service.PjHeadInfoService;
import com.ict.erp.vo.PjHeadInfo;

@Controller
public class PjHeadInfoController {
	@Autowired
	private PjHeadInfoService phis;

	@RequestMapping(value = "/pjhead", method = RequestMethod.GET)
	public @ResponseBody List<PjHeadInfo> selectUser(@RequestBody(required=false) PjHeadInfo phi) {
		return phis.getPjHeadInfoList(phi);
	}
	@RequestMapping(value = "/pjhead/date", method = RequestMethod.GET)
	public @ResponseBody List<Integer> getLeftDat(@RequestBody(required=false) PjHeadInfo phi) {
		return phis.getLeftDatInfo(phi);
	}
}
