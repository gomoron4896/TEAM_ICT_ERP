package com.ict.erp.service;

import com.ict.erp.vo.HeadPlusBody;
import com.ict.erp.vo.PjBodyInfo;
import com.ict.erp.vo.PjHeadInfo;

public interface HeadPlusBodyService {

	public HeadPlusBody getHeadPlusBody(PjHeadInfo pjh, PjBodyInfo pjb);
}
