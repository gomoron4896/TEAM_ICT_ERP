package com.ict.erp.controller;

import java.io.File;
import java.io.FileWriter;
import java.io.IOException;
import java.util.UUID;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

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

	@RequestMapping(value = "/saveText", method = RequestMethod.POST)
	public @ResponseBody Integer putContract1(@RequestBody ContractInfo cti) throws IOException {
		System.out.println(cti.getCont_text());
		final String UUIDUserToken = UUID.randomUUID().toString();
		File file = new File("C:/jsp_study/workspace/git/ict1-erp1/src/main/webapp/resources/text/"+UUIDUserToken+".html");
		FileWriter fw = new FileWriter(file, true);
		fw.write(cti.getCont_text());
		fw.flush();
		fw.close();
		
		return 1;
	}
}
