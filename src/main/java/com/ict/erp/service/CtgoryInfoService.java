package com.ict.erp.service;

import java.util.List;

import com.ict.erp.vo.CtgoryInfo;

public interface CtgoryInfoService {
	public List<CtgoryInfo> getCtgoryInfoList(CtgoryInfo ci);
	public CtgoryInfo getCtgoryInfo(CtgoryInfo ci);
	public int putCtgoryInfo(CtgoryInfo ci);
	public int setCtgoryInfo(CtgoryInfo ci);
	public int removeCtgoryInfo(CtgoryInfo ci);
}
