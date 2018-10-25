package com.ict.erp.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ict.erp.dao.UserInfoDAO;
import com.ict.erp.service.UserInfoService;
import com.ict.erp.vo.UserInfo;

@Service("UserInfoService")
public class UserInfoServiceImpl implements UserInfoService {

	@Autowired
	private UserInfoDAO udao;
	
	@Override
	public List<UserInfo> getUserInfoList(UserInfo ui) {
		return udao.selectUserInfoList(ui);
	}

	@Override
	public UserInfo getUserInfo(UserInfo ui) {
		return udao.selectUserInfo(ui);
	}

	@Override
	public int putUserInfo(UserInfo ui) {
		return udao.insertUserInfo(ui);
	}

	@Override
	public int setUserInfo(UserInfo ui) {
		return udao.updateUserInfo(ui);
	}

	@Override
	public int removeUserInfo(UserInfo ui) {
		return udao.deleteUserInfo(ui);
	}

}
