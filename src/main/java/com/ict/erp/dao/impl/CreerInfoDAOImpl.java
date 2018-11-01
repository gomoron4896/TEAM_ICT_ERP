package com.ict.erp.dao.impl;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.ict.erp.dao.CreerInfoDAO;
import com.ict.erp.vo.CreerInfo;
import com.ict.erp.vo.UserInfo;

@Repository("CreerInfoDAO")
public class CreerInfoDAOImpl implements CreerInfoDAO {

	@Autowired
	private SqlSession ss;
	
	@Override
	public List<CreerInfo> selectCreerInfoList(CreerInfo cri) {
		return ss.selectList("SQL.CREERINFO.selectCreerInfoList", cri);
	}

	@Override
	public CreerInfo selectCreerInfo(CreerInfo cri) {
		return ss.selectOne("SQL.CREERINFO.selectCreerInfo", cri);
	}

	@Override
	public int insertCreerInfo(CreerInfo cri) {
		return ss.insert("SQL.CREERINFO.insertCreerInfoList", cri);
	}

	@Override
	public int updateCreerInfo(CreerInfo cri) {
		return ss.update("SQL.CREERINFO.updateCreerInfoList", cri);
	}

	@Override
	public int deleteCreerInfo(CreerInfo cri) {
		return ss.delete("SQL.CREERINFO.deleteCreerInfo", cri);
	}

	@Override
	public List<CreerInfo> selectCreerUserInfoList(CreerInfo cri, UserInfo ui) {
		return ss.selectList("SQL.CREERINFO.selectUserCreerInfoList", cri);
	}

}
