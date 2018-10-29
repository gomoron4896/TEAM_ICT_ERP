package com.ict.erp.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ict.erp.dao.PjBodyInfoDAO;
import com.ict.erp.service.PjBodyInfoService;
import com.ict.erp.vo.PjBodyInfo;

@Service("PjBodyInfoService")
public class PjBodyInfoServiceImpl implements PjBodyInfoService {

	@Autowired
	private PjBodyInfoDAO pbdao;
	@Override
	public List<PjBodyInfo> getPjBodyInfoList(PjBodyInfo pbi) {
		return pbdao.selectPjBodyInfoList(pbi);
	}

	@Override
	public PjBodyInfo getPjBodyInfo(PjBodyInfo pbi) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public int putPjBodyInfo(PjBodyInfo pbi) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int setPjBodyInfo(PjBodyInfo pbi) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int removePjBodyInfo(PjBodyInfo pbi) {
		// TODO Auto-generated method stub
		return 0;
	}

}
