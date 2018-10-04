package com.ict.erp.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.ict.erp.service.LevelInfoService;
import com.ict.erp.vo.LevelInfo;

@Controller
public class LevelInfoController {

	@Autowired
	private LevelInfoService lis;

	@Autowired
	private LevelInfo li;

	@RequestMapping(value = "/levelinfo/list", method = RequestMethod.GET)
	public String getLevelInfoList(Model model, @ModelAttribute LevelInfo li) {
		model.addAttribute("liList", lis.getLevelInfoList(li));
		return "/levelinfo/list";
	}
	
	@RequestMapping(value = "/levelinfo/view", method = RequestMethod.GET)
	public ModelAndView getLevelInfo(ModelAndView mv, @ModelAttribute LevelInfo li) {
		mv.setViewName("/levelinfo");
		mv.addObject(lis.getLevelInfo(li));
		return mv;
	}
	
	@RequestMapping(value = "/levelinfo/insert", method = RequestMethod.POST)
	public ModelAndView putLevelInfo(ModelAndView mv, @ModelAttribute LevelInfo li) {
		mv.setViewName("/levelinfo/insert");
		mv.addObject("rMap", lis.putLevelInfo(li));
		return mv;
	}
	
	@RequestMapping(value = "/levelinfo/update", method = RequestMethod.POST)
	public ModelAndView setLevelInfo(ModelAndView mv, @ModelAttribute LevelInfo li) {
		mv.setViewName("/levelinfo/list");
		mv.addObject("rMap", lis.setLevelInfo(li));
		return mv;
	}
	
	@RequestMapping(value = "/levelinfo/delete", method = RequestMethod.POST)
	public ModelAndView removeLevelInfo(ModelAndView mv, @ModelAttribute LevelInfo li) {
		mv.setViewName("/levelinfo");
		mv.addObject("rMap", lis.removeLevelInfo(li));
		return mv;
	}

}
