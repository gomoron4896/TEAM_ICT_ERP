package com.ict.erp.vo;

import org.apache.ibatis.type.Alias;
import org.springframework.stereotype.Component;

@Component
@Alias("Upi")
public class UpdateInfo {
	private Integer up_num;
	private Integer ui_num;
	private Integer pjh_num;
	private String up_credat;
	private String up_img;
	private String up_title;
	private String up_text;
	public Integer getUp_num() {
		return up_num;
	}
	public void setUp_num(Integer up_num) {
		this.up_num = up_num;
	}
	public Integer getUi_num() {
		return ui_num;
	}
	public void setUi_num(Integer ui_num) {
		this.ui_num = ui_num;
	}
	public Integer getPjh_num() {
		return pjh_num;
	}
	public void setPjh_num(Integer pjh_num) {
		this.pjh_num = pjh_num;
	}
	public String getUp_credat() {
		return up_credat;
	}
	public void setUp_credat(String up_credat) {
		this.up_credat = up_credat;
	}
	public String getUp_img() {
		return up_img;
	}
	public void setUp_img(String up_img) {
		this.up_img = up_img;
	}
	public String getUp_title() {
		return up_title;
	}
	public void setUp_title(String up_title) {
		this.up_title = up_title;
	}
	public String getUp_text() {
		return up_text;
	}
	public void setUp_text(String up_text) {
		this.up_text = up_text;
	}
	@Override
	public String toString() {
		return "UpdateInfo [up_num=" + up_num + ", ui_num=" + ui_num + ", pjh_num=" + pjh_num + ", up_credat="
				+ up_credat + ", up_img=" + up_img + ", up_title=" + up_title + ", up_text=" + up_text + "]";
	}
	public UpdateInfo(Integer up_num, Integer ui_num, Integer pjh_num, String up_credat, String up_img, String up_title,
			String up_text) {
		super();
		this.up_num = up_num;
		this.ui_num = ui_num;
		this.pjh_num = pjh_num;
		this.up_credat = up_credat;
		this.up_img = up_img;
		this.up_title = up_title;
		this.up_text = up_text;
	}
	
	public UpdateInfo() {}
}
