package com.ict.erp.dao;

import java.util.List;

import com.ict.erp.vo.PjBodyInfo;

public interface PjBodyInfoDAO {
	public List<PjBodyInfo> selectPjBodyInfoList(PjBodyInfo pbi);
	public PjBodyInfo selectPjBodyInfo(PjBodyInfo pbi);
	public int insertPjBodyInfo(PjBodyInfo pbi);
	public int updatePjBodyInfo(PjBodyInfo pbi);
	public int deletePjBodyInfo(PjBodyInfo pbi);
}
