package com.ict.erp.vo;

import java.util.List;

import org.apache.ibatis.type.Alias;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

@Component
@Alias("hpb")
public class HeadPlusBody {
	
	@Autowired
	private PjHeadInfo pjh;
	
	@Autowired
	private List<PjBodyInfo> pjb;

	public PjHeadInfo getPjh() {
		return pjh;
	}

	public void setPjh(PjHeadInfo pjh) {
		this.pjh = pjh;
	}

	public List<PjBodyInfo> getPjb() {
		return pjb;
	}

	public void setPjb(List<PjBodyInfo> pjb) {
		this.pjb = pjb;
	}
}
