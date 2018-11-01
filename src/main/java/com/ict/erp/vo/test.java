package com.ict.erp.vo;

public class test {
	private UserInfo ui;
	private CreerInfo ci;
	
	public UserInfo getUi() {
		return ui;
	}
	public void setUi(UserInfo ui) {
		this.ui = ui;
	}
	public CreerInfo getCi() {
		return ci;
	}
	public void setCi(CreerInfo ci) {
		this.ci = ci;
	}
	public test(UserInfo ui, CreerInfo ci) {
		super();
		this.ui = ui;
		this.ci = ci;
	}
	public test() {}
}
