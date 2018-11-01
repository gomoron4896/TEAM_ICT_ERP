package com.ict.erp.vo;

import org.apache.ibatis.type.Alias;
import org.springframework.stereotype.Component;

@Component
@Alias("Cri")
public class CreerInfo {
	private Integer crr_num;
	private Integer ui_num;
	private Integer crr_age;
	private String crr_addr;
	private String crr_job;
	private String crr_exp;
	private String crr_desc;
	private UserInfo ui;

	public UserInfo getUi() {
		return ui;
	}
	public void setUi(UserInfo ui) {
		this.ui = ui;
	}
	public Integer getCrr_num() {
		return crr_num;
	}
	public void setCrr_num(Integer crr_num) {
		this.crr_num = crr_num;
	}
	public Integer getUi_num() {
		return ui_num;
	}
	public void setUi_num(Integer ui_num) {
		this.ui_num = ui_num;
	}
	public Integer getCrr_age() {
		return crr_age;
	}
	public void setCrr_age(Integer crr_age) {
		this.crr_age = crr_age;
	}
	public String getCrr_addr() {
		return crr_addr;
	}
	public void setCrr_addr(String crr_addr) {
		this.crr_addr = crr_addr;
	}
	public String getCrr_job() {
		return crr_job;
	}
	public void setCrr_job(String crr_job) {
		this.crr_job = crr_job;
	}
	public String getCrr_exp() {
		return crr_exp;
	}
	public void setCrr_exp(String crr_exp) {
		this.crr_exp = crr_exp;
	}
	public String getCrr_desc() {
		return crr_desc;
	}
	public void setCrr_desc(String crr_desc) {
		this.crr_desc = crr_desc;
	}
	@Override
	public String toString() {
		return "CreerInfo [crr_num=" + crr_num + ", ui_num=" + ui_num + ", crr_age=" + crr_age + ", crr_addr="
				+ crr_addr + ", crr_job=" + crr_job + ", crr_exp=" + crr_exp + ", crr_desc=" + crr_desc + "]";
	}
	public CreerInfo(Integer crr_num, Integer ui_num, Integer crr_age, String crr_addr, String crr_job, String crr_exp,
			String crr_desc) {
		super();
		this.crr_num = crr_num;
		this.ui_num = ui_num;
		this.crr_age = crr_age;
		this.crr_addr = crr_addr;
		this.crr_job = crr_job;
		this.crr_exp = crr_exp;
		this.crr_desc = crr_desc;
	}
	
	public CreerInfo() {}
}
