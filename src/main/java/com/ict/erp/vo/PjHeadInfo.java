package com.ict.erp.vo;

import org.apache.ibatis.type.Alias;
import org.springframework.stereotype.Component;

@Component
@Alias("Pjh")
public class PjHeadInfo {
	private Integer pjh_num;
	private Integer ui_num;
	private String cate_code;
	private String pjh_intro;
	private String pjh_name;
	private String pjh_img;
	private String pjh_startdat;
	private String pjh_enddat;
	private Integer pjh_goalmoney;
	private Integer pjh_nowmoney;
	private Integer pjh_criticsum;
	private Integer pjh_lovit;
	private Integer pjh_status;

	public Integer getPjh_num() {
		return pjh_num;
	}
	public void setPjh_num(Integer pjh_num) {
		this.pjh_num = pjh_num;
	}
	public Integer getUi_num() {
		return ui_num;
	}
	public void setUi_num(Integer ui_num) {
		this.ui_num = ui_num;
	}
	public String getCate_code() {
		return cate_code;
	}
	public void setCate_code(String cate_code) {
		this.cate_code = cate_code;
	}
	public String getPjh_intro() {
		return pjh_intro;
	}
	public void setPjh_intro(String pjh_intro) {
		this.pjh_intro = pjh_intro;
	}
	public String getPjh_name() {
		return pjh_name;
	}
	public void setPjh_name(String pjh_name) {
		this.pjh_name = pjh_name;
	}
	public String getPjh_img() {
		return pjh_img;
	}
	public void setPjh_img(String pjh_img) {
		this.pjh_img = pjh_img;
	}
	public String getPjh_startdat() {
		return pjh_startdat;
	}
	public void setPjh_startdat(String pjh_startdat) {
		this.pjh_startdat = pjh_startdat;
	}
	public String getPjh_enddat() {
		return pjh_enddat;
	}
	public void setPjh_enddat(String pjh_enddat) {
		this.pjh_enddat = pjh_enddat;
	}
	public Integer getPjh_goalmoney() {
		return pjh_goalmoney;
	}
	public void setPjh_goalmoney(Integer pjh_goalmoney) {
		this.pjh_goalmoney = pjh_goalmoney;
	}
	public Integer getPjh_nowmoney() {
		return pjh_nowmoney;
	}
	public void setPjh_nowmoney(Integer pjh_nowmoney) {
		this.pjh_nowmoney = pjh_nowmoney;
	}
	public Integer getPjh_criticsum() {
		return pjh_criticsum;
	}
	public void setPjh_criticsum(Integer pjh_criticsum) {
		this.pjh_criticsum = pjh_criticsum;
	}
	public Integer getPjh_lovit() {
		return pjh_lovit;
	}
	public void setPjh_lovit(Integer pjh_lovit) {
		this.pjh_lovit = pjh_lovit;
	}
	public Integer getPjh_status() {
		return pjh_status;
	}
	public void setPjh_status(Integer pjh_status) {
		this.pjh_status = pjh_status;
	}
	@Override
	public String toString() {
		return "PjHeadInfo [pjh_num=" + pjh_num + ", ui_num=" + ui_num + ", cate_code=" + cate_code + ", pjh_intro="
				+ pjh_intro + ", pjh_name=" + pjh_name + ", pjh_img=" + pjh_img + ", pjh_startdat=" + pjh_startdat
				+ ", pjh_enddat=" + pjh_enddat + ", pjh_goalmoney=" + pjh_goalmoney + ", pjh_nowmoney=" + pjh_nowmoney
				+ ", pjh_criticsum=" + pjh_criticsum + ", pjh_lovit=" + pjh_lovit + ", pjh_status=" + pjh_status + "]";
	}
	public PjHeadInfo(Integer pjh_num, Integer ui_num, String cate_code, String pjh_intro, String pjh_name,
			String pjh_img, String pjh_startdat, String pjh_enddat, Integer pjh_goalmoney, Integer pjh_nowmoney,
			Integer pjh_criticsum, Integer pjh_lovit, Integer pjh_status) {
		super();
		this.pjh_num = pjh_num;
		this.ui_num = ui_num;
		this.cate_code = cate_code;
		this.pjh_intro = pjh_intro;
		this.pjh_name = pjh_name;
		this.pjh_img = pjh_img;
		this.pjh_startdat = pjh_startdat;
		this.pjh_enddat = pjh_enddat;
		this.pjh_goalmoney = pjh_goalmoney;
		this.pjh_nowmoney = pjh_nowmoney;
		this.pjh_criticsum = pjh_criticsum;
		this.pjh_lovit = pjh_lovit;
		this.pjh_status = pjh_status;
	}
	
	public PjHeadInfo() {}
}
