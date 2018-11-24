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

	@Autowired
	private ContractInfoService ctis;

	@RequestMapping(value = "/contract", method = RequestMethod.POST)
	public @ResponseBody Integer putContract(@RequestBody ContractInfo cti) {
		return null;
	}

	
}