package com.ict.erp.dao.impl;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.ict.erp.dao.PjBodyInfoDAO;
import com.ict.erp.vo.PjBodyInfo;

@Repository("PjBodyInfoDAO")
public class PjBodyInfoDAOImpl implements PjBodyInfoDAO{

	@Autowired
	private SqlSession ss;
	
	@Override
	public List<PjBodyInfo> selectPjBodyInfoList(PjBodyInfo pbi) {
		return ss.selectList("SQL.PJBODYINFO.selectPjBodyInfoList", pbi);
	}

	@Override
	public PjBodyInfo selectPjBodyInfo(PjBodyInfo pbi) {
		return ss.selectOne("SQL.PJBODYINFO.selectPjBodyInfo", pbi);
	}

	@Override
	public int insertPjBodyInfo(PjBodyInfo pbi) {
		return ss.insert("SQL.PJBODYINFO.insertPjBodyInfo", pbi);
	}

	@Override
	public int updatePjBodyInfo(PjBodyInfo pbi) {
		return ss.update("SQL.PJBODYINFO.updatePjBodyInfo", pbi);
	}

	@Override
	public int deletePjBodyInfo(PjBodyInfo pbi) {
		return ss.delete("SQL.PJBODYINFO.deletePjBodyInfo", pbi);
	}

}
