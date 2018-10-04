package com.ict.erp.dao.impl;

import java.util.ArrayList;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.ict.erp.dao.LevelInfoDAO;
import com.ict.erp.vo.LevelInfo;

@Repository("LevelInfoDAO")
public class LevelInfoDAOImpl implements LevelInfoDAO {
	
	@Autowired
	private SqlSession sqls;

	@Override
	public List<LevelInfo> selectLevelInfoList(LevelInfo li) {
		List<LevelInfo> liList = new ArrayList<LevelInfo>();
		liList = sqls.selectList("SQL.LEVELINFO.selectLevelInfo", li);
		return liList;
	}

	@Override
	public LevelInfo selectLevelInfo(LevelInfo li) {
		return sqls.selectOne("SQL.LEVELINFO.selectLevelInfo", li);
	}

	@Override
	public int insertLevelInfo(LevelInfo li) {
		return sqls.insert("SQL.LEVELINFO.insertLevelInfo", li);
	}

	@Override
	public int updateLevelInfo(LevelInfo li) {
		return sqls.update("SQL.LEVELINFO.updateLevelInfo", li);
	}

	@Override
	public int deleteLevelInfo(LevelInfo li) {
		return sqls.delete("SQL.LEVELINFO.deleteLevelInfo", li);
	}
	
	

}
