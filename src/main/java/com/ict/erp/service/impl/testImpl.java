package com.ict.erp.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;

import com.ict.erp.dao.impl.CreerInfoDAOImpl;
import com.ict.erp.dao.impl.UserInfoDAOImpl;
import com.ict.erp.vo.PjHeadInfo;
import com.ict.erp.vo.test;

public class testImpl {
	
	@Autowired
	UserInfoDAOImpl udao;
	
	@Autowired
	CreerInfoDAOImpl crdao;
	
	public List<test> getTestInfo(PjHeadInfo pjhi) {
		
		
		return null;
	}
	

}
