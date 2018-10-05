package com.ict.erp.controller;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.ict.erp.service.LevelInfoService;
import com.ict.erp.vo.LevelInfo;
import com.zaxxer.hikari.HikariConfig;

@Controller
public class LevelInfoController {
	
	public void test() {
		HikariConfig hikariConfig = new HikariConfig();
		hikariConfig.setDriverClassName("oracle.jdbc.OracleDriver");
	}
	
	
	

	@Autowired
	private LevelInfoService lis;

	@Autowired
	private LevelInfo li;

	@RequestMapping(value = "/levelinfo/", method = RequestMethod.GET)
	@ResponseBody public List<LevelInfo> getLevelInfoList(@ModelAttribute LevelInfo li) {
		return lis.getLevelInfoList(li);
	}
	
	@RequestMapping(value = "/levelinfo/{linum}", method = RequestMethod.GET)
	@ResponseBody public LevelInfo getLevelInfo(@PathVariable Integer linum) {
		li.setLinum(linum);
		return lis.getLevelInfo(li);
	}
	
	@RequestMapping(value = "/levelinfo/", method = RequestMethod.POST)
	public ModelAndView putLevelInfo(ModelAndView mv, @RequestBody LevelInfo li) {
		mv.setViewName("/levelinfo/insert");
		mv.addObject("rMap", lis.putLevelInfo(li));
		return mv;
	}
	
	@RequestMapping(value = "/levelinfo/{linum}", method = RequestMethod.PUT)
	public @ResponseBody int setLevelInfo(@PathVariable String linum, @RequestBody LevelInfo li) {
		
		return (int)lis.setLevelInfo(li).get("rCnt");
	}
	
	@RequestMapping(value = "/levelinfo/", method = RequestMethod.DELETE)
	@ResponseBody public Map<String, Object> removeLevelInfo(@RequestBody LevelInfo li, HttpServletResponse res) {
		System.out.println(li);
		return lis.removeLevelInfo(li);
	}

}
