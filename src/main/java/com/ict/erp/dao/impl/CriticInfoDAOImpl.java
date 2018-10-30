package com.ict.erp.dao.impl;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.ict.erp.dao.CriticInfoDAO;
import com.ict.erp.vo.CriticInfo;

@Repository("CriticInfoDAO")
public class CriticInfoDAOImpl implements CriticInfoDAO {

	@Autowired
	private SqlSession ss;
	
	@Override
	public List<CriticInfo> selectCriticInfoList(CriticInfo crt) {
		return ss.selectList("SQL.CRITICINFO.selectCriticInfoList", crt);
	}

	@Override
	public CriticInfo selectCriticInfo(CriticInfo crt) {
		return ss.selectOne("SQL.CRITICINFO.selectCriticInfo", crt);
	}

	@Override
	public int insertCriticInfo(CriticInfo crt) {
		return ss.insert("SQL.CRITICINFO.insertCriticInfoList", crt);
	}

	@Override
	public int updateCriticInfo(CriticInfo crt) {
		return ss.update("SQL.CRITICINFO.updateCriticInfoList", crt);
	}

	@Override
	public int deleteCriticInfo(CriticInfo crt) {
		return ss.delete("SQL.CRITICINFO.deleteCriticInfo", crt);
	}

}
