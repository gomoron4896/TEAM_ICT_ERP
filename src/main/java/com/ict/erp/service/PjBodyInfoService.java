package com.ict.erp.service;

import java.util.List;

import com.ict.erp.vo.PjBodyInfo;

public interface PjBodyInfoService {
	public List<PjBodyInfo> getPjBodyInfoList(PjBodyInfo pbi);
	public PjBodyInfo getPjBodyInfo(PjBodyInfo pbi);
	public int putPjBodyInfo(PjBodyInfo pbi);
	public int setPjBodyInfo(PjBodyInfo pbi);
	public int removePjBodyInfo(PjBodyInfo pbi);
}
