package com.ict.erp.service;

import java.util.List;

import com.ict.erp.vo.CriticInfo;

public interface CriticInfoService {
	public List<CriticInfo> getCriticInfoList(CriticInfo crt);
	public CriticInfo getCriticInfo(CriticInfo crt);
	public int putCriticInfo(CriticInfo crt);
	public int setCriticInfo(CriticInfo crt);
	public int removeCriticInfo(CriticInfo crt);
}
