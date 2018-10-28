package com.ict.erp.dao.impl;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.ict.erp.dao.CtgoryInfoDAO;
import com.ict.erp.vo.CtgoryInfo;

@Repository("CtgoryInfoDAO")
public class CtgoryInfoDAOImpl implements CtgoryInfoDAO {

	@Autowired
	private SqlSession ss;
	
	@Override
	public List<CtgoryInfo> selectCtgoryInfoList(CtgoryInfo ci) {
		return ss.selectList("SQL.CTGORYINFO.selectCtgoryInfoList",ci);
	}

	@Override
	public CtgoryInfo selectCtgoryInfo(CtgoryInfo ci) {
		return ss.selectOne("SQL.CTGORYINFO.selectCtgoryInfo", ci);
	}

	@Override
	public int insertCtgoryInfo(CtgoryInfo ci) {
		return ss.insert("SQL.CTGORYINFO.insertCtgoryInfo", ci);
	}

	@Override
	public int updateCtgoryInfo(CtgoryInfo ci) {
		return ss.update("SQL.CTGORYINFO.updateCtgoryInfo", ci);
	}

	@Override
	public int deleteCtgoryInfo(CtgoryInfo ci) {
		return ss.delete("SQL.CTGORYINFO.deleteCtgoryInfo", ci);
	}

}
