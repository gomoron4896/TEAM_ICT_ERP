package com.ict.erp.dao;

import java.util.List;

import com.ict.erp.vo.CreerInfo;

public interface CreerInfoDAO {
	public List<CreerInfo> selectCreerInfoList(CreerInfo cri);
	public CreerInfo selectCreerInfo(CreerInfo cri);
	public int insertCreerInfo(CreerInfo cri);
	public int updateCreerInfo(CreerInfo cri);
	public int deleteCreerInfo(CreerInfo cri);
}
