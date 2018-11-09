package com.ict.erp.dao.impl;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.ict.erp.dao.PjHeadInfoDAO;
import com.ict.erp.vo.PjHeadInfo;

@Repository("PjHeadInfoDAO")
public class PjHeadInfoDAOImpl implements PjHeadInfoDAO{

	@Autowired
	private SqlSession ss;
	
	@Override
	public List<PjHeadInfo> selectPjHeadInfoList(PjHeadInfo phi) {
		return ss.selectList("SQL.PJHEADINFO.selectPjHeadInfoList", phi);
	}

	@Override
	public PjHeadInfo selectPjHeadInfo(PjHeadInfo phi) {
		return ss.selectOne("SQL.PJHEADINFO.selectPjHeadInfo", phi);
	}

	@Override
	public int insertPjHeadInfo(PjHeadInfo phi) {
		return ss.insert("SQL.PJHEADINFO.insertPjHeadInfo", phi);
	}

	@Override
	public int updatePjHeadInfo(PjHeadInfo phi) {
		return ss.update("SQL.PJHEADINFO.updatePjHeadInfo", phi);
	}

	@Override
	public int deletePjHeadInfo(PjHeadInfo phi) {
		return ss.delete("SQL.PJHEADINFO.deletePjHeadInfo", phi);
	}

	@Override
	public List<Integer> selectLeftDatInfo(PjHeadInfo phi) {
		return ss.selectList("SQL.PJHEADINFO.selectLeftDatInfo", phi);
	}

}
