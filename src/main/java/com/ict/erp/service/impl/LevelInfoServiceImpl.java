package com.ict.erp.service.impl;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ict.erp.dao.LevelInfoDAO;
import com.ict.erp.service.LevelInfoService;
import com.ict.erp.vo.LevelInfo;

@Service("LevelInfoService")
public class LevelInfoServiceImpl implements LevelInfoService {
	
	@Autowired
	private LevelInfoDAO lidao;

	@Override
	public List<LevelInfo> getLevelInfoList(LevelInfo li) {
		return lidao.selectLevelInfoList(li);
	}

	@Override
	public LevelInfo getLevelInfo(LevelInfo li) {
		return lidao.selectLevelInfo(li);
	}

	@Override
	public Map<String, Object> putLevelInfo(LevelInfo li) {
		Map<String, Object> rMap = new HashMap<String, Object>();
		rMap.put("rCnt", lidao.insertLevelInfo(li));
		if((Integer)rMap.get("rCnt") == 1) {
			rMap.put("msg", "입력 성공");
		} else {
			rMap.put("msg", "입력 실패");
		}
		return rMap;
	}

	@Override
	public Map<String, Object> setLevelInfo(LevelInfo li) {
		Map<String, Object> rMap = new HashMap<String, Object>();
		rMap.put("rCnt", lidao.updateLevelInfo(li));
		if((Integer)rMap.get("rCnt") == 1) {
			rMap.put("msg", "수정 성공");
		} else {
			rMap.put("msg", "수정 실패");
		}
		return rMap;
	}

	@Override
	public Map<String, Object> removeLevelInfo(LevelInfo li) {
		Map<String, Object> rMap = new HashMap<String, Object>();
		rMap.put("rCnt", lidao.deleteLevelInfo(li));
		if((Integer)rMap.get("rCnt") == 1) {
			rMap.put("msg", "삭제 성공");
		} else {
			rMap.put("msg", "삭제 실패");
		}
		return rMap;
	}

}
