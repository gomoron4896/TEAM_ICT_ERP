package com.ict.erp.service;

import java.util.List;

import com.ict.erp.vo.PjHeadInfo;

public interface PjHeadInfoService {
	public List<PjHeadInfo> getPjHeadInfoList(PjHeadInfo phi);
	public PjHeadInfo getPjHeadInfo(PjHeadInfo phi);
	public int putPjHeadInfo(PjHeadInfo phi);
	public int setPjHeadInfo(PjHeadInfo phi);
	public int removePjHeadInfo(PjHeadInfo phi);
}
