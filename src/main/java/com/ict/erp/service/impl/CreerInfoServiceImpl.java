package com.ict.erp.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ict.erp.dao.CreerInfoDAO;
import com.ict.erp.service.CreerInfoService;
import com.ict.erp.vo.CreerInfo;

@Service
public class CreerInfoServiceImpl implements CreerInfoService{

	@Autowired
	private CreerInfoDAO cridao;

	@Override
	public List<CreerInfo> getCreerInfoList(CreerInfo cri) {
		return cridao.selectCreerInfoList(cri);
	}

	@Override
	public CreerInfo getCreerInfo(CreerInfo cri) {
		return cridao.selectCreerInfo(cri);
	}

	@Override
	public int putCreerInfo(CreerInfo cri) {
		return cridao.insertCreerInfo(cri);
	}

	@Override
	public int setCreerInfo(CreerInfo cri) {
		return cridao.updateCreerInfo(cri);
	}

	@Override
	public int removeCreerInfo(CreerInfo cri) {
		return cridao.deleteCreerInfo(cri);
	}
}
