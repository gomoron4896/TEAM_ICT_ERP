package com.ict.erp.dao;

import java.util.List;

import com.ict.erp.vo.UpdateInfo;

public interface UpdateInfoDAO {
	public List<UpdateInfo> selectUpdateInfoList(UpdateInfo upi);
	public UpdateInfo selectUpdateInfo(UpdateInfo upi);
	public int insertUpdateInfo(UpdateInfo upi);
	public int updatePjUpdateInfo(UpdateInfo upi);
	public int deleteUpdateInfo(UpdateInfo upi);
}
