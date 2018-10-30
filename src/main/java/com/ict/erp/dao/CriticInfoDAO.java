package com.ict.erp.dao;

import java.util.List;

import com.ict.erp.vo.CriticInfo;

public interface CriticInfoDAO {
	public List<CriticInfo> selectCriticInfoList(CriticInfo crt);
	public CriticInfo selectCriticInfo(CriticInfo crt);
	public int insertCriticInfo(CriticInfo crt);
	public int updateCriticInfo(CriticInfo crt);
	public int deleteCriticInfo(CriticInfo crt);
}
