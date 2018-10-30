package com.ict.erp.dao.impl;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.ict.erp.dao.UpdateInfoDAO;
import com.ict.erp.vo.UpdateInfo;

@Repository("UpdateInfoDAO")
public class UpdateInfoDAOImpl implements UpdateInfoDAO {

	@Autowired
	private SqlSession ss;
	
	@Override
	public List<UpdateInfo> selectUpdateInfoList(UpdateInfo upi) {
		return ss.selectList("SQL.UPDATEINFO.selectUserInfoList", upi);
	}

	@Override
	public UpdateInfo selectUpdateInfo(UpdateInfo upi) {
		return ss.selectOne("SQL.UPDATEINFO.selectUserInfo", upi);
	}

	@Override
	public int insertUpdateInfo(UpdateInfo upi) {
		return ss.insert("SQL.UPDATEINFO.insertUserInfo", upi);
	}

	@Override
	public int updatePjUpdateInfo(UpdateInfo upi) {
		return ss.update("SQL.UPDATEINFO.updateUserInfo", upi);
	}

	@Override
	public int deleteUpdateInfo(UpdateInfo upi) {
		return ss.delete("SQL.UPDATEINFO.deleteUserInfo", upi);
	}

}
