package com.ict.erp.service;

import java.util.List;

import com.ict.erp.vo.UpdateInfo;

public interface UpdateInfoService {
	public List<UpdateInfo> getUpdateInfoList(UpdateInfo upi);
	public UpdateInfo getUpdateInfo(UpdateInfo upi);
	public int putUpdateInfo(UpdateInfo upi);
	public int setUpdateInfo(UpdateInfo upi);
	public int removeUpdateInfo(UpdateInfo upi);
}
