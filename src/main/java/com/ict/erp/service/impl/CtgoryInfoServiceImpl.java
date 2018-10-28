package com.ict.erp.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ict.erp.dao.CtgoryInfoDAO;
import com.ict.erp.service.CtgoryInfoService;
import com.ict.erp.vo.CtgoryInfo;

@Service("CtgoryInfoService")
public class CtgoryInfoServiceImpl implements CtgoryInfoService{
	
	@Autowired
	private CtgoryInfoDAO ctdao;
	
	@Override
	public List<CtgoryInfo> getCtgoryInfoList(CtgoryInfo ci) {
		return ctdao.selectCtgoryInfoList(ci);
	}

	@Override
	public CtgoryInfo getCtgoryInfo(CtgoryInfo ci) {
		return ctdao.selectCtgoryInfo(ci);
	}

	@Override
	public int putCtgoryInfo(CtgoryInfo ci) {
		return ctdao.insertCtgoryInfo(ci);
	}

	@Override
	public int setCtgoryInfo(CtgoryInfo ci) {
		return ctdao.updateCtgoryInfo(ci);
	}

	@Override
	public int removeCtgoryInfo(CtgoryInfo ci) {
		return ctdao.deleteCtgoryInfo(ci);
	}

}
