package com.ict.erp.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ict.erp.dao.PjBodyInfoDAO;
import com.ict.erp.dao.PjHeadInfoDAO;
import com.ict.erp.service.HeadPlusBodyService;
import com.ict.erp.vo.HeadPlusBody;
import com.ict.erp.vo.PjBodyInfo;
import com.ict.erp.vo.PjHeadInfo;

@Service("HeadPlusBodyService")
public class HeadPlusBodyIServiceImpl implements HeadPlusBodyService {

	@Autowired 
	private PjHeadInfoDAO pjhdao;
	@Autowired 
	private PjBodyInfoDAO pjbdao;
	private HeadPlusBody hpb;
	
	@Override
	public HeadPlusBody getHeadPlusBody(PjHeadInfo pjh, PjBodyInfo pjb) {
		hpb.setPjh(pjhdao.selectPjHeadInfo(pjh));
		hpb.setPjb(pjbdao.selectPjBodyInfoList(pjb));
		return hpb;
	}

}
