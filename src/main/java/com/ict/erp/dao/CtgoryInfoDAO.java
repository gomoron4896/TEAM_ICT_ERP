package com.ict.erp.dao;

import java.util.List;

import com.ict.erp.vo.CtgoryInfo;

public interface CtgoryInfoDAO {
	public List<CtgoryInfo> selectCtgoryInfoList(CtgoryInfo ci);
	public CtgoryInfo selectCtgoryInfo(CtgoryInfo ci);
	public int insertCtgoryInfo(CtgoryInfo ci);
	public int updateCtgoryInfo(CtgoryInfo ci);
	public int deleteCtgoryInfo(CtgoryInfo ci);
}
