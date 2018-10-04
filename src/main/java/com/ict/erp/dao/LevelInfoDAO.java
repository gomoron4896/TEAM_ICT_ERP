package com.ict.erp.dao;

import java.util.List;

import com.ict.erp.vo.LevelInfo;

public interface LevelInfoDAO {

	public List<LevelInfo> selectLevelInfoList(LevelInfo li);
	public LevelInfo selectLevelInfo(LevelInfo li);
	public int insertLevelInfo(LevelInfo li);
	public int updateLevelInfo(LevelInfo li);
	public int deleteLevelInfo(LevelInfo li);
	
	
}
