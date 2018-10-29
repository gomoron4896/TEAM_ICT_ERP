package com.ict.erp.dao;

import java.util.List;

import com.ict.erp.vo.PjHeadInfo;

public interface PjHeadInfoDAO {
	public List<PjHeadInfo> selectPjHeadInfoList(PjHeadInfo phi);
	public PjHeadInfo selectPjHeadInfo(PjHeadInfo phi);
	public int insertPjHeadInfo(PjHeadInfo phi);
	public int updatePjHeadInfo(PjHeadInfo phi);
	public int deletePjHeadInfo(PjHeadInfo phi);
}
