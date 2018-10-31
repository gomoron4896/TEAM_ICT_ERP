package com.ict.erp.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ict.erp.dao.CriticInfoDAO;
import com.ict.erp.service.CriticInfoService;
import com.ict.erp.vo.CriticInfo;

@Service("CriticInfoService")
public class CriticInfoServiceImpl implements CriticInfoService{

	@Autowired
	private CriticInfoDAO crtdao;
	
	@Override
	public List<CriticInfo> getCriticInfoList(CriticInfo crt) {
		return crtdao.selectCriticInfoList(crt);
	}

	@Override
	public CriticInfo getCriticInfo(CriticInfo crt) {
		return crtdao.selectCriticInfo(crt);
	}

	@Override
	public int putCriticInfo(CriticInfo crt) {
		return crtdao.insertCriticInfo(crt);
	}

	@Override
	public int setCriticInfo(CriticInfo crt) {
		return crtdao.updateCriticInfo(crt);
	}

	@Override
	public int removeCriticInfo(CriticInfo crt) {
		return crtdao.deleteCriticInfo(crt);
	}

}
