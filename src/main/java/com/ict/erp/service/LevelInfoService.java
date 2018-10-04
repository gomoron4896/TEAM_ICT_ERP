package com.ict.erp.service;

import java.util.List;
import java.util.Map;

import com.ict.erp.vo.LevelInfo;

public interface LevelInfoService {
	
	public List<LevelInfo> getLevelInfoList(LevelInfo li);
	public LevelInfo getLevelInfo(LevelInfo li);
	public Map<String, Object>putLevelInfo(LevelInfo li);
	public Map<String, Object> setLevelInfo(LevelInfo li);
	public Map<String, Object> removeLevelInfo(LevelInfo li);

}
