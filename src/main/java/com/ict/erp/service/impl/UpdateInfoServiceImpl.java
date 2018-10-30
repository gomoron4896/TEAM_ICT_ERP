package com.ict.erp.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ict.erp.dao.UpdateInfoDAO;
import com.ict.erp.service.UpdateInfoService;
import com.ict.erp.vo.UpdateInfo;

@Service("UpdateInfoService")
public class UpdateInfoServiceImpl implements UpdateInfoService{

	@Autowired
	private UpdateInfoDAO updao;
	
	@Override
	public List<UpdateInfo> getUpdateInfoList(UpdateInfo upi) {
		return updao.selectUpdateInfoList(upi);
	}

	@Override
	public UpdateInfo getUpdateInfo(UpdateInfo upi) {
		return updao.selectUpdateInfo(upi);
	}

	@Override
	public int putUpdateInfo(UpdateInfo upi) {
		return updao.insertUpdateInfo(upi);
	}

	@Override
	public int setUpdateInfo(UpdateInfo upi) {
		return updao.updatePjUpdateInfo(upi);
	}
	
	@Override
	public int removeUpdateInfo(UpdateInfo upi) {
		return updao.deleteUpdateInfo(upi);
	}

}
