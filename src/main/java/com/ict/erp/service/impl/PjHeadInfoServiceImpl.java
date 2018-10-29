package com.ict.erp.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ict.erp.dao.PjHeadInfoDAO;
import com.ict.erp.service.PjHeadInfoService;
import com.ict.erp.vo.PjHeadInfo;

@Service("PjHeadService")
public class PjHeadInfoServiceImpl implements PjHeadInfoService{

	@Autowired
	private PjHeadInfoDAO phdao;
	
	@Override
	public List<PjHeadInfo> getPjHeadInfoList(PjHeadInfo phi) {
		return phdao.selectPjHeadInfoList(phi);
	}

	@Override
	public PjHeadInfo getPjHeadInfo(PjHeadInfo phi) {
		return phdao.selectPjHeadInfo(phi);
	}

	@Override
	public int putPjHeadInfo(PjHeadInfo phi) {
		return phdao.insertPjHeadInfo(phi);
	}

	@Override
	public int setPjHeadInfo(PjHeadInfo phi) {
		return phdao.updatePjHeadInfo(phi);
	}

	@Override
	public int removePjHeadInfo(PjHeadInfo phi) {
		return phdao.deletePjHeadInfo(phi);
	}

}
