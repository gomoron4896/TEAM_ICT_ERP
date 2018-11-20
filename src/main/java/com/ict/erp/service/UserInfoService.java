package com.ict.erp.service;

import java.util.List;
import java.util.Map;

import com.ict.erp.vo.UserInfo;

public interface UserInfoService {
	public List<UserInfo> getUserInfoList(UserInfo ui);
	public UserInfo getUserInfo(UserInfo ui);
	public UserInfo getUserImg(UserInfo ui);
	public int putUserInfo(UserInfo ui);
	public int setUserInfo(UserInfo ui);
	public int removeUserInfo(UserInfo ui);
}
