package com.ict.erp.service;

import java.util.List;

import com.ict.erp.vo.CreerInfo;

public interface CreerInfoService {

	public List<CreerInfo> getCreerInfoList(CreerInfo cri);
	public CreerInfo getCreerInfo(CreerInfo cri);
	public int putCreerInfo(CreerInfo cri);
	public int setCreerInfo(CreerInfo cri);
	public int removeCreerInfo(CreerInfo cri);
	
}
