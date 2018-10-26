package com.ict.erp.vo;

import org.apache.ibatis.type.Alias;
import org.springframework.stereotype.Component;

@Component
@Alias("Ui")
public class UserInfo {

	private Integer ui_num;
	private Integer ui_id;
	private String ui_name;
	private String ui_email;
	private String ui_img;
	private Integer ui_level;
	private Integer ui_prefund;
	public Integer getUi_num() {
		return ui_num;
	}
	public void setUi_num(Integer ui_num) {
		this.ui_num = ui_num;
	}
	public Integer getUi_id() {
		return ui_id;
	}
	public void setUi_id(Integer ui_id) {
		this.ui_id = ui_id;
	}
	public String getUi_name() {
		return ui_name;
	}
	public void setUi_name(String ui_name) {
		this.ui_name = ui_name;
	}
	public String getUi_email() {
		return ui_email;
	}
	public void setUi_email(String ui_email) {
		this.ui_email = ui_email;
	}
	public String getUi_img() {
		return ui_img;
	}
	public void setUi_img(String ui_img) {
		this.ui_img = ui_img;
	}
	public Integer getUi_level() {
		return ui_level;
	}
	public void setUi_level(Integer ui_level) {
		this.ui_level = ui_level;
	}
	public Integer getUi_prefund() {
		return ui_prefund;
	}
	public void setUi_prefund(Integer ui_prefund) {
		this.ui_prefund = ui_prefund;
	}
	@Override
	public String toString() {
		return "UserInfo [ui_num=" + ui_num + ", ui_id=" + ui_id + ", ui_name=" + ui_name + ", ui_email=" + ui_email
				+ ", ui_img=" + ui_img + ", ui_level=" + ui_level + ", ui_prefund=" + ui_prefund + "]";
	}
	public UserInfo(Integer ui_num, Integer ui_id, String ui_name, String ui_email, String ui_img, Integer ui_level,
			Integer ui_prefund) {
		super();
		this.ui_num = ui_num;
		this.ui_id = ui_id;
		this.ui_name = ui_name;
		this.ui_email = ui_email;
		this.ui_img = ui_img;
		this.ui_level = ui_level;
		this.ui_prefund = ui_prefund;
	}
	
	public UserInfo() {}
	
}

